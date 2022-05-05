package com.privacystar.core.p011ui.intro.verification;

import com.apptentive.android.sdk.network.HttpRequestRetryPolicyDefault;
import com.google.android.gms.analytics.ecommerce.Promotion;
import com.privacystar.core.data.providers.DeviceNumberProvider;
import com.privacystar.core.p011ui.intro.verification.CodeVerification;
import com.privacystar.core.service.PreferenceUtil;
import com.privacystar.core.service.analytics.AnalyticsManager;
import com.privacystar.core.service.analytics.Event;
import java.lang.ref.WeakReference;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import timber.log.Timber;
@Metadata(m256bv = {1, 0, 3}, m255d1 = {"��B\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\t\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n��\n\u0002\u0010\u0002\n\u0002\b\u000e\n\u0002\u0010\u000e\n\u0002\b\r\u0018��2\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0006\u0010\u000f\u001a\u00020\u0010J\u000e\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0010J\u000e\u0010\u0014\u001a\u00020\u00122\u0006\u0010\u0015\u001a\u00020\u0010J\u0006\u0010\u0016\u001a\u00020\u0010J\b\u0010\u0017\u001a\u00020\u0012H\u0002J\b\u0010\u0018\u001a\u00020\u0010H\u0002J\u0006\u0010\u0019\u001a\u00020\u0012J\u0006\u0010\u001a\u001a\u00020\u0012J\u0006\u0010\u001b\u001a\u00020\u0012J\u0006\u0010\u001c\u001a\u00020\u0012J\u000e\u0010\u001d\u001a\u00020\u00122\u0006\u0010\u001e\u001a\u00020\u0010J\u0010\u0010\u001f\u001a\u00020\u00122\b\u0010 \u001a\u0004\u0018\u00010!J\u000e\u0010\"\u001a\u00020\u00122\u0006\u0010#\u001a\u00020\u0010J\u000e\u0010$\u001a\u00020\u00122\u0006\u0010%\u001a\u00020!J\u0010\u0010&\u001a\u00020\u00122\u0006\u0010'\u001a\u00020\u0010H\u0002J\b\u0010(\u001a\u00020\u0012H\u0002J\u0006\u0010)\u001a\u00020\u0012J\b\u0010*\u001a\u00020\u0012H\u0002J\u0006\u0010+\u001a\u00020\u0012J\u0006\u0010,\u001a\u00020\u0012J\u0006\u0010-\u001a\u00020\u0012R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\t\u001a\u00020\u0006X\u0082D¢\u0006\u0002\n��R\u000e\u0010\n\u001a\u00020\u0006X\u0082D¢\u0006\u0002\n��R\u000e\u0010\u000b\u001a\u00020\fX\u0082D¢\u0006\u0002\n��R\u000e\u0010\r\u001a\u00020\fX\u0082D¢\u0006\u0002\n��R\u0014\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00030\u000eX\u0082\u0004¢\u0006\u0002\n��¨\u0006."}, m254d2 = {"Lcom/privacystar/core/ui/intro/verification/CodeVerificationPresenter;", "", Promotion.ACTION_VIEW, "Lcom/privacystar/core/ui/intro/verification/CodeVerification$View;", "(Lcom/privacystar/core/ui/intro/verification/CodeVerification$View;)V", "attemptsMade", "", "manager", "Lcom/privacystar/core/ui/intro/verification/CodeVerification$Manager;", "numberOfFields", "retryAttemptsAllowed", "retryThrottleMs", "", "verificationSkipThresholdMs", "Ljava/lang/ref/WeakReference;", "canAutoTransition", "", "codeFieldIsReady", "", "ready", "codeVerificationResponse", "validCode", "hasBackButton", "incrementAttemptsMade", "noAttemptLeft", "onBackButton", "onCodeFieldClicked", "onCountDownFinished", "onResendButton", "onVerifyCodeButton", "areFieldsReady", "processSmsPin", "pin", "", "processTransition", "transReady", "requestValidation", "inputPin", "showErrorMessage", "isVisible", "skipValidation", "skipValidationAvailable", "switchedToSkipButton", "timeoutThresholdReached", "verifyingDialogShown", "viewCreated", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
/* renamed from: com.privacystar.core.ui.intro.verification.CodeVerificationPresenter */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/intro/verification/CodeVerificationPresenter.class */
public final class CodeVerificationPresenter {
    private int attemptsMade;
    private final WeakReference<CodeVerification.View> view;
    private final int numberOfFields = 6;
    private final int retryAttemptsAllowed = 4;
    private final long retryThrottleMs = 5100;
    private final long verificationSkipThresholdMs = HttpRequestRetryPolicyDefault.DEFAULT_RETRY_TIMEOUT_MILLIS;
    private final CodeVerification.Manager manager = CodeVerificationManagerImpl.INSTANCE;

    public CodeVerificationPresenter(@NotNull CodeVerification.View view) {
        Intrinsics.checkParameterIsNotNull(view, "view");
        this.view = new WeakReference<>(view);
    }

    private final void incrementAttemptsMade() {
        this.attemptsMade++;
        if (noAttemptLeft()) {
            Timber.m37d("Too many failed attempts [%d]. No more retries will be allowed.", Integer.valueOf(this.attemptsMade));
            if (!this.manager.canAutoVerifyWithoutButtonClick()) {
                switchedToSkipButton();
            }
        }
    }

    private final boolean noAttemptLeft() {
        return this.attemptsMade >= this.retryAttemptsAllowed;
    }

    private final void showErrorMessage(boolean z) {
        AnalyticsManager.INSTANCE.fire(Event.ActivationVerificationErrorCode.INSTANCE);
        CodeVerification.View view = this.view.get();
        if (view != null) {
            if (!this.manager.shouldShowSnackbarMessage()) {
                view.setErrorMessage(z);
            } else if (z) {
                view.setErrorMessageAsSnackbar();
            }
            view.setActionButtonVisible(!this.manager.canAutoVerifyWithoutButtonClick());
            view.resetView();
        }
    }

    private final void skipValidation() {
        Timber.m37d("Transitioning to next fragment without successful validation.", new Object[0]);
        PreferenceUtil.putIsNumberVerificationSkipped(true);
        CodeVerification.View view = this.view.get();
        if (view != null) {
            view.transition();
        }
    }

    private final void switchedToSkipButton() {
        CodeVerification.View view = this.view.get();
        if (view != null) {
            view.switchVerificationToSkip();
            view.setActionButtonVisible(true);
            view.enableVerifyButton(true);
        }
    }

    public final boolean canAutoTransition() {
        return this.manager.canAutoTransition();
    }

    public final void codeFieldIsReady(boolean z) {
        boolean z2 = noAttemptLeft() ? true : z;
        CodeVerification.View view = this.view.get();
        if (view != null) {
            view.enableVerifyButton(z2);
        }
        if (this.manager.canAutoVerifyWithoutButtonClick()) {
            onVerifyCodeButton(z);
        }
    }

    public final void codeVerificationResponse(boolean z) {
        Timber.m37d("Processing validation result: [%s]", Boolean.valueOf(z));
        CodeVerification.View view = this.view.get();
        if (view != null) {
            showErrorMessage(!z);
            Timber.m37d("Disposing timeout Timer.", new Object[0]);
            view.disposeTimeoutDisposable();
            if (!z) {
                view.setLoadingDialog(false);
                incrementAttemptsMade();
            }
        }
    }

    public final boolean hasBackButton() {
        return this.manager.hasBackButton();
    }

    public final void onBackButton() {
        AnalyticsManager.INSTANCE.fire(Event.ActivationVerificationCodeBackClick.INSTANCE);
        CodeVerification.View view = this.view.get();
        if (view != null) {
            view.resetView();
            view.goToPreviousFragment();
        }
    }

    public final void onCodeFieldClicked() {
        AnalyticsManager.INSTANCE.fire(Event.ActivationVerificationCodeNumberEnterClick.INSTANCE);
    }

    public final void onCountDownFinished() {
        CodeVerification.View view = this.view.get();
        if (view != null) {
            view.showResendLayout(true);
        }
    }

    public final void onResendButton() {
        AnalyticsManager.INSTANCE.fire(Event.ActivationVerificationCodeResendClick.INSTANCE);
        String number = DeviceNumberProvider.INSTANCE.getNumber();
        Timber.m37d("Resend clicked, re-validating number [%s]", number);
        CodeVerification.View view = this.view.get();
        if (view != null) {
            view.showResendLayout(false);
            view.startCountDown();
            view.processResend(number);
        }
    }

    public final void onVerifyCodeButton(boolean z) {
        if (noAttemptLeft()) {
            Timber.m37d("Skip button clicked.", new Object[0]);
            skipValidation();
        } else if (z) {
            Timber.m37d("Verify Code button clicked.", new Object[0]);
            CodeVerification.View view = this.view.get();
            if (view != null) {
                view.startValidation();
                view.setTimeoutDisposable(this.verificationSkipThresholdMs);
            }
        }
    }

    public final void processSmsPin(@Nullable String str) {
        CodeVerification.View view;
        if (str != null && str.length() == this.numberOfFields && (view = this.view.get()) != null) {
            view.populateCodeFields(str);
        }
    }

    public final void processTransition(boolean z) {
        Timber.m37d("Processing loading transition: [%sready]", z ? "" : "not ");
        if (z) {
            Timber.m37d("Transitioning fragment.", new Object[0]);
            PreferenceUtil.putIsNumberVerified(true);
            PreferenceUtil.putIsNumberVerifying(false);
            PreferenceUtil.putIsNumberVerificationSkipped(false);
            CodeVerification.View view = this.view.get();
            if (view != null) {
                view.setLoadingDialog(false);
                view.transition();
            }
        }
    }

    public final void requestValidation(@NotNull String inputPin) {
        Intrinsics.checkParameterIsNotNull(inputPin, "inputPin");
        Timber.m37d("Validating input: [%s]", inputPin);
        if (inputPin.length() != this.numberOfFields) {
            Timber.m37d("All fields must be filled out to validate.", new Object[0]);
            showErrorMessage(true);
            return;
        }
        CodeVerification.View view = this.view.get();
        if (view != null) {
            view.setLoadingDialog(true);
            view.validateCode(inputPin);
        }
    }

    public final void skipValidationAvailable() {
        skipValidation();
    }

    public final void timeoutThresholdReached() {
        Timber.m37d("Timeout threshold reached after [%d]ms. Presenting skip button to user.", Long.valueOf(this.verificationSkipThresholdMs));
        this.attemptsMade = this.retryAttemptsAllowed + 1;
        switchedToSkipButton();
    }

    public final void verifyingDialogShown() {
        AnalyticsManager.INSTANCE.fire(Event.ActivationNumberVerifyingView.INSTANCE);
    }

    public final void viewCreated() {
        CodeVerification.View view = this.view.get();
        if (view != null) {
            view.setErrorMessage(false);
            view.setHeaderText(DeviceNumberProvider.INSTANCE.getNumber());
            view.enableVerifyButton(false);
            view.setActionButtonVisible(!this.manager.canAutoVerifyWithoutButtonClick());
            view.registerInputObservable(this.numberOfFields);
            view.registerObservables();
            view.setupCountDownTimerForResend(this.retryThrottleMs);
            view.showResendLayout(false);
            view.startCountDown();
        }
        AnalyticsManager.INSTANCE.fire(Event.ActivationVerificationCodePageView.INSTANCE);
    }
}
