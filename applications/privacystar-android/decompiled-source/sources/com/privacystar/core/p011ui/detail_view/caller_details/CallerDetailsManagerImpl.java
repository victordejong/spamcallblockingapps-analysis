package com.privacystar.core.p011ui.detail_view.caller_details;

import com.privacystar.core.p011ui.detail_view.caller_details.CallerDetailsContract;
import kotlin.Metadata;
@Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\n\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\b\u0010\u0003\u001a\u00020\u0004H\u0016J\b\u0010\u0005\u001a\u00020\u0004H\u0016J\b\u0010\u0006\u001a\u00020\u0004H\u0016J\b\u0010\u0007\u001a\u00020\u0004H\u0016J\b\u0010\b\u001a\u00020\u0004H\u0016J\b\u0010\t\u001a\u00020\u0004H\u0016J\b\u0010\n\u001a\u00020\u0004H\u0016J\b\u0010\u000b\u001a\u00020\u0004H\u0016J\b\u0010\f\u001a\u00020\u0004H\u0016J\b\u0010\r\u001a\u00020\u0004H\u0016¨\u0006\u000e"}, m254d2 = {"Lcom/privacystar/core/ui/detail_view/caller_details/CallerDetailsManagerImpl;", "Lcom/privacystar/core/ui/detail_view/caller_details/CallerDetailsContract$Manager;", "()V", "shouldShowCallCategory", "", "shouldShowConfirmationForReport", "shouldShowContextMenu", "shouldShowInfoMessagesAsSnackbar", "shouldShowLocation", "shouldShowTagsAfterRoboCall", "shouldShowThankYouAfterReporting", "shouldShowUnBlockRemoveIcon", "shouldShowYesNoDivider", "shouldUseContactButton", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
/* renamed from: com.privacystar.core.ui.detail_view.caller_details.CallerDetailsManagerImpl */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/detail_view/caller_details/CallerDetailsManagerImpl.class */
public final class CallerDetailsManagerImpl implements CallerDetailsContract.Manager {
    public static final CallerDetailsManagerImpl INSTANCE = new CallerDetailsManagerImpl();

    private CallerDetailsManagerImpl() {
    }

    @Override // com.privacystar.core.p011ui.detail_view.caller_details.CallerDetailsContract.Manager
    public boolean shouldShowCallCategory() {
        return true;
    }

    @Override // com.privacystar.core.p011ui.detail_view.caller_details.CallerDetailsContract.Manager
    public boolean shouldShowConfirmationForReport() {
        return false;
    }

    @Override // com.privacystar.core.p011ui.detail_view.caller_details.CallerDetailsContract.Manager
    public boolean shouldShowContextMenu() {
        return true;
    }

    @Override // com.privacystar.core.p011ui.detail_view.caller_details.CallerDetailsContract.Manager
    public boolean shouldShowInfoMessagesAsSnackbar() {
        return false;
    }

    @Override // com.privacystar.core.p011ui.detail_view.caller_details.CallerDetailsContract.Manager
    public boolean shouldShowLocation() {
        return true;
    }

    @Override // com.privacystar.core.p011ui.detail_view.caller_details.CallerDetailsContract.Manager
    public boolean shouldShowTagsAfterRoboCall() {
        return false;
    }

    @Override // com.privacystar.core.p011ui.detail_view.caller_details.CallerDetailsContract.Manager
    public boolean shouldShowThankYouAfterReporting() {
        return false;
    }

    @Override // com.privacystar.core.p011ui.detail_view.caller_details.CallerDetailsContract.Manager
    public boolean shouldShowUnBlockRemoveIcon() {
        return false;
    }

    @Override // com.privacystar.core.p011ui.detail_view.caller_details.CallerDetailsContract.Manager
    public boolean shouldShowYesNoDivider() {
        return false;
    }

    @Override // com.privacystar.core.p011ui.detail_view.caller_details.CallerDetailsContract.Manager
    public boolean shouldUseContactButton() {
        return false;
    }
}
