package com.sinch.verification.core.verification;

import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.C18524p;
import kotlin.p532h.C18425p;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u0010\n��\n\u0002\u0010\u000e\n\u0002\u0010 \n\u0002\u0018\u0002\n��\u001a\u0012\u0010��\u001a\u0004\u0018\u00010\u0001*\b\u0012\u0004\u0012\u00020\u00030\u0002¨\u0006\u0004"}, m4298d2 = {"asLanguagesString", "", "", "Lcom/sinch/verification/core/verification/VerificationLanguage;", "verification-core_productionRelease"}, m4297k = 2, m4296mv = {1, 1, 16})
/* loaded from: classes4-dex2jar.jar:com/sinch/verification/core/verification/VerificationLanguageKt.class */
public final class VerificationLanguageKt {
    public static final String asLanguagesString(List<VerificationLanguage> asLanguagesString) {
        C18524p.m3841c(asLanguagesString, "$this$asLanguagesString");
        if (asLanguagesString.isEmpty()) {
            return null;
        }
        Iterator<T> it2 = asLanguagesString.iterator();
        String str = "";
        while (true) {
            String str2 = str;
            if (!it2.hasNext()) {
                return C18425p.m3931a(str2, (CharSequence) ",");
            }
            VerificationLanguage verificationLanguage = (VerificationLanguage) it2.next();
            str = str2 + ',' + verificationLanguage.getHttpHeader();
        }
    }
}
