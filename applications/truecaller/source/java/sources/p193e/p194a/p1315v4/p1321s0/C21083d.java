package p193e.p194a.p1315v4.p1321s0;

import com.truecaller.android.sdk.oAuth.OAuthResponse;
import com.truecaller.android.sdk.oAuth.TcOAuthData;
import com.truecaller.android.sdk.oAuth.TcOAuthError;
import com.truecaller.android.sdk.oAuth.clients.PartnerInformationV2;
import com.truecaller.sdk.oAuth.networking.data.AuthCodeRequest;
import com.truecaller.sdk.oAuth.networking.data.AuthCodeResponse;
import com.truecaller.sdk.oAuth.networking.data.PartnerDetailsResponse;
import java.util.List;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1315v4.p1321s0.p1323l.AbstractC21098b;
import p193e.p194a.p1315v4.p1321s0.p1323l.p1324e.AbstractC21104a;
import q3.a.i0;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.sdk.oAuth.NativeOAuthSdkPartnerImpl$enqueueGenerateAuthCode$1", f = "NativeOAuthSdkPartner.kt", l = {229}, m = "invokeSuspend")
/* renamed from: e.a.v4.s0.d */
/* loaded from: classes12-dex2jar.jar:e/a/v4/s0/d.class */
public final class C21083d extends i implements p<i0, d<? super s>, Object> {

    /* renamed from: e */
    public int f59184e;

    /* renamed from: f */
    public final /* synthetic */ C21084e f59185f;

    /* renamed from: g */
    public final /* synthetic */ PartnerInformationV2 f59186g;

    /* renamed from: h */
    public final /* synthetic */ PartnerDetailsResponse f59187h;

    /* renamed from: i */
    public final /* synthetic */ String f59188i;

    /* renamed from: j */
    public final /* synthetic */ List f59189j;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C21083d(C21084e c21084e, PartnerInformationV2 partnerInformationV2, PartnerDetailsResponse partnerDetailsResponse, String str, List list, d dVar) {
        super(2, dVar);
        this.f59185f = c21084e;
        this.f59186g = partnerInformationV2;
        this.f59187h = partnerDetailsResponse;
        this.f59188i = str;
        this.f59189j = list;
    }

    /* renamed from: i */
    public final d<s> m10370i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C21083d(this.f59185f, this.f59186g, this.f59187h, this.f59188i, this.f59189j, dVar);
    }

    /* renamed from: k */
    public final Object m10369k(Object obj, Object obj2) {
        return m10370i(obj, (d) obj2).m10368s(s.a);
    }

    /* renamed from: s */
    public final Object m10368s(Object obj) {
        a aVar = a.a;
        int i = this.f59184e;
        if (i == 0) {
            C25225a.m3932a3(obj);
            String clientId = this.f59186g.getClientId();
            l.d(clientId, "partnerInfo.clientId");
            String requestId = this.f59187h.getRequestId();
            String state = this.f59186g.getState();
            l.d(state, "partnerInfo.state");
            String codeChallenge = this.f59186g.getCodeChallenge();
            l.d(codeChallenge, "partnerInfo.codeChallenge");
            AuthCodeRequest authCodeRequest = new AuthCodeRequest(requestId, clientId, null, codeChallenge, null, this.f59188i, state, 20, null);
            AbstractC21098b abstractC21098b = this.f59185f.f59198q;
            this.f59184e = 1;
            Object mo10329a = abstractC21098b.mo10329a(authCodeRequest, this);
            obj = mo10329a;
            if (mo10329a == aVar) {
                return aVar;
            }
        } else if (i != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            C25225a.m3932a3(obj);
        }
        AbstractC21104a abstractC21104a = (AbstractC21104a) obj;
        if (abstractC21104a instanceof AbstractC21104a.C21113b) {
            AbstractC21104a.C21113b c21113b = (AbstractC21104a.C21113b) abstractC21104a;
            if (!l.a(((AuthCodeResponse) c21113b.f59248a).getPackageName(), this.f59186g.getPackageName()) || !l.a(((AuthCodeResponse) c21113b.f59248a).getFingerprint(), this.f59186g.getAppFingerprint())) {
                this.f59185f.f59193l = new OAuthResponse.FailureResponse(TcOAuthError.InvalidPartnerError.f10020c);
            } else {
                this.f59185f.f59193l = new OAuthResponse.SuccessResponse(new TcOAuthData(((AuthCodeResponse) c21113b.f59248a).getCode(), ((AuthCodeResponse) c21113b.f59248a).getState(), this.f59189j));
            }
            C21084e.m10354z(this.f59185f);
        } else {
            C21084e.m10355y(this.f59185f, abstractC21104a);
        }
        return s.a;
    }
}
