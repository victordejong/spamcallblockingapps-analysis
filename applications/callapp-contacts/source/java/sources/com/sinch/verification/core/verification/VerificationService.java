package com.sinch.verification.core.verification;

import com.sinch.verification.core.verification.model.VerificationData;
import com.sinch.verification.core.verification.response.VerificationResponseData;
import kotlin.Metadata;
import retrofit2.Call;
import retrofit2.p606b.AbstractC21042a;
import retrofit2.p606b.AbstractC21047f;
import retrofit2.p606b.AbstractC21057p;
import retrofit2.p606b.AbstractC21060s;
import retrofit2.p606b.AbstractC21066y;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\"\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n��\n\u0002\u0018\u0002\n\u0002\b\u0005\bf\u0018��2\u00020\u0001J\"\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\b\b\u0001\u0010\u0005\u001a\u00020\u00062\b\b\u0001\u0010\u0007\u001a\u00020\bH'J\"\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\b\b\u0001\u0010\n\u001a\u00020\u00062\b\b\u0001\u0010\u0007\u001a\u00020\bH'J\u0018\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\b\b\u0001\u0010\f\u001a\u00020\u0006H'¨\u0006\r"}, m4298d2 = {"Lcom/sinch/verification/core/verification/VerificationService;", "", "verifyById", "Lretrofit2/Call;", "Lcom/sinch/verification/core/verification/response/VerificationResponseData;", "subVerificationId", "", "data", "Lcom/sinch/verification/core/verification/model/VerificationData;", "verifyNumber", "number", "verifySeamless", "url", "verification-core_productionRelease"}, m4297k = 1, m4296mv = {1, 1, 16})
/* loaded from: classes4-dex2jar.jar:com/sinch/verification/core/verification/VerificationService.class */
public interface VerificationService {
    @AbstractC21057p(m78a = "verifications/id/{subVerificationId}")
    Call<VerificationResponseData> verifyById(@AbstractC21060s(m74a = "subVerificationId") String str, @AbstractC21042a VerificationData verificationData);

    @AbstractC21057p(m78a = "verifications/number/{number}")
    Call<VerificationResponseData> verifyNumber(@AbstractC21060s(m74a = "number") String str, @AbstractC21042a VerificationData verificationData);

    @AbstractC21047f
    Call<VerificationResponseData> verifySeamless(@AbstractC21066y String str);
}
