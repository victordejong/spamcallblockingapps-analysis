package com.privacystar.core.p011ui.detail_view.approved_list;

import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.support.annotation.NonNull;
import android.support.p001v4.app.FragmentManager;
import android.support.p004v7.widget.LinearLayoutManager;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import butterknife.BindView;
import butterknife.ButterKnife;
import butterknife.OnClick;
import com.privacystar.core.C1566R;
import com.privacystar.core.data.activity_log.LogExpandedAction;
import com.privacystar.core.data.call.call_details.CallDetails;
import com.privacystar.core.data.call.caller.CallerFactory;
import com.privacystar.core.data.model.ApprovedList;
import com.privacystar.core.data.model.BlockList;
import com.privacystar.core.data.model.helper.ApprovedListRealm;
import com.privacystar.core.p011ui.detail_view.DetailActivity;
import com.privacystar.core.p011ui.detail_view.DetailFragment;
import com.privacystar.core.p011ui.detail_view.block_list.BlockApproveListContract;
import com.privacystar.core.p011ui.detail_view.block_list.BlockApproveListPresenter;
import com.privacystar.core.p011ui.util.DialogUtil;
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
import com.privacystar.core.util.PermissionUtils;
import io.realm.Realm;
import io.realm.RealmResults;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import timber.log.Timber;
/* renamed from: com.privacystar.core.ui.detail_view.approved_list.ApprovedListFragment */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/detail_view/approved_list/ApprovedListFragment.class */
public class ApprovedListFragment extends DetailFragment implements DetailActivity.DetailActivityContent, IViewClickCallback<ApprovedList>, BlockApproveListContract.View {
    private ApprovedListAdapter adapter;
    @BindView(C1566R.C1569id.number_list_no_items_allow)
    TextView allowContactTV;
    @BindView(C1566R.C1569id.number_list_banner_location)
    LinearLayout bannerLocation;
    @BindView(C1566R.C1569id.number_list_contacts_allowed_header)
    LinearLayout contactsAllowedHeader;
    private ApprovedList focusedEntry;
    @BindView(C1566R.C1569id.no_items_container)
    LinearLayout noItemsContainer;
    @BindView(C1566R.C1569id.number_list_rv)
    ContextMenuRecyclerView recyclerView;
    private BlockApproveListPresenter presenter = new BlockApproveListPresenter(this, BlockApproveListPresenter.BlockApprovedListType.APPROVED_LIST);
    StringInputDialog.OnInputFinishedListener onAddInputFinished = new StringInputDialog.OnInputFinishedListener() { // from class: com.privacystar.core.ui.detail_view.approved_list.ApprovedListFragment.1
        @Override // com.privacystar.core.p011ui.widgets.StringInputDialog.OnInputFinishedListener
        public void onCanceled() {
            Timber.m28v("Add to Approved list dialog canceled", new Object[0]);
        }

        @Override // com.privacystar.core.p011ui.widgets.StringInputDialog.OnInputFinishedListener
        public void onSet(String str) {
            Timber.m28v("Add to Approved list dialog returned with number %s", str);
            ApprovedListFragment.this.approveNumber(str);
        }
    };
    private ConfirmDialog.OnConfirmListener onConfirmListener = new ConfirmDialog.OnConfirmListener() { // from class: com.privacystar.core.ui.detail_view.approved_list.ApprovedListFragment.2
        @Override // com.privacystar.core.p011ui.widgets.ConfirmDialog.OnConfirmListener
        public void onCancel() {
        }

        @Override // com.privacystar.core.p011ui.widgets.ConfirmDialog.OnConfirmListener
        public void onConfirm() {
            ApprovedListFragment.this.unapproveEntry();
        }
    };

    private boolean bindContextMenu(ApprovedList approvedList) {
        this.focusedEntry = approvedList;
        return approvedList != null;
    }

    private void checkAllowContactVisibility() {
        if (PermissionUtils.hasContactPermission(getContext())) {
            this.allowContactTV.setVisibility(4);
            this.contactsAllowedHeader.setVisibility(0);
            return;
        }
        this.allowContactTV.setVisibility(0);
        this.contactsAllowedHeader.setVisibility(8);
    }

    private void setupToolbar() {
        this.activity.setDetailToolbarTitle(C1566R.string.approved_list_fragment_toolbar_title);
        this.activity.enableToolbarMenu(false);
    }

    private void showAddDialog() {
        Timber.m28v("Showing add to approved list dialog", new Object[0]);
        FragmentManager supportFragmentManager = getActivity().getSupportFragmentManager();
        StringInputDialog newInstance = StringInputDialog.newInstance(getString(C1566R.string.add_approved_list_dialog_title), getString(C1566R.string.add_approved_list_dialog_okay), getString(C1566R.string.add_approved_list_dialog_cancel), getString(C1566R.string.add_approved_list_dialog_hint));
        newInstance.setInputListener(this.onAddInputFinished);
        DialogUtil.INSTANCE.showAllowingStateLoss(newInstance, supportFragmentManager, "add_approved_add_dialog", getActivity());
    }

    private void showContextDialog(ApprovedList approvedList) {
        CallDetails callDetails = new CallDetails(CallerFactory.getInstance().getCaller(approvedList.getNumber()));
        callDetails.setToMostRecentEvent();
        FragmentManager fragmentManager = getFragmentManager();
        LogContextDialogFragment newInstance = LogContextDialogFragment.newInstance(callDetails, (ILogContextDialogFragment) getActivity());
        newInstance.setTargetFragment(this, 0);
        newInstance.show(fragmentManager, "context_fragment");
    }

    private void showUnapprovedConfirmBanner(String str) {
        View inflate = this.activity.getLayoutInflater().inflate(C1566R.C1571layout.error_banner_with_two_actions, (ViewGroup) null);
        ((TextView) inflate.findViewById(C1566R.C1569id.error_banner_two_title)).setText(getContext().getString(C1566R.string.unapprove_confirm_body, str));
        inflate.findViewById(C1566R.C1569id.error_banner_two_yes).setOnClickListener(new View.OnClickListener(this) { // from class: com.privacystar.core.ui.detail_view.approved_list.ApprovedListFragment$$Lambda$0
            private final ApprovedListFragment arg$1;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.arg$1 = this;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                this.arg$1.lambda$showUnapprovedConfirmBanner$0$ApprovedListFragment(view);
            }
        });
        inflate.findViewById(C1566R.C1569id.error_banner_two_no).setOnClickListener(new View.OnClickListener(this) { // from class: com.privacystar.core.ui.detail_view.approved_list.ApprovedListFragment$$Lambda$1
            private final ApprovedListFragment arg$1;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.arg$1 = this;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                this.arg$1.lambda$showUnapprovedConfirmBanner$1$ApprovedListFragment(view);
            }
        });
        this.bannerLocation.removeAllViews();
        this.bannerLocation.addView(inflate);
    }

    private void showUnapprovedConfirmDialog(String str) {
        FragmentManager supportFragmentManager = getActivity().getSupportFragmentManager();
        ConfirmDialog newInstance = ConfirmDialog.newInstance(getString(C1566R.string.unapprove_confirm_title), getString(C1566R.string.unapprove_confirm_confirm), getString(C1566R.string.unapprove_confirm_cancel), getString(C1566R.string.unapprove_confirm_body, str), str);
        newInstance.setInputListener(this.onConfirmListener);
        newInstance.show(supportFragmentManager, "unblock_confirm_dialog");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void unapproveEntry() {
        if (this.focusedEntry != null) {
            Timber.m37d("Unapproving the number: %s", this.focusedEntry.getNumber());
            ApprovedListRealm.setApproved(getRealm(), this.focusedEntry.getNumber(), false);
            AnalyticsManager.INSTANCE.fire(Event.AllowRemoveNumber.INSTANCE);
        }
    }

    @OnClick({C1566R.C1569id.number_list_no_items_allow})
    public void allowContact() {
        Intent intent = new Intent();
        intent.setAction("android.settings.APPLICATION_DETAILS_SETTINGS");
        intent.setData(Uri.fromParts("package", this.activity.getPackageName(), null));
        startActivity(intent);
    }

    public void approveNumber(String str) {
        this.presenter.approveNumber(this.activity, str);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.privacystar.core.p011ui.detail_view.DetailFragment
    public void attachFragment() {
        if (this.presenter.shouldOverrideAttachFragment()) {
            super.attachFragment();
        }
    }

    @Override // com.privacystar.core.p011ui.detail_view.block_list.BlockApproveListContract.View
    public int createAdapterForApproving(@NotNull RealmResults<ApprovedList> realmResults) {
        this.adapter = new ApprovedListAdapter(realmResults, this);
        return this.adapter.getItemCount();
    }

    @Override // com.privacystar.core.p011ui.detail_view.block_list.BlockApproveListContract.View
    public int createAdapterForBlocking(@NotNull RealmResults<BlockList> realmResults) {
        return -1;
    }

    @Override // com.privacystar.core.p011ui.detail_view.block_list.BlockApproveListContract.View
    public void enableFab(boolean z) {
        this.activity.enableFab(z);
        if (z) {
            Timber.m37d("Enabling and binding FAB.", new Object[0]);
            this.activity.setFabIcon(C1566R.C1568drawable.ic_add_white_24px);
            this.activity.setFabContentDesc(getString(C1566R.string.con_desc_approved_fragment_add));
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
        return C1566R.C1571layout.approved_list_fragment;
    }

    @Override // com.privacystar.core.p011ui.detail_view.block_list.BlockApproveListContract.View
    @NotNull
    public Realm getRealmInst() {
        return getRealm();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void lambda$showUnapprovedConfirmBanner$0$ApprovedListFragment(View view) {
        unapproveEntry();
        this.bannerLocation.removeAllViews();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void lambda$showUnapprovedConfirmBanner$1$ApprovedListFragment(View view) {
        this.bannerLocation.removeAllViews();
    }

    @Override // com.privacystar.core.p011ui.detail_view.DetailFragment
    public ApprovedListFragment newInstance() {
        return new ApprovedListFragment();
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
        AnalyticsManager.INSTANCE.fire(Event.AllowViewDetails.INSTANCE);
        outputNameAccessibility(C1566R.string.con_desc_block_fragment_title);
        return inflate;
    }

    @Override // com.privacystar.core.p011ui.detail_view.DetailActivity.DetailActivityContent
    public void onFabClicked() {
        AnalyticsManager.INSTANCE.fire(Event.AllowNewEntry.INSTANCE);
        this.presenter.onFabClicked();
    }

    @Override // com.privacystar.core.p011ui.detail_view.DetailActivity.DetailActivityContent
    public boolean onMenuItemClicked(MenuItem menuItem) {
        return false;
    }

    @Override // com.privacystar.core.p011ui.detail_view.DetailFragment, android.support.p001v4.app.Fragment
    public void onResume() {
        super.onResume();
        checkAllowContactVisibility();
    }

    public void onViewClick(ApprovedList approvedList) {
        if (bindContextMenu(approvedList)) {
            ((ILogContextDialogFragment) getActivity()).launchCallerDetails(CallerFactory.getInstance().getCaller(approvedList.getNumber()));
            Timber.m37d("RecyclerView item bound to Fragment controller: %s", approvedList.getNumber());
            return;
        }
        Timber.m25w("RecyclerView item failed to bind: was null.", new Object[0]);
    }

    public boolean onViewLongClick(ApprovedList approvedList) {
        if (!this.presenter.shouldShowContextDialogOnLongClick()) {
            return true;
        }
        showContextDialog(approvedList);
        return true;
    }

    public void onViewSpecialClick(ApprovedList approvedList, int i, LogExpandedAction logExpandedAction) {
        if (bindContextMenu(approvedList)) {
            if (this.presenter.shouldShowConfirmationAsBanner()) {
                showUnapprovedConfirmBanner(CallerFactory.getInstance().getCaller(this.focusedEntry.getNumber()).getDisplayNumber());
            } else {
                showUnapprovedConfirmDialog(CallerFactory.getInstance().getCaller(this.focusedEntry.getNumber()).getDisplayNumber());
            }
            Timber.m37d("RecyclerView item bound to Fragment controller: %s", approvedList.getNumber());
            return;
        }
        Timber.m25w("RecyclerView item failed to bind: was null.", new Object[0]);
    }

    @Override // com.privacystar.core.p011ui.detail_view.block_list.BlockApproveListContract.View
    public void refreshBlockList(boolean z) {
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
            } else {
                this.recyclerView.setVisibility(0);
                this.noItemsContainer.setVisibility(8);
            }
            checkAllowContactVisibility();
        }
    }

    @Override // com.privacystar.core.p011ui.detail_view.block_list.BlockApproveListContract.View
    public void showAddNumberAsDialog() {
        showAddDialog();
    }

    @Override // com.privacystar.core.p011ui.detail_view.block_list.BlockApproveListContract.View
    public void showAddNumberAsFragment() {
        Timber.m37d("Launching a new fragment to add number", new Object[0]);
        this.activity.swapFragment(ApprovedListAddNumberFragment.class, null);
    }

    @Override // com.privacystar.core.p011ui.detail_view.block_list.BlockApproveListContract.View
    public void showAlreadyApproved(@NonNull String str) {
        StaticDialogs.INSTANCE.newAlreadyInListInstance(getContext(), str, NumberListType.APPROVED).show(getActivity().getSupportFragmentManager(), "already_approved_explanation_fragment");
    }

    @Override // com.privacystar.core.p011ui.detail_view.block_list.BlockApproveListContract.View
    public void showAlreadyBlocked(@NonNull String str) {
        Timber.m37d("Can't add a blocked number to approve list. Showing switch dialog.", new Object[0]);
        StaticDialogs.INSTANCE.newAlreadyInOtherListInstance(getContext(), getRealm(), str, NumberListType.APPROVED).show(getActivity().getSupportFragmentManager(), "in_other_list_explanation_fragment");
    }

    @Override // com.privacystar.core.p011ui.detail_view.block_list.BlockApproveListContract.View
    public void showFeatureNotAvailable() {
        startActivity(DetailActivity.subscriptionIntent(getContext()));
    }

    @Override // com.privacystar.core.p011ui.detail_view.block_list.BlockApproveListContract.View
    public void showInvalidPhoneNumber() {
        Timber.m37d("Tried to approve invalid number", new Object[0]);
        new InformationDialog.Builder(DialogType.INFORMATION).withTitle(getContext().getString(C1566R.string.search_error_title)).withBody(getContext().getString(C1566R.string.search_error_details)).withButtons(new DialogButton(getContext().getString(C1566R.string.info_dialog_okay))).build().show(getActivity().getSupportFragmentManager(), "invalid_number_to_approve");
    }

    @Override // com.privacystar.core.p011ui.detail_view.block_list.BlockApproveListContract.View
    public void showSuccessfullyAdded() {
        StaticDialogs.INSTANCE.newAddedToNumberListInstance(getContext(), null, NumberListType.APPROVED).show(getActivity().getSupportFragmentManager(), "approved_type_explanation_fragment");
    }
}
