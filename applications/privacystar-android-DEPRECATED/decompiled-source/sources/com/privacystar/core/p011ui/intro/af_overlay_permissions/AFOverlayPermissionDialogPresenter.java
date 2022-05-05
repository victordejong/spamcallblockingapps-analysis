package com.privacystar.core.p011ui.intro.af_overlay_permissions;

import com.google.android.gms.analytics.ecommerce.Promotion;
import com.privacystar.core.p011ui.intro.af_overlay_permissions.AFOverlayPermissionContract;
import com.privacystar.core.service.analytics.AnalyticsManager;
import com.privacystar.core.service.analytics.Event;
import java.lang.ref.WeakReference;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@Metadata(m256bv = {1, 0, 3}, m255d1 = {"��&\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0003\u0018��2\u00020\u0001B\u0013\u0012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\u0002\u0010\u0005J\u0006\u0010\n\u001a\u00020\u000bJ\u0006\u0010\f\u001a\u00020\u000bJ\u0006\u0010\r\u001a\u00020\u000bR\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u000e¢\u0006\u0002\n��R\u0017\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\b\n��\u001a\u0004\b\b\u0010\t¨\u0006\u000e"}, m254d2 = {"Lcom/privacystar/core/ui/intro/af_overlay_permissions/AFOverlayPermissionDialogPresenter;", "", Promotion.ACTION_VIEW, "Ljava/lang/ref/WeakReference;", "Lcom/privacystar/core/ui/intro/af_overlay_permissions/AFOverlayPermissionContract$DialogView;", "(Ljava/lang/ref/WeakReference;)V", "toggleEventTriggered", "", "getView", "()Ljava/lang/ref/WeakReference;", "onSwitchClicked", "", "onViewClicked", "onViewCreated", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
/* renamed from: com.privacystar.core.ui.intro.af_overlay_permissions.AFOverlayPermissionDialogPresenter */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/intro/af_overlay_permissions/AFOverlayPermissionDialogPresenter.class */
public final class AFOverlayPermissionDialogPresenter {
    private boolean toggleEventTriggered;
    @NotNull
    private final WeakReference<AFOverlayPermissionContract.DialogView> view;

    public AFOverlayPermissionDialogPresenter(@NotNull WeakReference<AFOverlayPermissionContract.DialogView> view) {
        Intrinsics.checkParameterIsNotNull(view, "view");
        this.view = view;
    }

    @NotNull
    public final WeakReference<AFOverlayPermissionContract.DialogView> getView() {
        return this.view;
    }

    public final void onSwitchClicked() {
        if (!this.toggleEventTriggered) {
            AnalyticsManager.INSTANCE.fire(Event.PermissionRequiredToggleClick.INSTANCE);
            this.toggleEventTriggered = true;
        }
        AFOverlayPermissionContract.DialogView dialogView = this.view.get();
        if (dialogView != null) {
            dialogView.triggerSettingsShown();
            dialogView.attemptGrantPermissions();
        }
    }

    public final void onViewClicked() {
        AFOverlayPermissionContract.DialogView dialogView = this.view.get();
        if (dialogView != null) {
            dialogView.finish();
        }
    }

    public final void onViewCreated() {
        this.toggleEventTriggered = false;
        AnalyticsManager.INSTANCE.fire(Event.PermissionRequiredView.INSTANCE);
    }
}
