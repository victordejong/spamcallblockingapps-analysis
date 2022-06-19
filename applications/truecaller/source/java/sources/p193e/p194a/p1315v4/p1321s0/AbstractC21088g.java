package p193e.p194a.p1315v4.p1321s0;

import android.os.Bundle;
import com.mopub.common.Constants;
import com.truecaller.android.sdk.TrueProfile;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1049l4.C17422k;
import p193e.p194a.p1315v4.AbstractC21040l;
import p193e.p194a.p1315v4.C21154v;
import p193e.p194a.p1315v4.p1317p0.AbstractC21061b;
import p193e.p194a.p1315v4.p1317p0.C21063c;
import p193e.p194a.p1315v4.p1321s0.p1326m.p1327a.AbstractC21121f;
import p193e.p194a.p372b0.p406e.p409r.AbstractC8438a;
import p193e.p194a.p372b0.p425o.AbstractC8541a;
import s1.g;
import s1.z.b.a;
import s1.z.c.l;
import s1.z.c.m;
/* renamed from: e.a.v4.s0.g */
/* loaded from: classes12-dex2jar.jar:e/a/v4/s0/g.class */
public abstract class AbstractC21088g implements AbstractC21087f {

    /* renamed from: a */
    public final g f59206a = C25225a.m3978P1(new C21089a());

    /* renamed from: b */
    public AbstractC21121f f59207b;

    /* renamed from: c */
    public boolean f59208c;

    /* renamed from: d */
    public final Bundle f59209d;

    /* renamed from: e */
    public final AbstractC8541a f59210e;

    /* renamed from: f */
    public final AbstractC8438a f59211f;

    /* renamed from: g */
    public final C21154v f59212g;

    /* renamed from: h */
    public final AbstractC21040l f59213h;

    /* renamed from: e.a.v4.s0.g$a */
    /* loaded from: classes12-dex2jar.jar:e/a/v4/s0/g$a.class */
    public static final class C21089a extends m implements a<C21063c> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C21089a() {
            super(0);
            AbstractC21088g.this = r4;
        }

        public Object invoke() {
            AbstractC21088g abstractC21088g = AbstractC21088g.this;
            return new C21063c(abstractC21088g.f59213h, abstractC21088g);
        }
    }

    public AbstractC21088g(Bundle bundle, AbstractC8541a abstractC8541a, AbstractC8438a abstractC8438a, C21154v c21154v, AbstractC21040l abstractC21040l) {
        l.e(bundle, "extras");
        l.e(abstractC8541a, "coreSettings");
        l.e(abstractC8438a, "accountSettings");
        l.e(c21154v, "sdkAccountManager");
        l.e(abstractC21040l, "eventsTrackerHolder");
        this.f59209d = bundle;
        this.f59210e = abstractC8541a;
        this.f59211f = abstractC8438a;
        this.f59212g = c21154v;
        this.f59213h = abstractC21040l;
    }

    @Override // p193e.p194a.p1315v4.p1321s0.AbstractC21087f
    /* renamed from: c */
    public void mo10339c() {
        this.f59207b = null;
    }

    @Override // p193e.p194a.p1315v4.p1321s0.AbstractC21087f
    /* renamed from: g */
    public TrueProfile mo10338g() {
        return C17422k.m16116B(this.f59210e, this.f59211f);
    }

    @Override // p193e.p194a.p1315v4.p1317p0.AbstractC21061b.AbstractC21062a
    public String getPlatform() {
        return Constants.ANDROID_PLATFORM;
    }

    @Override // p193e.p194a.p1315v4.p1317p0.AbstractC21061b.AbstractC21062a
    /* renamed from: m */
    public String mo10337m() {
        return this.f59209d.getInt("tc_oauth_extras_orientation") == 2 ? "landscape" : "portrait";
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0063  */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0076  */
    @Override // p193e.p194a.p1315v4.p1321s0.AbstractC21087f
    /* renamed from: o */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void mo10336o(p193e.p194a.p1315v4.p1321s0.p1326m.p1327a.AbstractC21121f r8) {
        /*
            r7 = this;
            r0 = r8
            java.lang.String r1 = "presenterView"
            s1.z.c.l.e(r0, r1)
            r0 = r7
            r1 = r8
            r0.f59207b = r1
            r0 = r7
            e.a.v4.p0.b r0 = r0.m10334x()
            r0.mo10379a()
            r0 = r7
            e.a.v4.s0.e r0 = (p193e.p194a.p1315v4.p1321s0.C21084e) r0
            r9 = r0
            r0 = r9
            com.truecaller.android.sdk.oAuth.clients.PartnerInformationV2 r0 = r0.f59191j
            r10 = r0
            r0 = r10
            if (r0 != 0) goto L33
            r0 = r9
            com.truecaller.android.sdk.oAuth.OAuthResponse$FailureResponse r1 = new com.truecaller.android.sdk.oAuth.OAuthResponse$FailureResponse
            r2 = r1
            com.truecaller.android.sdk.oAuth.TcOAuthError$InvalidPartnerError r3 = com.truecaller.android.sdk.oAuth.TcOAuthError.InvalidPartnerError.f10020c
            r2.<init>(r3)
            r0.f59193l = r1
            goto L5b
        L33:
            r0 = r10
            java.lang.String r0 = r0.getTrueSdkVersion()
            r10 = r0
            r0 = r10
            java.lang.String r1 = "partnerInformation.trueSdkVersion"
            s1.z.c.l.d(r0, r1)
            r0 = r10
            java.lang.String r1 = "3.0.0"
            int r0 = r0.compareTo(r1)
            if (r0 < 0) goto L4d
            r0 = 1
            r11 = r0
            goto L5e
        L4d:
            r0 = r9
            com.truecaller.android.sdk.oAuth.OAuthResponse$FailureResponse r1 = new com.truecaller.android.sdk.oAuth.OAuthResponse$FailureResponse
            r2 = r1
            com.truecaller.android.sdk.oAuth.TcOAuthError$OldSdkError r3 = com.truecaller.android.sdk.oAuth.TcOAuthError.OldSdkError.f10021c
            r2.<init>(r3)
            r0.f59193l = r1
        L5b:
            r0 = 0
            r11 = r0
        L5e:
            r0 = r11
            if (r0 != 0) goto L76
            r0 = r7
            r1 = 0
            r2 = 12
            r3 = 0
            r4 = 4
            r5 = 0
            p193e.p194a.p1049l4.C17422k.m16117A(r0, r1, r2, r3, r4, r5)
            r0 = r8
            r0.mo10288V1()
            goto Lbf
        L76:
            r0 = r9
            e.a.v4.v r0 = r0.f59212g
            java.lang.Object r0 = java.util.Objects.requireNonNull(r0)
            e.a.b0.g.a r0 = p193e.p194a.p372b0.p411g.AbstractApplicationC8442a.m28551L()
            r10 = r0
            r0 = r10
            java.lang.String r1 = "ApplicationBase.getAppBase()"
            s1.z.c.l.d(r0, r1)
            r0 = r10
            boolean r0 = r0.mo28540W()
            r12 = r0
            r0 = r12
            if (r0 != 0) goto La1
            r0 = r9
            com.truecaller.android.sdk.oAuth.OAuthResponse$FailureResponse r1 = new com.truecaller.android.sdk.oAuth.OAuthResponse$FailureResponse
            r2 = r1
            com.truecaller.android.sdk.oAuth.TcOAuthError$InvalidAccountStateError r3 = com.truecaller.android.sdk.oAuth.TcOAuthError.InvalidAccountStateError.f10019c
            r2.<init>(r3)
            r0.f59193l = r1
        La1:
            r0 = r12
            if (r0 != 0) goto Lb9
            r0 = r7
            r1 = 0
            r2 = 10
            r3 = 0
            r4 = 4
            r5 = 0
            p193e.p194a.p1049l4.C17422k.m16117A(r0, r1, r2, r3, r4, r5)
            r0 = r8
            r0.mo10288V1()
            goto Lbf
        Lb9:
            r0 = r8
            r0.mo10276r4()
        Lbf:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1315v4.p1321s0.AbstractC21088g.mo10336o(e.a.v4.s0.m.a.f):void");
    }

    @Override // p193e.p194a.p1315v4.p1321s0.AbstractC21087f
    public void onSaveInstanceState(Bundle bundle) {
        l.e(bundle, "outState");
        bundle.putBundle("sdkKeySaveInstance", this.f59209d);
    }

    @Override // p193e.p194a.p1315v4.p1321s0.AbstractC21087f
    /* renamed from: q */
    public void mo10335q(int i) {
        this.f59209d.putInt("tc_oauth_extras_orientation", i);
    }

    /* renamed from: x */
    public AbstractC21061b m10334x() {
        return (AbstractC21061b) this.f59206a.getValue();
    }
}
