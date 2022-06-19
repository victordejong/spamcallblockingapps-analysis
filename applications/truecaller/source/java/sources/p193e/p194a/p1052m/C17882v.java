package p193e.p194a.p1052m;

import com.truecaller.C2752R;
import com.truecaller.account.network.ExchangeCredentialsResponseDto;
import com.truecaller.common.account.Region;
import e.m.d.y.n;
import javax.inject.Inject;
import javax.inject.Named;
import p193e.p194a.p1066n.C18334g0;
import p193e.p194a.p1146q2.AbstractC19463a0;
import p193e.p194a.p1187r2.AbstractC19844a;
import p193e.p194a.p1187r2.AbstractC19854f;
import p193e.p194a.p1187r2.AbstractC19870l;
import p193e.p194a.p1270u2.p1271a.AbstractC20577c;
import p193e.p194a.p1272u3.C20592g;
import p193e.p194a.p372b0.p406e.AbstractC8426f;
import p193e.p194a.p372b0.p406e.p409r.AbstractC8438a;
import p193e.p194a.p372b0.p418l.AbstractC8503a;
import p193e.p194a.p372b0.p425o.AbstractC8541a;
import p193e.p194a.p751f4.p752a.AbstractC13945b;
import q3.a.p1;
import s1.k;
import s1.w.d;
import s1.w.f;
import s1.w.k.a.c;
import s1.w.k.a.e;
import s1.z.c.l;
/* renamed from: e.a.m.v */
/* loaded from: classes7-dex2jar.jar:e/a/m/v.class */
public final class C17882v extends AbstractC20577c<AbstractC17878r, AbstractC17879s> implements AbstractC17877q {

    /* renamed from: e */
    public AbstractC19844a f50857e;

    /* renamed from: f */
    public p1 f50858f;

    /* renamed from: g */
    public final AbstractC8541a f50859g;

    /* renamed from: h */
    public final AbstractC8438a f50860h;

    /* renamed from: i */
    public final AbstractC19854f<AbstractC13945b> f50861i;

    /* renamed from: j */
    public final AbstractC19870l f50862j;

    /* renamed from: k */
    public final AbstractC19854f<AbstractC19463a0> f50863k;

    /* renamed from: l */
    public final AbstractC8426f f50864l;

    /* renamed from: m */
    public final C20592g f50865m;

    /* renamed from: n */
    public final AbstractC17860c0 f50866n;

    /* renamed from: o */
    public final AbstractC8503a f50867o;

    @e(c = "com.truecaller.consentrefresh.ConsentRefreshPresenter", f = "ConsentRefreshPresenter.kt", l = {186}, m = "updatePrivacyRegion")
    /* renamed from: e.a.m.v$a */
    /* loaded from: classes7-dex2jar.jar:e/a/m/v$a.class */
    public static final class C17883a extends c {

        /* renamed from: d */
        public /* synthetic */ Object f50868d;

        /* renamed from: e */
        public int f50869e;

        /* renamed from: g */
        public Object f50871g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C17883a(d dVar) {
            super(dVar);
            C17882v.this = r4;
        }

        /* renamed from: s */
        public final Object m15721s(Object obj) {
            this.f50868d = obj;
            this.f50869e |= Integer.MIN_VALUE;
            return C17882v.this.m15723Jj(null, this);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @Inject
    public C17882v(@Named("UI") f fVar, AbstractC8541a abstractC8541a, AbstractC8438a abstractC8438a, AbstractC19854f<AbstractC13945b> abstractC19854f, @Named("trcllmoduleacthreads") AbstractC19870l abstractC19870l, AbstractC19854f<AbstractC19463a0> abstractC19854f2, AbstractC8426f abstractC8426f, C20592g c20592g, AbstractC17860c0 abstractC17860c0, AbstractC8503a abstractC8503a) {
        super(fVar);
        l.e(fVar, "uiCoroutineContext");
        l.e(abstractC8541a, "coreSettings");
        l.e(abstractC8438a, "accountSettings");
        l.e(abstractC19854f, "accountNetworkManager");
        l.e(abstractC19870l, "actorsThreads");
        l.e(abstractC19854f2, "eventsTracker");
        l.e(abstractC8426f, "regionUtils");
        l.e(c20592g, "featuresRegistry");
        l.e(abstractC17860c0, "privacyRegionUpdater");
        l.e(abstractC8503a, "facebookInitHelper");
        this.f50859g = abstractC8541a;
        this.f50860h = abstractC8438a;
        this.f50861i = abstractC19854f;
        this.f50862j = abstractC19870l;
        this.f50863k = abstractC19854f2;
        this.f50864l = abstractC8426f;
        this.f50865m = c20592g;
        this.f50866n = abstractC17860c0;
        this.f50867o = abstractC8503a;
    }

    /* renamed from: Ij */
    public static final void m15724Ij(C17882v c17882v) {
        c17882v.f50867o.mo28432c();
        c17882v.f50859g.putBoolean("ppolicy_accepted", true);
        n.y1(c17882v.f50863k, "consentUpgrade", ExchangeCredentialsResponseDto.STATE_ACCEPTED);
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x004a  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x006b  */
    /* renamed from: Jj */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m15723Jj(java.lang.String r6, s1.w.d<? super java.lang.Boolean> r7) {
        /*
            Method dump skipped, instructions count: 201
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1052m.C17882v.m15723Jj(java.lang.String, s1.w.d):java.lang.Object");
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [PV, java.lang.Object, e.a.m.s] */
    @Override // p193e.p194a.p1270u2.p1271a.AbstractC20576b, p193e.p194a.p1270u2.p1271a.AbstractC20580e
    /* renamed from: Y0 */
    public void mo9029Y0(Object obj) {
        k kVar;
        k kVar2;
        k kVar3;
        ?? r0 = (AbstractC17879s) obj;
        l.e((Object) r0, "presenterView");
        this.f57683a = r0;
        n.y1(this.f50863k, "consentUpgrade", "viewed");
        Region mo28592f = this.f50864l.mo28592f();
        String m15254N = C18334g0.m15254N(mo28592f);
        String[] strArr = {m15254N, C18334g0.m15247U(mo28592f)};
        int ordinal = mo28592f.ordinal();
        int i = 2131887476;
        if (ordinal == 1) {
            kVar2 = new k(2131887486, strArr);
            kVar = new k(2131887479, strArr);
            kVar3 = new k(2131887489, new String[]{"https://oag.ca.gov/privacy/ccpa", m15254N, "https://support.google.com/google-ads/answer/9614122?hl=en"});
            r0.mo15734Uc();
        } else if (ordinal == 2) {
            kVar2 = new k(Integer.valueOf((int) C2752R.string.ConsentRefreshPrivacyTextRegionZa), new String[]{m15254N});
            kVar = new k(2131887480, strArr);
            kVar3 = new k(Integer.valueOf((int) C2752R.string.ConsentRefreshPrivacyDetailsRegionZa), new String[]{m15254N});
            i = 2131887484;
            r0.mo15731mq();
        } else if (ordinal != 3) {
            throw new IllegalStateException("region doesn't support consent refresh");
        } else {
            kVar2 = new k(Integer.valueOf((int) C2752R.string.ConsentRefreshPrivacyTextRegionBr), new String[]{m15254N});
            kVar = new k(2131887478, strArr);
            kVar3 = new k(Integer.valueOf((int) C2752R.string.ConsentRefreshPrivacyDetailsRegionBr), new String[]{m15254N});
            r0.mo15731mq();
        }
        r0.mo15728z3(kVar2, kVar, kVar3);
        r0.mo15729u4(i);
    }

    @Override // p193e.p194a.p1270u2.p1271a.AbstractC20577c, p193e.p194a.p1270u2.p1271a.AbstractC20576b, p193e.p194a.p1270u2.p1271a.AbstractC20580e
    /* renamed from: c */
    public void mo9806c() {
        super.mo9806c();
        AbstractC19844a abstractC19844a = this.f50857e;
        if (abstractC19844a != null) {
            abstractC19844a.mo11832b();
        }
        this.f50857e = null;
    }

    /* renamed from: x4 */
    public void m15722x4(String str) {
        l.e(str, "url");
        AbstractC17878r abstractC17878r = (AbstractC17878r) this.f57687b;
        if (abstractC17878r != null) {
            abstractC17878r.mo15740b(str);
        }
    }
}
