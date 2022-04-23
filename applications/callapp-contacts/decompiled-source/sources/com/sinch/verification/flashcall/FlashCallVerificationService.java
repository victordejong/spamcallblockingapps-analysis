package com.sinch.verification.flashcall;

import com.sinch.verification.core.verification.VerificationService;
import com.sinch.verification.flashcall.initialization.FlashCallInitializationResponseData;
import com.sinch.verification.flashcall.initialization.FlashCallVerificationInitializationData;
import com.sinch.verification.flashcall.report.FlashCallReportData;
import kotlin.Metadata;
import kotlin.v;
import retrofit2.Call;
import retrofit2.b.a;
import retrofit2.b.n;
import retrofit2.b.o;
import retrofit2.b.s;
@Metadata(bv = {1, 0, 3}, d1 = {"��*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n��\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n��\bf\u0018��2\u00020\u0001J\u0018\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\b\b\u0001\u0010\u0005\u001a\u00020\u0006H'J\"\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\b0\u00032\b\b\u0001\u0010\t\u001a\u00020\n2\b\b\u0001\u0010\u0005\u001a\u00020\u000bH'¨\u0006\f"}, d2 = {"Lcom/sinch/verification/flashcall/FlashCallVerificationService;", "Lcom/sinch/verification/core/verification/VerificationService;", "initializeVerification", "Lretrofit2/Call;", "Lcom/sinch/verification/flashcall/initialization/FlashCallInitializationResponseData;", "data", "Lcom/sinch/verification/flashcall/initialization/FlashCallVerificationInitializationData;", "reportVerification", "", "number", "", "Lcom/sinch/verification/flashcall/report/FlashCallReportData;", "verification-flashcall_productionRelease"}, k = 1, mv = {1, 1, 16})
/* loaded from: classes4-dex2jar.jar:com/sinch/verification/flashcall/FlashCallVerificationService.class */
public interface FlashCallVerificationService extends VerificationService {
    @o(a = "verifications")
    Call<FlashCallInitializationResponseData> initializeVerification(@a FlashCallVerificationInitializationData flashCallVerificationInitializationData);

    @n(a = "verifications/number/{number}")
    Call<v> reportVerification(@s(a = "number") String str, @a FlashCallReportData flashCallReportData);
}
