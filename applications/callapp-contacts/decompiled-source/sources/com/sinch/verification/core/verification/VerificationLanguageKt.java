package com.sinch.verification.core.verification;

import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.p;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0010\n��\n\u0002\u0010\u000e\n\u0002\u0010 \n\u0002\u0018\u0002\n��\u001a\u0012\u0010��\u001a\u0004\u0018\u00010\u0001*\b\u0012\u0004\u0012\u00020\u00030\u0002¨\u0006\u0004"}, d2 = {"asLanguagesString", "", "", "Lcom/sinch/verification/core/verification/VerificationLanguage;", "verification-core_productionRelease"}, k = 2, mv = {1, 1, 16})
/* loaded from: classes4-dex2jar.jar:com/sinch/verification/core/verification/VerificationLanguageKt.class */
public final class VerificationLanguageKt {
    public static final String asLanguagesString(List<VerificationLanguage> asLanguagesString) {
        p.c(asLanguagesString, "$this$asLanguagesString");
        if (asLanguagesString.isEmpty()) {
            return null;
        }
        String str = "";
        for (VerificationLanguage verificationLanguage : asLanguagesString) {
            str = str + ',' + verificationLanguage.getHttpHeader();
        }
        return kotlin.h.p.a(str, (CharSequence) ",");
    }
}
