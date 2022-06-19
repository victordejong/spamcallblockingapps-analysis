package p193e.p194a.p1315v4.p1321s0.p1323l;

import com.truecaller.android.sdk.oAuth.clients.PartnerInformationV2;
import com.truecaller.sdk.oAuth.networking.ErrorType;
import com.truecaller.sdk.oAuth.networking.data.AuthCodeRequest;
import com.truecaller.sdk.oAuth.networking.data.AuthCodeResponse;
import com.truecaller.sdk.oAuth.networking.data.PartnerDetailsResponse;
import com.truecaller.sdk.oAuth.networking.data.RejectRequest;
import javax.inject.Inject;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1049l4.C17422k;
import p193e.p194a.p1315v4.p1321s0.p1323l.p1324e.AbstractC21104a;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.l;
import u3.l0;
import x3.a0;
/* renamed from: e.a.v4.s0.l.c */
/* loaded from: classes12-dex2jar.jar:e/a/v4/s0/l/c.class */
public final class C21099c implements AbstractC21098b {

    /* renamed from: a */
    public final AbstractC21097a f59224a;

    @e(c = "com.truecaller.sdk.oAuth.networking.OAuthNetworkManagerImpl$generateAuthCode$3", f = "OAuthNetworkManager.kt", l = {51}, m = "invokeSuspend")
    /* renamed from: e.a.v4.s0.l.c$a */
    /* loaded from: classes12-dex2jar.jar:e/a/v4/s0/l/c$a.class */
    public static final class C21100a extends i implements l<d<? super a0<AuthCodeResponse>>, Object> {

        /* renamed from: e */
        public int f59225e;

        /* renamed from: g */
        public final /* synthetic */ AuthCodeRequest f59227g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C21100a(AuthCodeRequest authCodeRequest, d dVar) {
            super(1, dVar);
            C21099c.this = r5;
            this.f59227g = authCodeRequest;
        }

        /* renamed from: d */
        public final Object m10326d(Object obj) {
            d dVar = (d) obj;
            s1.z.c.l.e(dVar, "completion");
            return new C21100a(this.f59227g, dVar).m10324s(s.a);
        }

        /* renamed from: l */
        public final d<s> m10325l(d<?> dVar) {
            s1.z.c.l.e(dVar, "completion");
            return new C21100a(this.f59227g, dVar);
        }

        /* renamed from: s */
        public final Object m10324s(Object obj) {
            a aVar = a.a;
            int i = this.f59225e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                AbstractC21097a abstractC21097a = C21099c.this.f59224a;
                AuthCodeRequest authCodeRequest = this.f59227g;
                this.f59225e = 1;
                Object m10332a = abstractC21097a.m10332a(authCodeRequest, this);
                obj = m10332a;
                if (m10332a == aVar) {
                    return aVar;
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C25225a.m3932a3(obj);
            }
            return obj;
        }
    }

    @e(c = "com.truecaller.sdk.oAuth.networking.OAuthNetworkManagerImpl$getConsentScreenInfo$3", f = "OAuthNetworkManager.kt", l = {42}, m = "invokeSuspend")
    /* renamed from: e.a.v4.s0.l.c$b */
    /* loaded from: classes12-dex2jar.jar:e/a/v4/s0/l/c$b.class */
    public static final class C21101b extends i implements l<d<? super a0<PartnerDetailsResponse>>, Object> {

        /* renamed from: e */
        public int f59228e;

        /* renamed from: g */
        public final /* synthetic */ PartnerInformationV2 f59230g;

        /* renamed from: h */
        public final /* synthetic */ String f59231h;

        /* renamed from: i */
        public final /* synthetic */ String f59232i;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C21101b(PartnerInformationV2 partnerInformationV2, String str, String str2, d dVar) {
            super(1, dVar);
            C21099c.this = r5;
            this.f59230g = partnerInformationV2;
            this.f59231h = str;
            this.f59232i = str2;
        }

        /* renamed from: d */
        public final Object m10323d(Object obj) {
            return m10322l((d) obj).m10321s(s.a);
        }

        /* renamed from: l */
        public final d<s> m10322l(d<?> dVar) {
            s1.z.c.l.e(dVar, "completion");
            return new C21101b(this.f59230g, this.f59231h, this.f59232i, dVar);
        }

        /* renamed from: s */
        public final Object m10321s(Object obj) {
            a aVar = a.a;
            int i = this.f59228e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                AbstractC21097a abstractC21097a = C21099c.this.f59224a;
                String clientId = this.f59230g.getClientId();
                s1.z.c.l.d(clientId, "partnerInformation.clientId");
                String str = this.f59231h;
                String appFingerprint = this.f59230g.getAppFingerprint();
                s1.z.c.l.d(appFingerprint, "partnerInformation.appFingerprint");
                String str2 = this.f59232i;
                String trueSdkVersion = this.f59230g.getTrueSdkVersion();
                s1.z.c.l.d(trueSdkVersion, "partnerInformation.trueSdkVersion");
                String sdkVariant = this.f59230g.getSdkVariant();
                if (sdkVariant == null) {
                    sdkVariant = "";
                }
                s1.z.c.l.d(sdkVariant, "partnerInformation.sdkVariant ?: \"\"");
                String sdkVariantVersion = this.f59230g.getSdkVariantVersion();
                if (sdkVariantVersion == null) {
                    sdkVariantVersion = "";
                }
                s1.z.c.l.d(sdkVariantVersion, "partnerInformation.sdkVariantVersion ?: \"\"");
                this.f59228e = 1;
                Object m10330c = abstractC21097a.m10330c(clientId, str, appFingerprint, str2, trueSdkVersion, sdkVariant, sdkVariantVersion, this);
                obj = m10330c;
                if (m10330c == aVar) {
                    return aVar;
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C25225a.m3932a3(obj);
            }
            return obj;
        }
    }

    @e(c = "com.truecaller.sdk.oAuth.networking.OAuthNetworkManagerImpl$rejectAuthorizationRequest$3", f = "OAuthNetworkManager.kt", l = {59}, m = "invokeSuspend")
    /* renamed from: e.a.v4.s0.l.c$c */
    /* loaded from: classes12-dex2jar.jar:e/a/v4/s0/l/c$c.class */
    public static final class C21102c extends i implements l<d<? super a0<l0>>, Object> {

        /* renamed from: e */
        public int f59233e;

        /* renamed from: g */
        public final /* synthetic */ RejectRequest f59235g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C21102c(RejectRequest rejectRequest, d dVar) {
            super(1, dVar);
            C21099c.this = r5;
            this.f59235g = rejectRequest;
        }

        /* renamed from: d */
        public final Object m10320d(Object obj) {
            d dVar = (d) obj;
            s1.z.c.l.e(dVar, "completion");
            return new C21102c(this.f59235g, dVar).m10318s(s.a);
        }

        /* renamed from: l */
        public final d<s> m10319l(d<?> dVar) {
            s1.z.c.l.e(dVar, "completion");
            return new C21102c(this.f59235g, dVar);
        }

        /* renamed from: s */
        public final Object m10318s(Object obj) {
            a aVar = a.a;
            int i = this.f59233e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                AbstractC21097a abstractC21097a = C21099c.this.f59224a;
                RejectRequest rejectRequest = this.f59235g;
                this.f59233e = 1;
                Object m10331b = abstractC21097a.m10331b(rejectRequest, this);
                obj = m10331b;
                if (m10331b == aVar) {
                    return aVar;
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C25225a.m3932a3(obj);
            }
            return obj;
        }
    }

    @Inject
    public C21099c(AbstractC21097a abstractC21097a) {
        s1.z.c.l.e(abstractC21097a, "oAuthApiService");
        this.f59224a = abstractC21097a;
    }

    @Override // p193e.p194a.p1315v4.p1321s0.p1323l.AbstractC21098b
    /* renamed from: a */
    public Object mo10329a(AuthCodeRequest authCodeRequest, d<? super AbstractC21104a<AuthCodeResponse>> dVar) {
        return C17422k.m16107K(ErrorType.TYPE_API_OAUTH, "generateAuthCode", new C21100a(authCodeRequest, null), dVar);
    }

    @Override // p193e.p194a.p1315v4.p1321s0.p1323l.AbstractC21098b
    /* renamed from: b */
    public Object mo10328b(RejectRequest rejectRequest, d<? super AbstractC21104a<l0>> dVar) {
        return C17422k.m16107K(ErrorType.TYPE_API_INTERNAL, "rejectAuthorizationRequest", new C21102c(rejectRequest, null), dVar);
    }

    @Override // p193e.p194a.p1315v4.p1321s0.p1323l.AbstractC21098b
    /* renamed from: c */
    public Object mo10327c(PartnerInformationV2 partnerInformationV2, String str, String str2, d<? super AbstractC21104a<PartnerDetailsResponse>> dVar) {
        return C17422k.m16107K(ErrorType.TYPE_API_INTERNAL, "getConsentScreenInfo", new C21101b(partnerInformationV2, str, str2, null), dVar);
    }
}
