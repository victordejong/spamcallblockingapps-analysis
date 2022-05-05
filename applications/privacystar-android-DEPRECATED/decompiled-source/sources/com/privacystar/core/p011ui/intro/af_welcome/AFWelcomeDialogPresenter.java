package com.privacystar.core.p011ui.intro.af_welcome;

import com.google.android.gms.analytics.ecommerce.Promotion;
import com.privacystar.core.p011ui.intro.af_welcome.AFWelcome;
import com.privacystar.core.service.PreferenceUtil;
import com.privacystar.core.service.analytics.AnalyticsManager;
import com.privacystar.core.service.analytics.Event;
import java.lang.ref.WeakReference;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@Metadata(m256bv = {1, 0, 3}, m255d1 = {"��,\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0007\u0018��2\u00020\u0001B\u001b\u0012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007J\u0010\u0010\r\u001a\u00020\u000e2\b\b\u0002\u0010\u000f\u001a\u00020\tJ\u0006\u0010\u0010\u001a\u00020\u000eJ\u0010\u0010\u0011\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\tH\u0002J\u000e\u0010\u0012\u001a\u00020\u000e2\u0006\u0010\u0013\u001a\u00020\u0006J\u0006\u0010\u0014\u001a\u00020\u000eR\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\b\u001a\u00020\tX\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\n\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n��R\u0017\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\b\n��\u001a\u0004\b\u000b\u0010\f¨\u0006\u0015"}, m254d2 = {"Lcom/privacystar/core/ui/intro/af_welcome/AFWelcomeDialogPresenter;", "", Promotion.ACTION_VIEW, "Ljava/lang/ref/WeakReference;", "Lcom/privacystar/core/ui/intro/af_welcome/AFWelcome$AFWelcomeDialogView;", "isPremium", "", "(Ljava/lang/ref/WeakReference;Z)V", "pendingProductId", "", "purchasePending", "getView", "()Ljava/lang/ref/WeakReference;", "onActionButtonClick", "", "productId", "onCloseButtonClick", "storeAttemptedPurchaseAction", "subscriptionChanged", "isActive", "viewCreated", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
/* renamed from: com.privacystar.core.ui.intro.af_welcome.AFWelcomeDialogPresenter */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/intro/af_welcome/AFWelcomeDialogPresenter.class */
public final class AFWelcomeDialogPresenter {
    private boolean isPremium;
    private int pendingProductId;
    private boolean purchasePending;
    @NotNull
    private final WeakReference<AFWelcome.AFWelcomeDialogView> view;

    public AFWelcomeDialogPresenter(@NotNull WeakReference<AFWelcome.AFWelcomeDialogView> view, boolean z) {
        Intrinsics.checkParameterIsNotNull(view, "view");
        this.view = view;
        this.isPremium = z;
    }

    public static /* synthetic */ void onActionButtonClick$default(AFWelcomeDialogPresenter aFWelcomeDialogPresenter, int i, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = 0;
        }
        aFWelcomeDialogPresenter.onActionButtonClick(i);
    }

    private final void storeAttemptedPurchaseAction(int i) {
        this.purchasePending = true;
        this.pendingProductId = i;
    }

    @NotNull
    public final WeakReference<AFWelcome.AFWelcomeDialogView> getView() {
        return this.view;
    }

    public final void onActionButtonClick(int i) {
        if (this.isPremium) {
            AnalyticsManager.INSTANCE.fire(Event.WelcomeUpsellPremiumUserContinueClick.INSTANCE);
            AFWelcome.AFWelcomeDialogView aFWelcomeDialogView = this.view.get();
            if (aFWelcomeDialogView != null) {
                aFWelcomeDialogView.finishView();
                return;
            }
            return;
        }
        AnalyticsManager.INSTANCE.fire(Event.WelcomeUpsellFreeUserTrialClick.INSTANCE);
        PreferenceUtil.putLastPurchaseSucceeded(false);
        PreferenceUtil.putLastPurchaseFailed(false);
        storeAttemptedPurchaseAction(i);
        AFWelcome.AFWelcomeDialogView aFWelcomeDialogView2 = this.view.get();
        if (aFWelcomeDialogView2 != null) {
            aFWelcomeDialogView2.attemptPurchase();
        }
    }

    public final void onCloseButtonClick() {
        AnalyticsManager.INSTANCE.fire(Event.WelcomeUpsellFreeUserCloseClick.INSTANCE);
        PreferenceUtil.putEulaAccepted(true);
        AFWelcome.AFWelcomeDialogView aFWelcomeDialogView = this.view.get();
        if (aFWelcomeDialogView != null) {
            aFWelcomeDialogView.finishView();
        }
    }

    public final void subscriptionChanged(boolean z) {
        if (z != this.isPremium) {
            this.isPremium = z;
            viewCreated();
        }
    }

    public final void viewCreated() {
        if (this.isPremium) {
            AnalyticsManager.INSTANCE.fire(Event.WelcomeUpsellPremiumUserPageView.INSTANCE);
            AFWelcome.AFWelcomeDialogView aFWelcomeDialogView = this.view.get();
            if (aFWelcomeDialogView != null) {
                aFWelcomeDialogView.hideCloseButton();
                aFWelcomeDialogView.setPremiumText();
                return;
            }
            return;
        }
        AnalyticsManager.INSTANCE.fire(Event.WelcomeUpsellFreeUserPageView.INSTANCE);
        AFWelcome.AFWelcomeDialogView aFWelcomeDialogView2 = this.view.get();
        if (aFWelcomeDialogView2 != null) {
            aFWelcomeDialogView2.setFreeText();
        }
    }
}
