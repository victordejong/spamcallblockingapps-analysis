package p193e.p194a.p1275v;

import android.content.Context;
import com.razorpay.AnalyticsConstants;
import com.truecaller.ads.AdLayoutTypeX;
import e.m.d.y.n;
import java.util.Objects;
import javax.inject.Inject;
import p193e.p194a.AbstractC15539j2;
import p193e.p194a.AbstractC21187w1;
import p193e.p194a.p1275v.p1276a.p1302y.AbstractC20878j;
import p193e.p194a.p852i.AbstractC15191g;
import p193e.p194a.p852i.AbstractC15211m;
import p193e.p194a.p852i.C15222s;
import p193e.p194a.p852i.p862c.p866d.AbstractC15025a;
import p193e.p194a.p852i.p896f0.AbstractC15161a;
import p193e.p194a.p852i.p896f0.AbstractC15163d;
import p193e.p194a.p852i.p896f0.p897j.AbstractC15167c;
import p193e.p194a.p852i.p896f0.p901m.AbstractC15183d;
import s1.z.c.l;
/* renamed from: e.a.v.c */
/* loaded from: classes8-dex2jar.jar:e/a/v/c.class */
public final class C20886c implements AbstractC20878j {

    /* renamed from: a */
    public final Context f58703a;

    @Inject
    public C20886c(Context context) {
        l.e(context, AnalyticsConstants.CONTEXT);
        this.f58703a = context;
    }

    @Override // p193e.p194a.p1275v.p1276a.p1302y.AbstractC20878j
    /* renamed from: a */
    public AbstractC15191g mo10578a() {
        return AdLayoutTypeX.DETAILS;
    }

    @Override // p193e.p194a.p1275v.p1276a.p1302y.AbstractC20878j
    /* renamed from: b */
    public boolean mo10577b() {
        return m10568k().m19090b();
    }

    @Override // p193e.p194a.p1275v.p1276a.p1302y.AbstractC20878j
    /* renamed from: c */
    public boolean mo10576c(C15222s c15222s) {
        l.e(c15222s, "unitConfig");
        return m10568k().m19089c(c15222s);
    }

    @Override // p193e.p194a.p1275v.p1276a.p1302y.AbstractC20878j
    /* renamed from: d */
    public AbstractC15167c mo10575d() {
        AbstractC15167c mo12430c4 = m10567l().mo12430c4();
        l.d(mo12430c4, "graph.adUnitIdManagerProvider()");
        return mo12430c4;
    }

    @Override // p193e.p194a.p1275v.p1276a.p1302y.AbstractC20878j
    /* renamed from: e */
    public AbstractC15161a mo10574e() {
        AbstractC15161a mo12228r0 = m10567l().mo12228r0();
        l.d(mo12228r0, "graph.adsAnalytics()");
        return mo12228r0;
    }

    @Override // p193e.p194a.p1275v.p1276a.p1302y.AbstractC20878j
    /* renamed from: f */
    public AbstractC15025a mo10573f() {
        AbstractC15025a mo12226r2 = m10567l().mo12226r2();
        l.d(mo12226r2, "graph.adRouterAdsProvider()");
        return mo12226r2;
    }

    @Override // p193e.p194a.p1275v.p1276a.p1302y.AbstractC20878j
    /* renamed from: g */
    public void mo10572g(C15222s c15222s, AbstractC15211m abstractC15211m) {
        l.e(c15222s, "unitConfig");
        l.e(abstractC15211m, "adsListener");
        if (m10568k().m19090b()) {
            m10568k().m19084l(c15222s, abstractC15211m, null);
        }
    }

    @Override // p193e.p194a.p1275v.p1276a.p1302y.AbstractC20878j
    /* renamed from: h */
    public AbstractC15183d mo10571h(C15222s c15222s) {
        l.e(c15222s, "unitConfig");
        return n.J(m10568k(), c15222s, 0, true, (String) null, 8, (Object) null);
    }

    @Override // p193e.p194a.p1275v.p1276a.p1302y.AbstractC20878j
    /* renamed from: i */
    public void mo10570i(C15222s c15222s) {
        l.e(c15222s, "unitConfig");
        m10568k().m19083m(c15222s, null);
    }

    @Override // p193e.p194a.p1275v.p1276a.p1302y.AbstractC20878j
    /* renamed from: j */
    public void mo10569j(C15222s c15222s, AbstractC15211m abstractC15211m) {
        l.e(c15222s, "unitConfig");
        l.e(abstractC15211m, "adsListener");
        m10568k().m19085h(c15222s, abstractC15211m);
    }

    /* renamed from: k */
    public final AbstractC15163d m10568k() {
        AbstractC15163d mo12356h7 = m10567l().mo12356h7();
        l.d(mo12356h7, "graph.adsProvider()");
        return mo12356h7;
    }

    /* renamed from: l */
    public final AbstractC15539j2 m10567l() {
        Context applicationContext = this.f58703a.getApplicationContext();
        Objects.requireNonNull(applicationContext, "null cannot be cast to non-null type com.truecaller.GraphHolder");
        AbstractC15539j2 mo10154s = ((AbstractC21187w1) applicationContext).mo10154s();
        l.d(mo10154s, "(context.applicationCont…GraphHolder).objectsGraph");
        return mo10154s;
    }
}
