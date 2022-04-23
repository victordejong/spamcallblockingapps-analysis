package com.privacystar.core.p011ui.intro.verification;

import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
@Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0004\u0018��2\u00020\u0001:\u0002\u0003\u0004B\u0005¢\u0006\u0002\u0010\u0002¨\u0006\u0005"}, m254d2 = {"Lcom/privacystar/core/ui/intro/verification/NumberVerification;", "", "()V", "Manager", "View", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
/* renamed from: com.privacystar.core.ui.intro.verification.NumberVerification */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/intro/verification/NumberVerification.class */
public final class NumberVerification {

    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\u0012\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010\u000b\n\u0002\b\u0005\bf\u0018��2\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H&J\b\u0010\u0004\u001a\u00020\u0003H&J\b\u0010\u0005\u001a\u00020\u0003H&J\b\u0010\u0006\u001a\u00020\u0003H&J\b\u0010\u0007\u001a\u00020\u0003H&¨\u0006\b"}, m254d2 = {"Lcom/privacystar/core/ui/intro/verification/NumberVerification$Manager;", "", "canAutoTransition", "", "canGoBack", "shouldLimitPhoneNumberInput", "shouldShowImage", "shouldShowSnackbarMessage", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
    /* renamed from: com.privacystar.core.ui.intro.verification.NumberVerification$Manager */
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/intro/verification/NumberVerification$Manager.class */
    public interface Manager {
        boolean canAutoTransition();

        boolean canGoBack();

        boolean shouldLimitPhoneNumberInput();

        boolean shouldShowImage();

        boolean shouldShowSnackbarMessage();
    }

    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\"\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\t\bf\u0018��2\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H&J\u0010\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u0006H&J\u0010\u0010\u0007\u001a\u00020\u00032\u0006\u0010\b\u001a\u00020\tH&J\u0018\u0010\n\u001a\u00020\u00032\u0006\u0010\u000b\u001a\u00020\u00062\u0006\u0010\f\u001a\u00020\u0006H&J\u0010\u0010\r\u001a\u00020\u00032\u0006\u0010\u000e\u001a\u00020\u0006H&J\b\u0010\u000f\u001a\u00020\u0003H&J\u0010\u0010\u0010\u001a\u00020\u00032\u0006\u0010\u000e\u001a\u00020\u0006H&J\b\u0010\u0011\u001a\u00020\u0003H&¨\u0006\u0012"}, m254d2 = {"Lcom/privacystar/core/ui/intro/verification/NumberVerification$View;", "", "clearTextField", "", "setInputEnabled", "enabled", "", "setNumberFieldText", "deviceNumber", "", "setupNumberFieldAndClickListeners", "shouldLimitPhoneNumberInput", "shouldTriggerNextOnKeyboard", "showImage", "visible", "showValidationErrorAsSnackbar", "showValidationErrorAsText", "transition", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
    /* renamed from: com.privacystar.core.ui.intro.verification.NumberVerification$View */
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/intro/verification/NumberVerification$View.class */
    public interface View {
        void clearTextField();

        void setInputEnabled(boolean z);

        void setNumberFieldText(@NotNull String str);

        void setupNumberFieldAndClickListeners(boolean z, boolean z2);

        void showImage(boolean z);

        void showValidationErrorAsSnackbar();

        void showValidationErrorAsText(boolean z);

        void transition();
    }
}
