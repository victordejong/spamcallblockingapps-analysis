package com.sinch.verification.core.query;

import com.sinch.verification.core.internal.VerificationMethodType;
import com.sinch.verification.core.verification.response.VerificationResponseData;
import kotlin.Metadata;
import retrofit2.Call;
import retrofit2.b.f;
import retrofit2.b.s;
@Metadata(bv = {1, 0, 3}, d1 = {"��\"\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n\u0002\b\u0005\bf\u0018��2\u00020\u0001J\"\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\b\b\u0001\u0010\u0005\u001a\u00020\u00062\b\b\u0001\u0010\u0007\u001a\u00020\bH'J\u0018\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\b\b\u0001\u0010\n\u001a\u00020\bH'J\u0018\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\b\b\u0001\u0010\f\u001a\u00020\bH'¨\u0006\r"}, d2 = {"Lcom/sinch/verification/core/query/VerificationQueryService;", "", "queryByEndpoint", "Lretrofit2/Call;", "Lcom/sinch/verification/core/verification/response/VerificationResponseData;", "method", "Lcom/sinch/verification/core/internal/VerificationMethodType;", "number", "", "queryById", "id", "queryByReference", "reference", "verification-core_productionRelease"}, k = 1, mv = {1, 1, 16})
/* loaded from: classes4-dex2jar.jar:com/sinch/verification/core/query/VerificationQueryService.class */
public interface VerificationQueryService {
    @f(a = "verifications/{method}/number/{number}")
    Call<VerificationResponseData> queryByEndpoint(@s(a = "method") VerificationMethodType verificationMethodType, @s(a = "number") String str);

    @f(a = "verifications/id/{id}")
    Call<VerificationResponseData> queryById(@s(a = "id") String str);

    @f(a = "verifications/reference/{reference}")
    Call<VerificationResponseData> queryByReference(@s(a = "reference") String str);
}
