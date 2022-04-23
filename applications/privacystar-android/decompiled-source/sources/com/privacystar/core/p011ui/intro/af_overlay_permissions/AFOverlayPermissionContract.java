package com.privacystar.core.p011ui.intro.af_overlay_permissions;

import kotlin.Metadata;
@Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0004\u0018��2\u00020\u0001:\u0002\u0003\u0004B\u0005¢\u0006\u0002\u0010\u0002¨\u0006\u0005"}, m254d2 = {"Lcom/privacystar/core/ui/intro/af_overlay_permissions/AFOverlayPermissionContract;", "", "()V", "DialogView", "View", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
/* renamed from: com.privacystar.core.ui.intro.af_overlay_permissions.AFOverlayPermissionContract */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/intro/af_overlay_permissions/AFOverlayPermissionContract.class */
public final class AFOverlayPermissionContract {

    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\u0012\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010\u0002\n\u0002\b\u0003\bf\u0018��2\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H&J\b\u0010\u0004\u001a\u00020\u0003H&J\b\u0010\u0005\u001a\u00020\u0003H&¨\u0006\u0006"}, m254d2 = {"Lcom/privacystar/core/ui/intro/af_overlay_permissions/AFOverlayPermissionContract$DialogView;", "", "attemptGrantPermissions", "", "finish", "triggerSettingsShown", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
    /* renamed from: com.privacystar.core.ui.intro.af_overlay_permissions.AFOverlayPermissionContract$DialogView */
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/intro/af_overlay_permissions/AFOverlayPermissionContract$DialogView.class */
    public interface DialogView {
        void attemptGrantPermissions();

        void finish();

        void triggerSettingsShown();
    }

    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\u001a\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0004\bf\u0018��2\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H&J\b\u0010\u0004\u001a\u00020\u0003H&J\u0010\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0003H&J\b\u0010\b\u001a\u00020\u0006H&J\b\u0010\t\u001a\u00020\u0006H&¨\u0006\n"}, m254d2 = {"Lcom/privacystar/core/ui/intro/af_overlay_permissions/AFOverlayPermissionContract$View;", "", "hasOverlayPermission", "", "isReadyToTransition", "setIsReadyToTransition", "", "ready", "showOverlayDialog", "transition", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
    /* renamed from: com.privacystar.core.ui.intro.af_overlay_permissions.AFOverlayPermissionContract$View */
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/intro/af_overlay_permissions/AFOverlayPermissionContract$View.class */
    public interface View {
        boolean hasOverlayPermission();

        boolean isReadyToTransition();

        void setIsReadyToTransition(boolean z);

        void showOverlayDialog();

        void transition();
    }
}
