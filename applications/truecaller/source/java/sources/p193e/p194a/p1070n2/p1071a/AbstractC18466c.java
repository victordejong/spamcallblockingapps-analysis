package p193e.p194a.p1070n2.p1071a;

import com.huawei.hms.opendevice.AbstractC2405c;
import com.truecaller.account.network.AccountPhoneNumbersResponseDto;
import com.truecaller.account.network.AddSecondaryNumberRequestDto;
import com.truecaller.account.network.CallHeroTokenDto;
import com.truecaller.account.network.CheckCredentialsRequestDto;
import com.truecaller.account.network.CheckCredentialsResponseSuccessDto;
import com.truecaller.account.network.CompleteOnboardingDto;
import com.truecaller.account.network.DeleteSecondaryNumberRequestDto;
import com.truecaller.account.network.ExchangeCredentialsRequestDto;
import com.truecaller.account.network.ExchangeCredentialsResponseDto;
import com.truecaller.account.network.InstallationDetailsDto;
import com.truecaller.account.network.SendTokenRequestDto;
import com.truecaller.account.network.TemporaryTokenDto;
import com.truecaller.account.network.TokenResponseDto;
import com.truecaller.account.network.VerifyTokenRequestDto;
import kotlin.Metadata;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import s1.w.d;
import u3.l0;
import x3.a0;
import x3.b;
import x3.h0.a;
import x3.h0.f;
import x3.h0.o;
import x3.h0.p;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0084\u0001\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bb\u0018��2\u00020\u0001J\u001f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\b\b\u0001\u0010\u0003\u001a\u00020\u0002H'¢\u0006\u0004\b\u0006\u0010\u0007J\u001f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\b\b\u0001\u0010\u0003\u001a\u00020\u0002H'¢\u0006\u0004\b\b\u0010\u0007J\u001f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\b\b\u0001\u0010\u0003\u001a\u00020\tH'¢\u0006\u0004\b\n\u0010\u000bJ\u001f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\b\b\u0001\u0010\u0003\u001a\u00020\fH'¢\u0006\u0004\b\r\u0010\u000eJ\u0015\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u000f0\u0004H'¢\u0006\u0004\b\u0010\u0010\u0011J\u0015\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u000f0\u0004H'¢\u0006\u0004\b\u0012\u0010\u0011J\u001f\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u000f0\u00042\b\b\u0001\u0010\u0003\u001a\u00020\u0013H'¢\u0006\u0004\b\u0014\u0010\u0015J\u001f\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u00170\u00042\b\b\u0001\u0010\u0003\u001a\u00020\u0016H'¢\u0006\u0004\b\u0018\u0010\u0019J\u001f\u0010\u001d\u001a\b\u0012\u0004\u0012\u00020\u001c0\u00042\b\b\u0001\u0010\u001b\u001a\u00020\u001aH'¢\u0006\u0004\b\u001d\u0010\u001eJ\u0015\u0010 \u001a\b\u0012\u0004\u0012\u00020\u001f0\u0004H'¢\u0006\u0004\b \u0010\u0011J\u001f\u0010\"\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\b\b\u0001\u0010\u0003\u001a\u00020!H'¢\u0006\u0004\b\"\u0010#J\u001f\u0010$\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\b\b\u0001\u0010\u0003\u001a\u00020\tH'¢\u0006\u0004\b$\u0010\u000bJ\u001f\u0010'\u001a\b\u0012\u0004\u0012\u00020\u000f0\u00042\b\b\u0001\u0010&\u001a\u00020%H'¢\u0006\u0004\b'\u0010(J\u0015\u0010*\u001a\b\u0012\u0004\u0012\u00020)0\u0004H'¢\u0006\u0004\b*\u0010\u0011J\u0019\u0010-\u001a\b\u0012\u0004\u0012\u00020,0+H§@ø\u0001��¢\u0006\u0004\b-\u0010.J\u0013\u00100\u001a\u00020/H§@ø\u0001��¢\u0006\u0004\b0\u0010.\u0082\u0002\u0004\n\u0002\b\u0019¨\u00061"}, d2 = {"Le/a/n2/a/c;", "", "Lcom/truecaller/account/network/SendTokenRequestDto;", "requestDto", "Lx3/b;", "Lcom/truecaller/account/network/TokenResponseDto;", "m", "(Lcom/truecaller/account/network/SendTokenRequestDto;)Lx3/b;", "f", "Lcom/truecaller/account/network/VerifyTokenRequestDto;", AbstractC2405c.f7629a, "(Lcom/truecaller/account/network/VerifyTokenRequestDto;)Lx3/b;", "Lcom/truecaller/account/network/CompleteOnboardingDto;", "h", "(Lcom/truecaller/account/network/CompleteOnboardingDto;)Lx3/b;", "Lu3/l0;", "i", "()Lx3/b;", "deactivate", "Lcom/truecaller/account/network/InstallationDetailsDto;", "g", "(Lcom/truecaller/account/network/InstallationDetailsDto;)Lx3/b;", "Lcom/truecaller/account/network/CheckCredentialsRequestDto;", "Lcom/truecaller/account/network/CheckCredentialsResponseSuccessDto;", "l", "(Lcom/truecaller/account/network/CheckCredentialsRequestDto;)Lx3/b;", "Lcom/truecaller/account/network/ExchangeCredentialsRequestDto;", "request", "Lcom/truecaller/account/network/ExchangeCredentialsResponseDto;", "k", "(Lcom/truecaller/account/network/ExchangeCredentialsRequestDto;)Lx3/b;", "Lcom/truecaller/account/network/TemporaryTokenDto;", C22021b.f61237c, "Lcom/truecaller/account/network/AddSecondaryNumberRequestDto;", "n", "(Lcom/truecaller/account/network/AddSecondaryNumberRequestDto;)Lx3/b;", "d", "Lcom/truecaller/account/network/DeleteSecondaryNumberRequestDto;", "deleteSecondaryNumberDto", "a", "(Lcom/truecaller/account/network/DeleteSecondaryNumberRequestDto;)Lx3/b;", "Lcom/truecaller/account/network/AccountPhoneNumbersResponseDto;", "j", "Lx3/a0;", "Ljava/lang/Void;", "o", "(Ls1/w/d;)Ljava/lang/Object;", "Lcom/truecaller/account/network/CallHeroTokenDto;", "e", "account-network_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: e.a.n2.a.c */
/* loaded from: classes4-dex2jar.jar:e/a/n2/a/c.class */
public interface AbstractC18466c {
    @o("/v1/deleteSecondaryNumber")
    /* renamed from: a */
    b<l0> m14900a(@a DeleteSecondaryNumberRequestDto deleteSecondaryNumberRequestDto);

    @f("/v1/token/crossDomain")
    /* renamed from: b */
    b<TemporaryTokenDto> m14899b();

    @o("/v1/verifyOnboardingOtp")
    /* renamed from: c */
    b<TokenResponseDto> m14898c(@a VerifyTokenRequestDto verifyTokenRequestDto);

    @o("/v1/verifySecondaryNumber")
    /* renamed from: d */
    b<TokenResponseDto> m14897d(@a VerifyTokenRequestDto verifyTokenRequestDto);

    @o("/v1/deactivate")
    b<l0> deactivate();

    @o("/v1/callhero/token")
    /* renamed from: e */
    Object m14896e(d<? super CallHeroTokenDto> dVar);

    @o("/v3/sendOnboardingOtp")
    /* renamed from: f */
    b<TokenResponseDto> m14895f(@a SendTokenRequestDto sendTokenRequestDto);

    @p("/v1/installation")
    /* renamed from: g */
    b<l0> m14894g(@a InstallationDetailsDto installationDetailsDto);

    @o("/v1/completeOnboarding")
    /* renamed from: h */
    b<TokenResponseDto> m14893h(@a CompleteOnboardingDto completeOnboardingDto);

    @o("/v1/deactivateAndDelete")
    /* renamed from: i */
    b<l0> m14892i();

    @f("/v1/phoneNumbers")
    /* renamed from: j */
    b<AccountPhoneNumbersResponseDto> m14891j();

    @o("/v1/credentials/exchange")
    /* renamed from: k */
    b<ExchangeCredentialsResponseDto> m14890k(@a ExchangeCredentialsRequestDto exchangeCredentialsRequestDto);

    @o("/v2.2/credentials/check")
    /* renamed from: l */
    b<CheckCredentialsResponseSuccessDto> m14889l(@a CheckCredentialsRequestDto checkCredentialsRequestDto);

    @o("/v2/sendOnboardingOtp")
    /* renamed from: m */
    b<TokenResponseDto> m14888m(@a SendTokenRequestDto sendTokenRequestDto);

    @o("/v1/addSecondaryNumber")
    /* renamed from: n */
    b<TokenResponseDto> m14887n(@a AddSecondaryNumberRequestDto addSecondaryNumberRequestDto);

    @o("/v1/backup")
    /* renamed from: o */
    Object m14886o(d<? super a0<Void>> dVar);
}
