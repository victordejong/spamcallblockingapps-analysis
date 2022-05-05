package com.privacystar.core.p011ui.detail_view.block_list;

import android.support.p004v7.app.AppCompatActivity;
import com.apptentive.android.sdk.ApptentiveNotifications;
import com.google.android.gms.analytics.ecommerce.Promotion;
import com.privacystar.core.data.model.ApprovedList;
import com.privacystar.core.data.model.BlockList;
import com.privacystar.core.data.model.helper.ApprovedListRealm;
import com.privacystar.core.data.model.helper.BlockListRealm;
import com.privacystar.core.p011ui.detail_view.block_list.BlockApproveListContract;
import com.privacystar.core.p011ui.util.BlockApproveNumberUtil;
import io.realm.RealmChangeListener;
import io.realm.RealmResults;
import java.lang.ref.WeakReference;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@Metadata(m256bv = {1, 0, 3}, m255d1 = {"��P\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0005\u0018��2\u00020\u0001:\u0001 B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\u0016\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0010J\u0016\u0010\u0011\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0010J\b\u0010\u0012\u001a\u00020\u0013H\u0002J\b\u0010\u0014\u001a\u00020\u0013H\u0002J\u0006\u0010\u0015\u001a\u00020\fJ\u0006\u0010\u0016\u001a\u00020\fJ\u0018\u0010\u0017\u001a\u00020\f2\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u000f\u001a\u00020\u0010H\u0002J\u0006\u0010\u001a\u001a\u00020\fJ\u0006\u0010\u001b\u001a\u00020\u001cJ\u0006\u0010\u001d\u001a\u00020\u001cJ\u0006\u0010\u001e\u001a\u00020\u001cJ\u0006\u0010\u001f\u001a\u00020\fR\u000e\u0010\u0007\u001a\u00020\bX\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n��R\u001c\u0010\u0002\u001a\u0010\u0012\f\u0012\n \n*\u0004\u0018\u00010\u00030\u00030\tX\u0082\u0004¢\u0006\u0002\n��¨\u0006!"}, m254d2 = {"Lcom/privacystar/core/ui/detail_view/block_list/BlockApproveListPresenter;", "", Promotion.ACTION_VIEW, "Lcom/privacystar/core/ui/detail_view/block_list/BlockApproveListContract$View;", "type", "Lcom/privacystar/core/ui/detail_view/block_list/BlockApproveListPresenter$BlockApprovedListType;", "(Lcom/privacystar/core/ui/detail_view/block_list/BlockApproveListContract$View;Lcom/privacystar/core/ui/detail_view/block_list/BlockApproveListPresenter$BlockApprovedListType;)V", "manager", "Lcom/privacystar/core/ui/detail_view/block_list/BlockListManagerImpl;", "Ljava/lang/ref/WeakReference;", "kotlin.jvm.PlatformType", "approveNumber", "", ApptentiveNotifications.NOTIFICATION_KEY_ACTIVITY, "Landroid/support/v7/app/AppCompatActivity;", "number", "", "blockNumber", "createApprovedListAdapter", "", "createBlockListAdapter", "onButtonClicked", "onFabClicked", "onNumberOperation", "status", "Lcom/privacystar/core/ui/util/BlockApproveNumberUtil$BlockApproveNumberStatus;", "onRefreshContent", "shouldOverrideAttachFragment", "", "shouldShowConfirmationAsBanner", "shouldShowContextDialogOnLongClick", "viewCreated", "BlockApprovedListType", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
/* renamed from: com.privacystar.core.ui.detail_view.block_list.BlockApproveListPresenter */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/detail_view/block_list/BlockApproveListPresenter.class */
public final class BlockApproveListPresenter {
    private final BlockListManagerImpl manager = BlockListManagerImpl.INSTANCE;
    private final BlockApprovedListType type;
    private final WeakReference<BlockApproveListContract.View> view;

    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0004\b\u0086\u0001\u0018��2\b\u0012\u0004\u0012\u00020��0\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004¨\u0006\u0005"}, m254d2 = {"Lcom/privacystar/core/ui/detail_view/block_list/BlockApproveListPresenter$BlockApprovedListType;", "", "(Ljava/lang/String;I)V", "BLOCK_LIST", "APPROVED_LIST", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
    /* renamed from: com.privacystar.core.ui.detail_view.block_list.BlockApproveListPresenter$BlockApprovedListType */
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/detail_view/block_list/BlockApproveListPresenter$BlockApprovedListType.class */
    public enum BlockApprovedListType {
        BLOCK_LIST,
        APPROVED_LIST
    }

    public BlockApproveListPresenter(@NotNull BlockApproveListContract.View view, @NotNull BlockApprovedListType type) {
        Intrinsics.checkParameterIsNotNull(view, "view");
        Intrinsics.checkParameterIsNotNull(type, "type");
        this.type = type;
        this.view = new WeakReference<>(view);
    }

    private final int createApprovedListAdapter() {
        int i;
        BlockApproveListContract.View view = this.view.get();
        RealmResults<ApprovedList> approvedList = ApprovedListRealm.getApprovedListEntries(view != null ? view.getRealmInst() : null);
        approvedList.addChangeListener(new RealmChangeListener<RealmResults<ApprovedList>>() { // from class: com.privacystar.core.ui.detail_view.block_list.BlockApproveListPresenter$createApprovedListAdapter$1
            public final void onChange(RealmResults<ApprovedList> realmResults) {
                WeakReference weakReference;
                WeakReference weakReference2;
                weakReference = BlockApproveListPresenter.this.view;
                BlockApproveListContract.View view2 = (BlockApproveListContract.View) weakReference.get();
                Integer itemCountInAdapter = view2 != null ? view2.getItemCountInAdapter() : null;
                weakReference2 = BlockApproveListPresenter.this.view;
                BlockApproveListContract.View view3 = (BlockApproveListContract.View) weakReference2.get();
                if (view3 != null) {
                    view3.setNumberListVisible(itemCountInAdapter == null || itemCountInAdapter.intValue() != 0);
                }
            }
        });
        BlockApproveListContract.View view2 = this.view.get();
        if (view2 != null) {
            Intrinsics.checkExpressionValueIsNotNull(approvedList, "approvedList");
            i = view2.createAdapterForApproving(approvedList);
        } else {
            i = 0;
        }
        return i;
    }

    private final int createBlockListAdapter() {
        int i;
        BlockApproveListContract.View view = this.view.get();
        RealmResults<BlockList> blockList = BlockListRealm.getBlockListEntries(view != null ? view.getRealmInst() : null, BlockListRealm.BlockListActive.ACTIVE);
        blockList.addChangeListener(new RealmChangeListener<RealmResults<BlockList>>() { // from class: com.privacystar.core.ui.detail_view.block_list.BlockApproveListPresenter$createBlockListAdapter$1
            public final void onChange(RealmResults<BlockList> realmResults) {
                WeakReference weakReference;
                WeakReference weakReference2;
                weakReference = BlockApproveListPresenter.this.view;
                BlockApproveListContract.View view2 = (BlockApproveListContract.View) weakReference.get();
                Integer itemCountInAdapter = view2 != null ? view2.getItemCountInAdapter() : null;
                weakReference2 = BlockApproveListPresenter.this.view;
                BlockApproveListContract.View view3 = (BlockApproveListContract.View) weakReference2.get();
                if (view3 != null) {
                    view3.setNumberListVisible(itemCountInAdapter == null || itemCountInAdapter.intValue() != 0);
                }
            }
        });
        BlockApproveListContract.View view2 = this.view.get();
        if (view2 != null) {
            Intrinsics.checkExpressionValueIsNotNull(blockList, "blockList");
            i = view2.createAdapterForBlocking(blockList);
        } else {
            i = 0;
        }
        return i;
    }

    private final void onNumberOperation(BlockApproveNumberUtil.BlockApproveNumberStatus blockApproveNumberStatus, String str) {
        BlockApproveListContract.View view = this.view.get();
        if (view != null) {
            switch (blockApproveNumberStatus) {
                case FEATURE_NOT_AVAILABLE:
                    view.showFeatureNotAvailable();
                    return;
                case INVALID_PHONE_NUMBER:
                    view.showInvalidPhoneNumber();
                    return;
                case ALREADY_APPROVED:
                    view.showAlreadyApproved(str);
                    return;
                case ALREADY_BLOCKED:
                    view.showAlreadyBlocked(str);
                    return;
                case SUCCESSFULLY_ADDED:
                    onRefreshContent();
                    view.showSuccessfullyAdded();
                    return;
                default:
                    throw new NoWhenBranchMatchedException();
            }
        }
    }

    public final void approveNumber(@NotNull AppCompatActivity activity, @NotNull String number) {
        Intrinsics.checkParameterIsNotNull(activity, "activity");
        Intrinsics.checkParameterIsNotNull(number, "number");
        BlockApproveListContract.View view = this.view.get();
        BlockApproveNumberUtil.BlockApproveNumberStatus approveStatus = BlockApproveNumberUtil.approveNumber(activity, view != null ? view.getRealmInst() : null, number);
        Intrinsics.checkExpressionValueIsNotNull(approveStatus, "approveStatus");
        onNumberOperation(approveStatus, number);
    }

    public final void blockNumber(@NotNull AppCompatActivity activity, @NotNull String number) {
        Intrinsics.checkParameterIsNotNull(activity, "activity");
        Intrinsics.checkParameterIsNotNull(number, "number");
        BlockApproveListContract.View view = this.view.get();
        BlockApproveNumberUtil.BlockApproveNumberStatus blockingStatus = BlockApproveNumberUtil.blockNumber(activity, view != null ? view.getRealmInst() : null, number);
        Intrinsics.checkExpressionValueIsNotNull(blockingStatus, "blockingStatus");
        onNumberOperation(blockingStatus, number);
    }

    public final void onButtonClicked() {
    }

    public final void onFabClicked() {
        if (this.manager.shouldShowAddNumberAsDialog()) {
            BlockApproveListContract.View view = this.view.get();
            if (view != null) {
                view.showAddNumberAsDialog();
                return;
            }
            return;
        }
        BlockApproveListContract.View view2 = this.view.get();
        if (view2 != null) {
            view2.showAddNumberAsFragment();
        }
    }

    public final void onRefreshContent() {
        BlockApproveListContract.View view = this.view.get();
        if (view != null) {
            view.refreshBlockList(true);
        }
    }

    public final boolean shouldOverrideAttachFragment() {
        return this.manager.shouldAttachItselfAsCurrentFragment();
    }

    public final boolean shouldShowConfirmationAsBanner() {
        return this.manager.shouldShowConfirmationAsBanner();
    }

    public final boolean shouldShowContextDialogOnLongClick() {
        return this.manager.shouldShowContextDialogOnLongClick();
    }

    public final void viewCreated() {
        int i;
        BlockApproveListContract.View view;
        BlockApproveListContract.View view2;
        if (this.manager.shouldEnableToolbar() && (view2 = this.view.get()) != null) {
            view2.enableToolBar();
        }
        boolean z = true;
        if (this.manager.shouldEnableFabIcon() && (view = this.view.get()) != null) {
            view.enableFab(true);
        }
        switch (this.type) {
            case BLOCK_LIST:
                i = createBlockListAdapter();
                break;
            case APPROVED_LIST:
                i = createApprovedListAdapter();
                break;
            default:
                throw new NoWhenBranchMatchedException();
        }
        BlockApproveListContract.View view3 = this.view.get();
        if (view3 != null) {
            if (i == 0) {
                z = false;
            }
            view3.setNumberListVisible(z);
        }
    }
}
