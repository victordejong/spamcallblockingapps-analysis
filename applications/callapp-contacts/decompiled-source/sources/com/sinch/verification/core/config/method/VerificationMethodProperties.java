package com.sinch.verification.core.config.method;

import com.mopub.common.AdType;
import com.sinch.verification.core.verification.VerificationLanguage;
import java.util.List;
import kotlin.Metadata;
@Metadata(bv = {1, 0, 3}, d1 = {"��&\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0007\bf\u0018��2\u00020\u0001R\u0018\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0005\u0010\u0006R\u0014\u0010\u0007\u001a\u0004\u0018\u00010\bX¦\u0004¢\u0006\u0006\u001a\u0004\b\t\u0010\nR\u0012\u0010\u000b\u001a\u00020\fX¦\u0004¢\u0006\u0006\u001a\u0004\b\r\u0010\u000eR\u0012\u0010\u000f\u001a\u00020\bX¦\u0004¢\u0006\u0006\u001a\u0004\b\u0010\u0010\nR\u0014\u0010\u0011\u001a\u0004\u0018\u00010\bX¦\u0004¢\u0006\u0006\u001a\u0004\b\u0012\u0010\n¨\u0006\u0013"}, d2 = {"Lcom/sinch/verification/core/config/method/VerificationMethodProperties;", "", "acceptedLanguages", "", "Lcom/sinch/verification/core/verification/VerificationLanguage;", "getAcceptedLanguages", "()Ljava/util/List;", AdType.CUSTOM, "", "getCustom", "()Ljava/lang/String;", "honourEarlyReject", "", "getHonourEarlyReject", "()Z", "number", "getNumber", "reference", "getReference", "verification-core_productionRelease"}, k = 1, mv = {1, 1, 16})
/* loaded from: classes4-dex2jar.jar:com/sinch/verification/core/config/method/VerificationMethodProperties.class */
public interface VerificationMethodProperties {
    List<VerificationLanguage> getAcceptedLanguages();

    String getCustom();

    boolean getHonourEarlyReject();

    String getNumber();

    String getReference();
}
