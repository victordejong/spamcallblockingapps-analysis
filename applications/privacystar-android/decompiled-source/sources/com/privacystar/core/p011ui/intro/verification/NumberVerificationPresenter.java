package com.privacystar.core.p011ui.intro.verification;

import com.google.android.gms.analytics.ecommerce.Promotion;
import com.privacystar.core.data.providers.DeviceNumberProvider;
import com.privacystar.core.p011ui.intro.verification.NumberVerification;
import com.privacystar.core.service.PreferenceUtil;
import com.privacystar.core.service.analytics.AnalyticsManager;
import com.privacystar.core.service.analytics.Event;
import com.privacystar.core.util.NumbersUtil;
import com.privacystar.core.util.analytics.AnalyticsUtil;
import java.lang.ref.WeakReference;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;
@Metadata(m256bv = {1, 0, 3}, m255d1 = {"��4\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0002\n��\n\u0002\u0010\u000e\n\u0002\b\n\u0018��2\u00020\u0001B\u0013\u0012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\u0002\u0010\u0005J\u0006\u0010\n\u001a\u00020\u000bJ\u0006\u0010\f\u001a\u00020\u000bJ\u000e\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0010J\u000e\u0010\u0011\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0010J\u0006\u0010\u0012\u001a\u00020\u000eJ\b\u0010\u0013\u001a\u00020\u000eH\u0002J\u0010\u0010\u0014\u001a\u00020\u000e2\u0006\u0010\u0015\u001a\u00020\u000bH\u0002J\u0010\u0010\u0016\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0010H\u0002J\u0010\u0010\u0017\u001a\u00020\u000b2\u0006\u0010\u0018\u001a\u00020\u0010H\u0002J\u0006\u0010\u0019\u001a\u00020\u000eR\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n��R\u0017\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\b\n��\u001a\u0004\b\b\u0010\t¨\u0006\u001a"}, m254d2 = {"Lcom/privacystar/core/ui/intro/verification/NumberVerificationPresenter;", "", Promotion.ACTION_VIEW, "Ljava/lang/ref/WeakReference;", "Lcom/privacystar/core/ui/intro/verification/NumberVerification$View;", "(Ljava/lang/ref/WeakReference;)V", "manager", "Lcom/privacystar/core/ui/intro/verification/NumberVerificationManagerImpl;", "getView", "()Ljava/lang/ref/WeakReference;", "canAutoTransition", "", "handlesBackButton", "numberFieldCompleted", "", "phoneNumber", "", "onSendCodeButtonClick", "phoneNumberLineClicked", "populateNumberField", "showErrorMessage", "isVisible", "validateAndTransition", "validatePhoneNumber", "input", "viewCreated", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
/* renamed from: com.privacystar.core.ui.intro.verification.NumberVerificationPresenter */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/intro/verification/NumberVerificationPresenter.class */
public final class NumberVerificationPresenter {
    private final NumberVerificationManagerImpl manager = NumberVerificationManagerImpl.INSTANCE;
    @NotNull
    private final WeakReference<NumberVerification.View> view;

    public NumberVerificationPresenter(@NotNull WeakReference<NumberVerification.View> view) {
        Intrinsics.checkParameterIsNotNull(view, "view");
        this.view = view;
    }

    private final void populateNumberField() {
        String number = DeviceNumberProvider.INSTANCE.getNumber();
        String str = number;
        if (!(str == null || StringsKt.isBlank(str))) {
            NumberVerification.View view = this.view.get();
            if (view != null) {
                view.setNumberFieldText(number);
                return;
            }
            return;
        }
        NumberVerification.View view2 = this.view.get();
        if (view2 != null) {
            view2.setInputEnabled(true);
        }
    }

    private final void showErrorMessage(boolean z) {
        NumberVerification.View view;
        if (!this.manager.shouldShowSnackbarMessage()) {
            NumberVerification.View view2 = this.view.get();
            if (view2 != null) {
                view2.showValidationErrorAsText(z);
            }
        } else if (z && (view = this.view.get()) != null) {
            view.showValidationErrorAsSnackbar();
        }
    }

    private final void validateAndTransition(String str) {
        if (validatePhoneNumber(str)) {
            DeviceNumberProvider.INSTANCE.setNumber(str);
            NumberVerification.View view = this.view.get();
            if (view != null) {
                view.transition();
                return;
            }
            return;
        }
        NumberVerification.View view2 = this.view.get();
        if (view2 != null) {
            view2.clearTextField();
            showErrorMessage(true);
        }
    }

    private final boolean validatePhoneNumber(String str) {
        return NumbersUtil.isValidPossiblePhoneNumber(str);
    }

    public final boolean canAutoTransition() {
        return this.manager.canAutoTransition();
    }

    @NotNull
    public final WeakReference<NumberVerification.View> getView() {
        return this.view;
    }

    public final boolean handlesBackButton() {
        return !this.manager.canGoBack();
    }

    public final void numberFieldCompleted(@NotNull String phoneNumber) {
        Intrinsics.checkParameterIsNotNull(phoneNumber, "phoneNumber");
        if (this.view.get() != null) {
            validateAndTransition(phoneNumber);
        }
    }

    public final void onSendCodeButtonClick(@NotNull String phoneNumber) {
        Intrinsics.checkParameterIsNotNull(phoneNumber, "phoneNumber");
        AnalyticsManager.INSTANCE.fire(Event.ActivationNumberVerificationSendClick.INSTANCE);
        if (this.view.get() != null) {
            validateAndTransition(phoneNumber);
        }
    }

    public final void phoneNumberLineClicked() {
        AnalyticsManager.INSTANCE.fire(Event.ActivationNumberVerificationNumberEnterClick.INSTANCE);
    }

    public final void viewCreated() {
        AnalyticsManager.INSTANCE.fire(Event.ActivationNumberVerificationView.INSTANCE);
        NumberVerification.View view = this.view.get();
        if (view != null) {
            view.setupNumberFieldAndClickListeners(this.manager.shouldLimitPhoneNumberInput(), true);
            view.showImage(this.manager.shouldShowImage());
            view.showValidationErrorAsText(false);
            populateNumberField();
        }
        AnalyticsUtil.INSTANCE.trackCYDReregistration(PreferenceUtil.getIsNumberVerified());
    }
}
