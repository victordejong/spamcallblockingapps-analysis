package com.privacystar.core.p011ui.intro.af_activation_success;

import com.google.android.gms.analytics.ecommerce.Promotion;
import com.privacystar.core.p011ui.intro.af_activation_success.AFActivationSuccessContract;
import com.privacystar.core.service.PreferenceUtil;
import com.privacystar.core.service.analytics.AnalyticsManager;
import com.privacystar.core.service.analytics.Event;
import java.lang.ref.WeakReference;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@Metadata(m256bv = {1, 0, 3}, m255d1 = {"�� \n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0002\u0018��2\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0006\u0010\t\u001a\u00020\nJ\u0006\u0010\u000b\u001a\u00020\nR\u001f\u0010\u0002\u001a\u0010\u0012\f\u0012\n \u0006*\u0004\u0018\u00010\u00030\u00030\u0005¢\u0006\b\n��\u001a\u0004\b\u0007\u0010\b¨\u0006\f"}, m254d2 = {"Lcom/privacystar/core/ui/intro/af_activation_success/AFActivationSuccessPresenter;", "", Promotion.ACTION_VIEW, "Lcom/privacystar/core/ui/intro/af_activation_success/AFActivationSuccessContract$View;", "(Lcom/privacystar/core/ui/intro/af_activation_success/AFActivationSuccessContract$View;)V", "Ljava/lang/ref/WeakReference;", "kotlin.jvm.PlatformType", "getView", "()Ljava/lang/ref/WeakReference;", "onButtonPressed", "", "onViewCreated", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
/* renamed from: com.privacystar.core.ui.intro.af_activation_success.AFActivationSuccessPresenter */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/intro/af_activation_success/AFActivationSuccessPresenter.class */
public final class AFActivationSuccessPresenter {
    @NotNull
    private final WeakReference<AFActivationSuccessContract.View> view;

    public AFActivationSuccessPresenter(@NotNull AFActivationSuccessContract.View view) {
        Intrinsics.checkParameterIsNotNull(view, "view");
        this.view = new WeakReference<>(view);
    }

    @NotNull
    public final WeakReference<AFActivationSuccessContract.View> getView() {
        return this.view;
    }

    public final void onButtonPressed() {
        PreferenceUtil.putActivationScreenVisited(true);
        AnalyticsManager.INSTANCE.fire(Event.ActivationSuccessClick.INSTANCE);
        AFActivationSuccessContract.View view = this.view.get();
        if (view != null) {
            view.transition();
        }
    }

    public final void onViewCreated() {
        AnalyticsManager.INSTANCE.fire(Event.ActivationSuccessView.INSTANCE);
        AFActivationSuccessContract.View view = this.view.get();
        if (view != null) {
            view.setClickListeners();
        }
    }
}
