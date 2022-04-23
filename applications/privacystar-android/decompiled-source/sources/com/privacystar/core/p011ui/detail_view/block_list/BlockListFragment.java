package com.privacystar.core.p011ui.detail_view.block_list;

import android.os.Bundle;
import android.support.annotation.NonNull;
import android.support.p001v4.app.FragmentManager;
import android.support.p004v7.widget.LinearLayoutManager;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import butterknife.BindView;
import butterknife.ButterKnife;
import com.privacystar.core.C1566R;
import com.privacystar.core.data.activity_log.LogExpandedAction;
import com.privacystar.core.data.call.call_details.CallDetails;
import com.privacystar.core.data.call.caller.CallerFactory;
import com.privacystar.core.data.model.ApprovedList;
import com.privacystar.core.data.model.BlockList;
import com.privacystar.core.p011ui.detail_view.DetailActivity;
import com.privacystar.core.p011ui.detail_view.DetailFragment;
import com.privacystar.core.p011ui.detail_view.block_list.BlockApproveListContract;
import com.privacystar.core.p011ui.detail_view.block_list.BlockApproveListPresenter;
import com.privacystar.core.p011ui.widgets.ConfirmDialog;
import com.privacystar.core.p011ui.widgets.ContextMenuRecyclerView;
import com.privacystar.core.p011ui.widgets.ILogContextDialogFragment;
import com.privacystar.core.p011ui.widgets.LogContextDialogFragment;
import com.privacystar.core.p011ui.widgets.NumberListType;
import com.privacystar.core.p011ui.widgets.StaticDialogs;
import com.privacystar.core.p011ui.widgets.StringInputDialog;
import com.privacystar.core.p011ui.widgets.dialog.DialogButton;
import com.privacystar.core.p011ui.widgets.dialog.DialogType;
import com.privacystar.core.p011ui.widgets.dialog.InformationDialog;
import com.privacystar.core.service.IViewClickCallback;
import com.privacystar.core.service.analytics.AnalyticsManager;
import com.privacystar.core.service.analytics.Event;
import com.privacystar.core.util.BlockingUtil;
import io.realm.Realm;
import io.realm.RealmResults;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import timber.log.Timber;
/* renamed from: com.privacystar.core.ui.detail_view.block_list.BlockListFragment */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/detail_view/block_list/BlockListFragment.class */
public class BlockListFragment extends DetailFragment implements DetailActivity.DetailActivityContent, IViewClickCallback<BlockList>, BlockApproveListContract.View {
    private BlockListAdapter adapter;
    @BindView(C1566R.C1569id.number_list_banner_location)
    LinearLayout bannerLocation;
    @BindView(C1566R.C1569id.no_items_container)
    LinearLayout noItemsContainer;
    @BindView(C1566R.C1569id.number_list_rv)
    ContextMenuRecyclerView recyclerView;
    private BlockApproveListPresenter presenter = new BlockApproveListPresenter(this, BlockApproveListPresenter.BlockApprovedListType.BLOCK_LIST);
    StringInputDialog.OnInputFinishedListener onAddInputFinished = new StringInputDialog.OnInputFinishedListener() { // from class: com.privacystar.core.ui.detail_view.block_list.BlockListFragment.1
        @Override // com.privacystar.core.p011ui.widgets.StringInputDialog.OnInputFinishedListener
        public void onCanceled() {
            Timber.m28v("Add to block list dialog canceled", new Object[0]);
        }

        @Override // com.privacystar.core.p011ui.widgets.StringInputDialog.OnInputFinishedListener
        public void onSet(String str) {
            Timber.m28v("Add to block list dialog returned with number %s", str);
            BlockListFragment.this.blockNumber(str);
        }
    };

    private boolean bindContextMenu(BlockList blockList) {
        return blockList != null;
    }

    private void setupToolbar() {
        this.activity.setDetailToolbarTitle(C1566R.string.block_list_fragment_toolbar_title);
        this.activity.enableToolbarMenu(false);
    }

    private void showAddDialog() {
        Timber.m28v("Showing add to block list dialog", new Object[0]);
        FragmentManager supportFragmentManager = getActivity().getSupportFragmentManager();
        StringInputDialog newInstance = StringInputDialog.newInstance(getString(C1566R.string.add_block_list_dialog_title), getString(C1566R.string.add_block_list_dialog_okay), getString(C1566R.string.add_block_list_dialog_cancel), getString(C1566R.string.add_block_list_dialog_hint));
        newInstance.setInputListener(this.onAddInputFinished);
        newInstance.show(supportFragmentManager, "add_block_add_dialog");
    }

    private void showContextDialog(BlockList blockList) {
        CallDetails callDetails = new CallDetails(CallerFactory.getInstance().getCaller(blockList.getNumber()));
        callDetails.setToMostRecentEvent();
        FragmentManager fragmentManager = getFragmentManager();
        LogContextDialogFragment newInstance = LogContextDialogFragment.newInstance(callDetails, (ILogContextDialogFragment) getActivity());
        newInstance.setTargetFragment(this, 0);
        newInstance.show(fragmentManager, "context_fragment");
    }

    private void unblockEntry(BlockList blockList) {
        if (blockList != null) {
            Timber.m37d("Unblocking the number: %s", blockList.getNumber());
            BlockingUtil.unblockNumber(getActivity(), getRealm(), blockList.getNumber());
            refreshBlockList(true);
            AnalyticsManager.INSTANCE.fire(Event.BlockRemoveNumber.INSTANCE);
        }
    }

    private void unblockEntryBanner(BlockList blockList) {
        View unblockNumber = BlockingUtil.unblockNumber(this.activity, getRealm(), blockList.getNumber(), new ConfirmDialog.OnConfirmListener() { // from class: com.privacystar.core.ui.detail_view.block_list.BlockListFragment.2
            @Override // com.privacystar.core.p011ui.widgets.ConfirmDialog.OnConfirmListener
            public void onCancel() {
                BlockListFragment.this.bannerLocation.removeAllViews();
            }

            @Override // com.privacystar.core.p011ui.widgets.ConfirmDialog.OnConfirmListener
            public void onConfirm() {
                BlockListFragment.this.bannerLocation.removeAllViews();
            }
        });
        this.bannerLocation.removeAllViews();
        this.bannerLocation.addView(unblockNumber);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.privacystar.core.p011ui.detail_view.DetailFragment
    public void attachFragment() {
        if (this.presenter.shouldOverrideAttachFragment()) {
            super.attachFragment();
        }
    }

    public void blockNumber(String str) {
        this.presenter.blockNumber(this.activity, str);
    }

    @Override // com.privacystar.core.p011ui.detail_view.block_list.BlockApproveListContract.View
    public int createAdapterForApproving(@NotNull RealmResults<ApprovedList> realmResults) {
        return -1;
    }

    @Override // com.privacystar.core.p011ui.detail_view.block_list.BlockApproveListContract.View
    public int createAdapterForBlocking(@NotNull RealmResults<BlockList> realmResults) {
        this.adapter = new BlockListAdapter(realmResults, this);
        return this.adapter.getItemCount();
    }

    @Override // com.privacystar.core.p011ui.detail_view.block_list.BlockApproveListContract.View
    public void enableFab(boolean z) {
        this.activity.enableFab(z);
        if (z) {
            this.activity.setFabIcon(C1566R.C1568drawable.ic_add_white_24px);
            this.activity.setFabContentDesc(getString(C1566R.string.con_desc_block_fragment_add));
            Timber.m37d("Enabling and binding FAB.", new Object[0]);
            return;
        }
        Timber.m37d("Disabling FAB.", new Object[0]);
    }

    @Override // com.privacystar.core.p011ui.detail_view.block_list.BlockApproveListContract.View
    public void enableToolBar() {
        setupToolbar();
    }

    @Override // com.privacystar.core.p011ui.detail_view.block_list.BlockApproveListContract.View
    @Nullable
    public Integer getItemCountInAdapter() {
        if (this.adapter == null) {
            return null;
        }
        return Integer.valueOf(this.adapter.getItemCount());
    }

    @Override // com.privacystar.core.p011ui.detail_view.DetailFragment
    protected int getLayoutResId() {
        return C1566R.C1571layout.block_list_fragment;
    }

    @Override // com.privacystar.core.p011ui.detail_view.block_list.BlockApproveListContract.View
    @NotNull
    public Realm getRealmInst() {
        return getRealm();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void lambda$refreshBlockList$0$BlockListFragment() {
        this.adapter.notifyDataSetChanged();
    }

    @Override // com.privacystar.core.p011ui.detail_view.DetailFragment
    public BlockListFragment newInstance() {
        return new BlockListFragment();
    }

    @Override // com.privacystar.core.p011ui.detail_view.DetailActivity.DetailActivityContent
    public void onButtonClicked() {
    }

    @Override // com.privacystar.core.p011ui.detail_view.DetailFragment, android.support.p001v4.app.Fragment
    public View onCreateView(@NonNull LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View inflate = layoutInflater.inflate(getLayoutResId(), viewGroup, false);
        this.unbinder = ButterKnife.bind(this, inflate);
        Timber.m37d("Inflating %s", toString());
        this.presenter.viewCreated();
        this.recyclerView.setLayoutManager(new LinearLayoutManager(this.recyclerView.getContext()));
        this.recyclerView.setAdapter(this.adapter);
        this.recyclerView.setHasFixedSize(true);
        AnalyticsManager.INSTANCE.fire(Event.BlockViewDetails.INSTANCE);
        outputNameAccessibility(C1566R.string.con_desc_block_fragment_title);
        return inflate;
    }

    @Override // com.privacystar.core.p011ui.detail_view.DetailActivity.DetailActivityContent
    public void onFabClicked() {
        AnalyticsManager.INSTANCE.fire(Event.BlockNewEntry.INSTANCE);
        this.presenter.onFabClicked();
    }

    @Override // com.privacystar.core.p011ui.detail_view.DetailActivity.DetailActivityContent
    public boolean onMenuItemClicked(MenuItem menuItem) {
        return false;
    }

    public void onViewClick(BlockList blockList) {
        if (bindContextMenu(blockList)) {
            ((ILogContextDialogFragment) getActivity()).launchCallerDetails(CallerFactory.getInstance().getCaller(blockList.getNumber()));
            Timber.m37d("RecyclerView item bound to Fragment controller: %s", blockList.getNumber());
            return;
        }
        Timber.m25w("RecyclerView item failed to bind: was null.", new Object[0]);
    }

    public boolean onViewLongClick(BlockList blockList) {
        if (!this.presenter.shouldShowContextDialogOnLongClick()) {
            return true;
        }
        showContextDialog(blockList);
        return true;
    }

    public void onViewSpecialClick(BlockList blockList, int i, LogExpandedAction logExpandedAction) {
        if (bindContextMenu(blockList)) {
            if (this.presenter.shouldShowConfirmationAsBanner()) {
                unblockEntryBanner(blockList);
            } else {
                unblockEntry(blockList);
            }
            Timber.m37d("RecyclerView item bound to Fragment controller: %s", blockList.getNumber());
            return;
        }
        Timber.m25w("RecyclerView item failed to bind: was null.", new Object[0]);
    }

    @Override // com.privacystar.core.p011ui.detail_view.block_list.BlockApproveListContract.View
    public void refreshBlockList(boolean z) {
        if (z) {
            this.adapter.refreshContent();
        }
        getActivity().runOnUiThread(new Runnable(this) { // from class: com.privacystar.core.ui.detail_view.block_list.BlockListFragment$$Lambda$0
            private final BlockListFragment arg$1;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.arg$1 = this;
            }

            @Override // java.lang.Runnable
            public void run() {
                this.arg$1.lambda$refreshBlockList$0$BlockListFragment();
            }
        });
    }

    @Override // com.privacystar.core.p011ui.detail_view.DetailActivity.DetailActivityContent
    public void refreshContent() {
        this.presenter.onRefreshContent();
    }

    @Override // com.privacystar.core.p011ui.detail_view.block_list.BlockApproveListContract.View
    public void setNumberListVisible(boolean z) {
        if (this.recyclerView != null && this.noItemsContainer != null) {
            if (!z) {
                this.recyclerView.setVisibility(8);
                this.noItemsContainer.setVisibility(0);
                return;
            }
            this.recyclerView.setVisibility(0);
            this.noItemsContainer.setVisibility(8);
        }
    }

    @Override // com.privacystar.core.p011ui.detail_view.block_list.BlockApproveListContract.View
    public void showAddNumberAsDialog() {
        showAddDialog();
    }

    @Override // com.privacystar.core.p011ui.detail_view.block_list.BlockApproveListContract.View
    public void showAddNumberAsFragment() {
        Timber.m37d("Launching a new fragment to add number", new Object[0]);
        this.activity.swapFragment(BlockListAddNumberFragment.class, null);
    }

    @Override // com.privacystar.core.p011ui.detail_view.block_list.BlockApproveListContract.View
    public void showAlreadyApproved(@NonNull String str) {
        Timber.m37d("Showing switch dialog.", new Object[0]);
        StaticDialogs.INSTANCE.newAlreadyInOtherListInstance(getContext(), getRealm(), str, NumberListType.BLOCK).show(getActivity().getSupportFragmentManager(), "in_other_list_explanation_fragment");
    }

    @Override // com.privacystar.core.p011ui.detail_view.block_list.BlockApproveListContract.View
    public void showAlreadyBlocked(@NonNull String str) {
        StaticDialogs.INSTANCE.newAlreadyInListInstance(getContext(), str, NumberListType.BLOCK).show(getActivity().getSupportFragmentManager(), "already_blocked_explanation_fragment");
    }

    @Override // com.privacystar.core.p011ui.detail_view.block_list.BlockApproveListContract.View
    public void showFeatureNotAvailable() {
        startActivity(DetailActivity.subscriptionIntent(getContext()));
    }

    @Override // com.privacystar.core.p011ui.detail_view.block_list.BlockApproveListContract.View
    public void showInvalidPhoneNumber() {
        new InformationDialog.Builder(DialogType.INFORMATION).withTitle(getContext().getString(C1566R.string.search_error_title)).withBody(getContext().getString(C1566R.string.search_error_details)).withButtons(new DialogButton(getContext().getString(C1566R.string.info_dialog_okay))).build().show(getActivity().getSupportFragmentManager(), "invalid_number_to_block");
    }

    @Override // com.privacystar.core.p011ui.detail_view.block_list.BlockApproveListContract.View
    public void showSuccessfullyAdded() {
        refreshBlockList(true);
        StaticDialogs.INSTANCE.newAddedToNumberListInstance(getContext(), null, NumberListType.BLOCK).show(getActivity().getSupportFragmentManager(), "blocked_type_explanation_fragment");
    }
}
