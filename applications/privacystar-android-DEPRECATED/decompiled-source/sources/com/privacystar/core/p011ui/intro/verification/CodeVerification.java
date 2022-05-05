package com.privacystar.core.p011ui.intro.verification;

import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0004\u0018��2\u00020\u0001:\u0002\u0003\u0004B\u0005¢\u0006\u0002\u0010\u0002¨\u0006\u0005"}, m254d2 = {"Lcom/privacystar/core/ui/intro/verification/CodeVerification;", "", "()V", "Manager", "View", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
/* renamed from: com.privacystar.core.ui.intro.verification.CodeVerification */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/intro/verification/CodeVerification.class */
public final class CodeVerification {

    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\u0012\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010\u000b\n\u0002\b\u0005\bf\u0018��2\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H&J\b\u0010\u0004\u001a\u00020\u0003H&J\b\u0010\u0005\u001a\u00020\u0003H&J\b\u0010\u0006\u001a\u00020\u0003H&J\b\u0010\u0007\u001a\u00020\u0003H&¨\u0006\b"}, m254d2 = {"Lcom/privacystar/core/ui/intro/verification/CodeVerification$Manager;", "", "canAutoTransition", "", "canAutoVerifyWithoutButtonClick", "canGoBack", "hasBackButton", "shouldShowSnackbarMessage", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
    /* renamed from: com.privacystar.core.ui.intro.verification.CodeVerification$Manager */
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/intro/verification/CodeVerification$Manager.class */
    public interface Manager {
        boolean canAutoTransition();

        boolean canAutoVerifyWithoutButtonClick();

        boolean canGoBack();

        boolean hasBackButton();

        boolean shouldShowSnackbarMessage();
    }

    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��2\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u000b\n\u0002\u0010\t\n\u0002\b\u000b\bf\u0018��2\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H&J\u0010\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u0006H&J\b\u0010\u0007\u001a\u00020\u0003H&J\u0010\u0010\b\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\nH&J\u0010\u0010\u000b\u001a\u00020\u00032\u0006\u0010\f\u001a\u00020\nH&J\u0010\u0010\r\u001a\u00020\u00032\u0006\u0010\u000e\u001a\u00020\u000fH&J\b\u0010\u0010\u001a\u00020\u0003H&J\b\u0010\u0011\u001a\u00020\u0003H&J\u0010\u0010\u0012\u001a\u00020\u00032\u0006\u0010\u0013\u001a\u00020\u0006H&J\u0010\u0010\u0014\u001a\u00020\u00032\u0006\u0010\u0013\u001a\u00020\u0006H&J\b\u0010\u0015\u001a\u00020\u0003H&J\u0012\u0010\u0016\u001a\u00020\u00032\b\u0010\u0017\u001a\u0004\u0018\u00010\nH&J\u0010\u0010\u0018\u001a\u00020\u00032\u0006\u0010\u0013\u001a\u00020\u0006H&J\u0010\u0010\u0019\u001a\u00020\u00032\u0006\u0010\u001a\u001a\u00020\u001bH&J\u0010\u0010\u001c\u001a\u00020\u00032\u0006\u0010\u001d\u001a\u00020\u001bH&J\u0010\u0010\u001e\u001a\u00020\u00032\u0006\u0010\u001f\u001a\u00020\u0006H&J\b\u0010 \u001a\u00020\u0003H&J\b\u0010!\u001a\u00020\u0003H&J\b\u0010\"\u001a\u00020\u0003H&J\b\u0010#\u001a\u00020\u0003H&J\u0010\u0010$\u001a\u00020\u00032\u0006\u0010%\u001a\u00020\nH&¨\u0006&"}, m254d2 = {"Lcom/privacystar/core/ui/intro/verification/CodeVerification$View;", "", "disposeTimeoutDisposable", "", "enableVerifyButton", "enabled", "", "goToPreviousFragment", "populateCodeFields", "pin", "", "processResend", "numberToVerify", "registerInputObservable", "maxLength", "", "registerObservables", "resetView", "setActionButtonVisible", "visible", "setErrorMessage", "setErrorMessageAsSnackbar", "setHeaderText", "deviceNumber", "setLoadingDialog", "setTimeoutDisposable", "verificationTimeoutThreshold", "", "setupCountDownTimerForResend", "retryThrottleMs", "showResendLayout", "isVisible", "startCountDown", "startValidation", "switchVerificationToSkip", "transition", "validateCode", "inputPin", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
    /* renamed from: com.privacystar.core.ui.intro.verification.CodeVerification$View */
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/intro/verification/CodeVerification$View.class */
    public interface View {
        void disposeTimeoutDisposable();

        void enableVerifyButton(boolean z);

        void goToPreviousFragment();

        void populateCodeFields(@NotNull String str);

        void processResend(@NotNull String str);

        void registerInputObservable(int i);

        void registerObservables();

        void resetView();

        void setActionButtonVisible(boolean z);

        void setErrorMessage(boolean z);

        void setErrorMessageAsSnackbar();

        void setHeaderText(@Nullable String str);

        void setLoadingDialog(boolean z);

        void setTimeoutDisposable(long j);

        void setupCountDownTimerForResend(long j);

        void showResendLayout(boolean z);

        void startCountDown();

        void startValidation();

        void switchVerificationToSkip();

        void transition();

        void validateCode(@NotNull String str);
    }
}
