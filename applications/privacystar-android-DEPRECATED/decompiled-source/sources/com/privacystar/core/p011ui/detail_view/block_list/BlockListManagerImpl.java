package com.privacystar.core.p011ui.detail_view.block_list;

import com.privacystar.core.p011ui.detail_view.block_list.BlockApproveListContract;
import kotlin.Metadata;
@Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0006\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\b\u0010\u0003\u001a\u00020\u0004H\u0016J\b\u0010\u0005\u001a\u00020\u0004H\u0016J\b\u0010\u0006\u001a\u00020\u0004H\u0016J\b\u0010\u0007\u001a\u00020\u0004H\u0016J\b\u0010\b\u001a\u00020\u0004H\u0016J\b\u0010\t\u001a\u00020\u0004H\u0016¨\u0006\n"}, m254d2 = {"Lcom/privacystar/core/ui/detail_view/block_list/BlockListManagerImpl;", "Lcom/privacystar/core/ui/detail_view/block_list/BlockApproveListContract$Manager;", "()V", "shouldAttachItselfAsCurrentFragment", "", "shouldEnableFabIcon", "shouldEnableToolbar", "shouldShowAddNumberAsDialog", "shouldShowConfirmationAsBanner", "shouldShowContextDialogOnLongClick", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
/* renamed from: com.privacystar.core.ui.detail_view.block_list.BlockListManagerImpl */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/detail_view/block_list/BlockListManagerImpl.class */
public final class BlockListManagerImpl implements BlockApproveListContract.Manager {
    public static final BlockListManagerImpl INSTANCE = new BlockListManagerImpl();

    private BlockListManagerImpl() {
    }

    @Override // com.privacystar.core.p011ui.detail_view.block_list.BlockApproveListContract.Manager
    public boolean shouldAttachItselfAsCurrentFragment() {
        return true;
    }

    @Override // com.privacystar.core.p011ui.detail_view.block_list.BlockApproveListContract.Manager
    public boolean shouldEnableFabIcon() {
        return true;
    }

    @Override // com.privacystar.core.p011ui.detail_view.block_list.BlockApproveListContract.Manager
    public boolean shouldEnableToolbar() {
        return true;
    }

    @Override // com.privacystar.core.p011ui.detail_view.block_list.BlockApproveListContract.Manager
    public boolean shouldShowAddNumberAsDialog() {
        return true;
    }

    @Override // com.privacystar.core.p011ui.detail_view.block_list.BlockApproveListContract.Manager
    public boolean shouldShowConfirmationAsBanner() {
        return false;
    }

    @Override // com.privacystar.core.p011ui.detail_view.block_list.BlockApproveListContract.Manager
    public boolean shouldShowContextDialogOnLongClick() {
        return true;
    }
}
