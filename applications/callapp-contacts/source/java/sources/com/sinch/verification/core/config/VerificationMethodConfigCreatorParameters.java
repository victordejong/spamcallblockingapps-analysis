package com.sinch.verification.core.config;

import com.mopub.common.AdType;
import com.sinch.verification.core.verification.VerificationLanguage;
import java.util.List;
import kotlin.Metadata;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��(\n\u0002\u0018\u0002\n��\n\u0002\u0010��\n��\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\bf\u0018��*\u0004\b��\u0010\u00012\u00020\u0002J\u001b\u0010\u0003\u001a\u00028��2\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004H&¢\u0006\u0002\u0010\u0006J\u0017\u0010\u0007\u001a\u00028��2\b\u0010\u0007\u001a\u0004\u0018\u00010\bH&¢\u0006\u0002\u0010\tJ\u0015\u0010\n\u001a\u00028��2\u0006\u0010\n\u001a\u00020\u000bH&¢\u0006\u0002\u0010\fJ\u0017\u0010\r\u001a\u00028��2\b\u0010\r\u001a\u0004\u0018\u00010\bH&¢\u0006\u0002\u0010\t¨\u0006\u000e"}, m4298d2 = {"Lcom/sinch/verification/core/config/VerificationMethodConfigCreatorParameters;", "Creator", "", "acceptedLanguages", "", "Lcom/sinch/verification/core/verification/VerificationLanguage;", "(Ljava/util/List;)Ljava/lang/Object;", AdType.CUSTOM, "", "(Ljava/lang/String;)Ljava/lang/Object;", "honourEarlyReject", "", "(Z)Ljava/lang/Object;", "reference", "verification-core_productionRelease"}, m4297k = 1, m4296mv = {1, 1, 16})
/* loaded from: classes4-dex2jar.jar:com/sinch/verification/core/config/VerificationMethodConfigCreatorParameters.class */
public interface VerificationMethodConfigCreatorParameters<Creator> {
    Creator acceptedLanguages(List<VerificationLanguage> list);

    Creator custom(String str);

    Creator honourEarlyReject(boolean z);

    Creator reference(String str);
}
