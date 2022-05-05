package com.privacystar.core.p011ui.intro.af_overlay_permissions;

import com.google.android.gms.analytics.ecommerce.Promotion;
import com.privacystar.core.p011ui.intro.af_overlay_permissions.AFOverlayPermissionContract;
import java.lang.ref.WeakReference;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@Metadata(m256bv = {1, 0, 3}, m255d1 = {"�� \n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0003\u0018��2\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0006\u0010\b\u001a\u00020\tJ\u0006\u0010\n\u001a\u00020\tJ\u0006\u0010\u000b\u001a\u00020\tR\u0017\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00030\u0005¢\u0006\b\n��\u001a\u0004\b\u0006\u0010\u0007¨\u0006\f"}, m254d2 = {"Lcom/privacystar/core/ui/intro/af_overlay_permissions/AFOverlayPermissionsPresenter;", "", Promotion.ACTION_VIEW, "Lcom/privacystar/core/ui/intro/af_overlay_permissions/AFOverlayPermissionContract$View;", "(Lcom/privacystar/core/ui/intro/af_overlay_permissions/AFOverlayPermissionContract$View;)V", "Ljava/lang/ref/WeakReference;", "getView", "()Ljava/lang/ref/WeakReference;", "onDialogFinished", "", "onSettingsShown", "onViewResumed", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
/* renamed from: com.privacystar.core.ui.intro.af_overlay_permissions.AFOverlayPermissionsPresenter */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/intro/af_overlay_permissions/AFOverlayPermissionsPresenter.class */
public final class AFOverlayPermissionsPresenter {
    @NotNull
    private final WeakReference<AFOverlayPermissionContract.View> view;

    public AFOverlayPermissionsPresenter(@NotNull AFOverlayPermissionContract.View view) {
        Intrinsics.checkParameterIsNotNull(view, "view");
        this.view = new WeakReference<>(view);
    }

    @NotNull
    public final WeakReference<AFOverlayPermissionContract.View> getView() {
        return this.view;
    }

    public final void onDialogFinished() {
        AFOverlayPermissionContract.View view = this.view.get();
        if (view != null) {
            view.transition();
        }
    }

    public final void onSettingsShown() {
        AFOverlayPermissionContract.View view = this.view.get();
        if (view != null) {
            view.setIsReadyToTransition(true);
        }
    }

    public final void onViewResumed() {
        AFOverlayPermissionContract.View view = this.view.get();
        if (view == null) {
            return;
        }
        if (view.hasOverlayPermission() || view.isReadyToTransition()) {
            view.transition();
        } else {
            view.showOverlayDialog();
        }
    }
}
