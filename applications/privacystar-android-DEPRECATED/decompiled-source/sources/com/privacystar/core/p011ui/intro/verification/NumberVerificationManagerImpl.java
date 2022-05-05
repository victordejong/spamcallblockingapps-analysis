package com.privacystar.core.p011ui.intro.verification;

import com.privacystar.core.p011ui.intro.verification.NumberVerification;
import kotlin.Metadata;
@Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0005\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\b\u0010\u0003\u001a\u00020\u0004H\u0016J\b\u0010\u0005\u001a\u00020\u0004H\u0016J\b\u0010\u0006\u001a\u00020\u0004H\u0016J\b\u0010\u0007\u001a\u00020\u0004H\u0016J\b\u0010\b\u001a\u00020\u0004H\u0016¨\u0006\t"}, m254d2 = {"Lcom/privacystar/core/ui/intro/verification/NumberVerificationManagerImpl;", "Lcom/privacystar/core/ui/intro/verification/NumberVerification$Manager;", "()V", "canAutoTransition", "", "canGoBack", "shouldLimitPhoneNumberInput", "shouldShowImage", "shouldShowSnackbarMessage", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
/* renamed from: com.privacystar.core.ui.intro.verification.NumberVerificationManagerImpl */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/intro/verification/NumberVerificationManagerImpl.class */
public final class NumberVerificationManagerImpl implements NumberVerification.Manager {
    public static final NumberVerificationManagerImpl INSTANCE = new NumberVerificationManagerImpl();

    private NumberVerificationManagerImpl() {
    }

    @Override // com.privacystar.core.p011ui.intro.verification.NumberVerification.Manager
    public boolean canAutoTransition() {
        return true;
    }

    @Override // com.privacystar.core.p011ui.intro.verification.NumberVerification.Manager
    public boolean canGoBack() {
        return false;
    }

    @Override // com.privacystar.core.p011ui.intro.verification.NumberVerification.Manager
    public boolean shouldLimitPhoneNumberInput() {
        return false;
    }

    @Override // com.privacystar.core.p011ui.intro.verification.NumberVerification.Manager
    public boolean shouldShowImage() {
        return false;
    }

    @Override // com.privacystar.core.p011ui.intro.verification.NumberVerification.Manager
    public boolean shouldShowSnackbarMessage() {
        return false;
    }
}
