package p193e.p194a.p1315v4.p1330u0;

import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.os.Bundle;
import com.amazon.device.ads.DtbConstants;
import com.mopub.common.Constants;
import com.truecaller.android.sdk.PartnerInformation;
import com.truecaller.android.sdk.TrueError;
import com.truecaller.android.sdk.TrueProfile;
import com.truecaller.android.sdk.TrueResponse;
import com.truecaller.android.sdk.clients.CustomDataBundle;
import java.util.Locale;
import java.util.Objects;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1187r2.AbstractC19844a;
import p193e.p194a.p1187r2.AbstractC19851d0;
import p193e.p194a.p1187r2.AbstractC19854f;
import p193e.p194a.p1187r2.AbstractC19868j;
import p193e.p194a.p1221t.p1230b.p1231c.C20358c;
import p193e.p194a.p1315v4.AbstractC21040l;
import p193e.p194a.p1315v4.AbstractC21165y;
import p193e.p194a.p1315v4.C21154v;
import p193e.p194a.p1315v4.p1333w0.AbstractC21159b;
import p193e.p194a.p1315v4.p1333w0.AbstractC21160c;
import p193e.p194a.p372b0.p406e.p409r.AbstractC8438a;
import p193e.p194a.p372b0.p411g.AbstractApplicationC8442a;
import p193e.p194a.p372b0.p425o.AbstractC8541a;
import q3.a.h1;
import q3.a.i0;
import q3.a.j0;
import s1.s;
import s1.w.d;
import s1.w.f;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
/* renamed from: e.a.v4.u0.e */
/* loaded from: classes12-dex2jar.jar:e/a/v4/u0/e.class */
public final class C21140e extends AbstractC21144h implements Object, AbstractC19851d0<TrueResponse> {

    /* renamed from: i */
    public final PartnerInformation f59297i;

    /* renamed from: j */
    public final C20358c f59298j;

    /* renamed from: k */
    public AbstractC19844a f59299k;

    /* renamed from: l */
    public TrueResponse f59300l;

    /* renamed from: m */
    public boolean f59301m;

    /* renamed from: n */
    public final f f59302n;

    /* renamed from: o */
    public final AbstractC19854f<AbstractC21165y> f59303o;

    /* renamed from: p */
    public final AbstractC19868j f59304p;

    /* renamed from: q */
    public final PackageManager f59305q;

    @e(c = "com.truecaller.sdk.sdkPartner.NativeSdkPartnerImpl$setTransitionToInProgressStateComplete$1", f = "NativeSdkPartner.kt", l = {191}, m = "invokeSuspend")
    /* renamed from: e.a.v4.u0.e$a */
    /* loaded from: classes12-dex2jar.jar:e/a/v4/u0/e$a.class */
    public static final class C21141a extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: e */
        public int f59306e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C21141a(d dVar) {
            super(2, dVar);
            C21140e.this = r5;
        }

        /* renamed from: i */
        public final d<s> m10249i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C21141a(dVar);
        }

        /* renamed from: k */
        public final Object m10248k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C21141a(dVar).m10247s(s.a);
        }

        /* renamed from: s */
        public final Object m10247s(Object obj) {
            a aVar = a.a;
            int i = this.f59306e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                this.f59306e = 1;
                if (s1.a.a.a.v0.f.d.D0(300L, this) == aVar) {
                    return aVar;
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C25225a.m3932a3(obj);
            }
            C21140e.this.m10250F();
            return s.a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C21140e(f fVar, Bundle bundle, AbstractC8541a abstractC8541a, AbstractC8438a abstractC8438a, AbstractC19854f<AbstractC21165y> abstractC19854f, AbstractC19868j abstractC19868j, PackageManager packageManager, AbstractC21040l abstractC21040l, C21154v c21154v) {
        super(bundle, abstractC8541a, abstractC8438a, abstractC21040l, c21154v);
        l.e(fVar, "uiContext");
        l.e(bundle, "extras");
        l.e(abstractC8541a, "coreSettings");
        l.e(abstractC8438a, "accountSettings");
        l.e(abstractC19854f, "sdkHelper");
        l.e(abstractC19868j, "uiThread");
        l.e(packageManager, "packageManager");
        l.e(abstractC21040l, "eventsTrackerHolder");
        l.e(c21154v, "sdkAccountManager");
        this.f59302n = fVar;
        this.f59303o = abstractC19854f;
        this.f59304p = abstractC19868j;
        this.f59305q = packageManager;
        this.f59297i = new PartnerInformation(bundle);
        this.f59298j = new C20358c(bundle.getInt("truesdk flags", 0), bundle.getInt("truesdk_consent_title", 0), new CustomDataBundle(bundle));
    }

    @Override // p193e.p194a.p1315v4.p1330u0.AbstractC21144h
    /* renamed from: C */
    public boolean mo10238C() {
        boolean z;
        String string = this.f59314d.getString(PartnerInformation.TRUESDK_VERSION);
        if (string == null) {
            string = DtbConstants.NETWORK_TYPE_UNKNOWN;
        }
        l.d(string, "extras.getString(Partner…n.TRUESDK_VERSION) ?: \"0\"");
        if (string.compareTo("0.5") < 0) {
            this.f59300l = new TrueResponse(new TrueError(6));
            z = false;
        } else {
            z = true;
        }
        return z;
    }

    @Override // p193e.p194a.p1315v4.p1330u0.AbstractC21144h
    /* renamed from: D */
    public boolean mo10244D() {
        Objects.requireNonNull(this.f59318h);
        AbstractApplicationC8442a m28551L = AbstractApplicationC8442a.m28551L();
        l.d(m28551L, "ApplicationBase.getAppBase()");
        boolean mo28540W = m28551L.mo28540W();
        if (!mo28540W) {
            this.f59300l = new TrueResponse(new TrueError(10));
        }
        return mo28540W;
    }

    /* renamed from: E */
    public final void m10251E(AbstractC19851d0<TrueResponse> abstractC19851d0) {
        if (this.f59299k == null) {
            this.f59299k = this.f59303o.mo11854a().mo10182a(this.f59297i).mo11830e(this.f59304p, abstractC19851d0);
        }
    }

    /* renamed from: F */
    public final void m10250F() {
        TrueResponse trueResponse;
        int i;
        if (!this.f59312b || (trueResponse = this.f59300l) == null || this.f59301m) {
            return;
        }
        boolean z = (trueResponse != null ? trueResponse.trueProfile : null) != null;
        int i2 = z ? -1 : 0;
        if (z) {
            i = -1;
        } else {
            i = 0;
            if (trueResponse != null) {
                TrueError trueError = trueResponse.trueError;
                i = 0;
                if (trueError != null) {
                    i = trueError.getErrorType();
                }
            }
        }
        mo10233x(i2, i);
        AbstractC21159b abstractC21159b = this.f59311a;
        if (abstractC21159b == null) {
            return;
        }
        abstractC21159b.mo10198V1();
    }

    @Override // p193e.p194a.p1315v4.p1330u0.AbstractC21143g
    /* renamed from: a */
    public void mo10237a() {
        this.f59312b = true;
        AbstractC21159b abstractC21159b = this.f59311a;
        if (!(abstractC21159b instanceof AbstractC21160c)) {
            this.f59301m = true;
            if (abstractC21159b != null) {
                abstractC21159b.mo10202S1();
            }
            m10251E(this);
            return;
        }
        mo10233x(-1, -1);
        AbstractC21159b abstractC21159b2 = this.f59311a;
        if (abstractC21159b2 == null) {
            return;
        }
        abstractC21159b2.mo10198V1();
    }

    @Override // p193e.p194a.p1315v4.p1330u0.p1331k.AbstractC21148a.AbstractC21149a
    /* renamed from: b */
    public String mo10232b() {
        return Constants.ANDROID_PLATFORM;
    }

    @Override // p193e.p194a.p1315v4.p1330u0.AbstractC21144h, p193e.p194a.p1315v4.p1330u0.AbstractC21143g
    /* renamed from: c */
    public void mo10236c() {
        this.f59311a = null;
        this.f59311a = null;
        AbstractC19844a abstractC19844a = this.f59299k;
        if (abstractC19844a != null) {
            abstractC19844a.mo11832b();
        }
    }

    @Override // p193e.p194a.p1315v4.p1330u0.AbstractC21144h, p193e.p194a.p1315v4.p1330u0.p1331k.AbstractC21148a.AbstractC21151c
    /* renamed from: d */
    public String mo10231d() {
        return this.f59297i.sdkVariant;
    }

    @Override // p193e.p194a.p1315v4.p1330u0.AbstractC21143g
    /* renamed from: e */
    public void mo10246e() {
        this.f59301m = false;
        s1.a.a.a.v0.f.d.w2(h1.a, this.f59302n, (j0) null, new C21141a(null), 2, (Object) null);
    }

    @Override // p193e.p194a.p1315v4.p1330u0.p1331k.AbstractC21148a.AbstractC21151c
    /* renamed from: f */
    public String mo10230f() {
        String str = this.f59297i.truesdkVersion;
        l.d(str, "partnerInformation.truesdkVersion");
        return str;
    }

    @Override // p193e.p194a.p1315v4.p1330u0.AbstractC21143g
    /* renamed from: h */
    public void mo10235h() {
        this.f59313c.mo10213d();
        AbstractC21159b abstractC21159b = this.f59311a;
        if (abstractC21159b != null) {
            abstractC21159b.mo10206M3();
            if (abstractC21159b instanceof AbstractC21160c) {
                ((AbstractC21160c) abstractC21159b).mo10193T1(true);
            }
            m10251E(this);
        }
    }

    @Override // p193e.p194a.p1315v4.p1330u0.AbstractC21144h, p193e.p194a.p1315v4.p1330u0.p1331k.AbstractC21148a.AbstractC21151c
    /* renamed from: i */
    public String mo10229i() {
        return this.f59297i.sdkVariantVersion;
    }

    @Override // p193e.p194a.p1315v4.p1330u0.AbstractC21144h, p193e.p194a.p1315v4.p1330u0.p1331k.AbstractC21148a.AbstractC21151c
    /* renamed from: l */
    public Locale mo10228l() {
        return this.f59297i.locale;
    }

    @Override // p193e.p194a.p1315v4.p1330u0.AbstractC21143g
    /* renamed from: m */
    public C20358c mo10234m() {
        return this.f59298j;
    }

    @Override // p193e.p194a.p1315v4.p1330u0.AbstractC21144h, p193e.p194a.p1315v4.p1330u0.p1331k.AbstractC21148a.AbstractC21151c
    /* renamed from: o */
    public int mo10227o() {
        return this.f59297i.theme;
    }

    @Override // p193e.p194a.p1315v4.p1330u0.AbstractC21143g
    public void onBackPressed() {
        if (!this.f59301m) {
            if (!this.f59312b) {
                this.f59300l = new TrueResponse(new TrueError(2));
                mo10233x(0, 2);
            } else if (this.f59300l == null) {
                this.f59300l = new TrueResponse(new TrueError(13));
                mo10233x(0, 13);
            } else {
                mo10233x(-1, -1);
            }
            AbstractC21159b abstractC21159b = this.f59311a;
            if (abstractC21159b == null) {
                return;
            }
            abstractC21159b.mo10198V1();
        }
    }

    @Override // p193e.p194a.p1187r2.AbstractC19851d0
    public void onResult(TrueResponse trueResponse) {
        AbstractC21159b abstractC21159b;
        TrueResponse trueResponse2 = trueResponse;
        if (trueResponse2 == null) {
            trueResponse2 = new TrueResponse(new TrueError(0));
        }
        TrueProfile trueProfile = trueResponse2.trueProfile;
        if (trueProfile != null && (abstractC21159b = this.f59311a) != null) {
            l.d(trueProfile, "trueProfile");
            abstractC21159b.mo10195o3(trueProfile);
        }
        this.f59300l = trueResponse2;
        AbstractC21159b abstractC21159b2 = this.f59311a;
        if (abstractC21159b2 != null) {
            if (!(abstractC21159b2 instanceof AbstractC21160c)) {
                m10250F();
            } else if (trueResponse2.isSuccessful) {
                abstractC21159b2.mo10206M3();
                ((AbstractC21160c) abstractC21159b2).mo10193T1(false);
            } else {
                mo10233x(0, 0);
                abstractC21159b2.mo10198V1();
            }
        }
    }

    @Override // p193e.p194a.p1315v4.p1330u0.p1331k.AbstractC21148a.AbstractC21151c
    /* renamed from: p */
    public String mo10226p() {
        String str = this.f59297i.partnerKey;
        l.d(str, "partnerInformation.partnerKey");
        return str;
    }

    @Override // p193e.p194a.p1315v4.p1330u0.AbstractC21144h, p193e.p194a.p1315v4.p1330u0.AbstractC21143g
    /* renamed from: u */
    public void mo10240u() {
        this.f59300l = new TrueResponse(new TrueError(14));
        mo10233x(0, 14);
        AbstractC21159b abstractC21159b = this.f59311a;
        if (abstractC21159b != null) {
            abstractC21159b.mo10198V1();
        }
    }

    @Override // p193e.p194a.p1315v4.p1330u0.AbstractC21143g
    /* renamed from: x */
    public void mo10233x(int i, int i2) {
        TrueResponse trueResponse = this.f59300l;
        if (trueResponse != null) {
            this.f59313c.mo10214c(i2);
            AbstractC21159b abstractC21159b = this.f59311a;
            if (abstractC21159b == null) {
                return;
            }
            Intent intent = new Intent();
            Bundle bundle = new Bundle();
            trueResponse.writeToBundle(bundle);
            intent.putExtras(bundle);
            abstractC21159b.mo10201U1(i, intent);
        }
    }

    @Override // p193e.p194a.p1315v4.p1330u0.p1331k.AbstractC21148a.AbstractC21151c
    /* renamed from: z */
    public String mo10225z() {
        String str;
        try {
            ApplicationInfo applicationInfo = this.f59305q.getApplicationInfo(this.f59297i.packageName, 0);
            l.d(applicationInfo, "packageManager.getApplic…formation.packageName, 0)");
            str = this.f59305q.getApplicationLabel(applicationInfo).toString();
        } catch (PackageManager.NameNotFoundException e) {
            str = this.f59297i.packageName;
            l.d(str, "partnerInformation.packageName");
        }
        return str;
    }
}
