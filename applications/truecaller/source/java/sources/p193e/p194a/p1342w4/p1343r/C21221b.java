package p193e.p194a.p1342w4.p1343r;

import com.truecaller.ads.CustomTemplate;
import e.m.d.y.n;
import java.util.Collection;
import java.util.HashMap;
import java.util.LinkedHashSet;
import java.util.Map;
import java.util.Set;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1272u3.C20592g;
import p193e.p194a.p852i.AbstractC15211m;
import p193e.p194a.p852i.C15222s;
import p193e.p194a.p852i.p856b0.p860d.C14995a;
import p193e.p194a.p852i.p896f0.AbstractC15163d;
import p193e.p194a.p852i.p896f0.p897j.AbstractC15167c;
import p193e.p194a.p852i.p896f0.p901m.AbstractC15183d;
import s1.k;
import s1.u.i;
import s1.z.c.l;
/* renamed from: e.a.w4.r.b */
/* loaded from: classes13-dex2jar.jar:e/a/w4/r/b.class */
public final class C21221b implements AbstractC21220a, AbstractC15211m {

    /* renamed from: c */
    public AbstractC21222c f59422c;

    /* renamed from: e */
    public final AbstractC15163d f59424e;

    /* renamed from: f */
    public final AbstractC15167c f59425f;

    /* renamed from: g */
    public final C20592g f59426g;

    /* renamed from: a */
    public final HashMap<String, AbstractC15183d> f59420a = new HashMap<>();

    /* renamed from: b */
    public final Set<String> f59421b = new LinkedHashSet();

    /* renamed from: d */
    public final Map<String, String> f59423d = i.W(new k[]{new k("emergency", "/43067329/A*Fast_emergency*Native*GPS"), new k("bank_balance", "/43067329/A*Fast_bank_balance*Native*GPS"), new k("airlines", "/43067329/A*Fast_airlines*Native*GPS"), new k("indian_railways", "/43067329/A*Fast_indian_railway*Native*GPS"), new k("packers", "/43067329/A*Fast_courier*Native*GPS"), new k("electronics", "/43067329/A*Fast_electronics*Native*GPS"), new k("banks", "/43067329/A*Fast_banks*Native*GPS"), new k("dth", "/43067329/A*Fast_dth*Native*GPS"), new k("automobiles", "/43067329/A*Fast_automobiles*Native*GPS"), new k("health", "/43067329/A*Fast_healthcare*Native*GPS"), new k("hotels", "/43067329/A*Fast_hotel*Native*GPS"), new k("insurance", "/43067329/A*Fast_insurance*Native*GPS")});

    public C21221b(AbstractC15163d abstractC15163d, AbstractC15167c abstractC15167c, C20592g c20592g) {
        l.e(abstractC15163d, "adsProvider");
        l.e(abstractC15167c, "adUnitIdManager");
        l.e(c20592g, "featuresRegistry");
        this.f59424e = abstractC15163d;
        this.f59425f = abstractC15167c;
        this.f59426g = c20592g;
    }

    @Override // p193e.p194a.p1342w4.p1343r.AbstractC21220a
    /* renamed from: a */
    public void mo10122a() {
        for (String str : this.f59421b) {
            this.f59424e.m19085h(m10118e(str), this);
        }
        Collection<AbstractC15183d> values = this.f59420a.values();
        l.d(values, "ads.values");
        for (AbstractC15183d abstractC15183d : values) {
            abstractC15183d.destroy();
        }
        this.f59422c = null;
    }

    @Override // p193e.p194a.p1342w4.p1343r.AbstractC21220a
    /* renamed from: b */
    public void mo10121b(AbstractC21222c abstractC21222c) {
        l.e(abstractC21222c, "adsHelperListener");
        this.f59422c = abstractC21222c;
    }

    @Override // p193e.p194a.p1342w4.p1343r.AbstractC21220a
    /* renamed from: c */
    public AbstractC15183d mo10120c(String str, int i) {
        l.e(str, "adId");
        if (this.f59420a.containsKey(str)) {
            return this.f59420a.get(str);
        }
        AbstractC15183d m19087f = this.f59424e.m19087f(m10118e(str), i);
        if (m19087f != null) {
            this.f59420a.put(str, m19087f);
        }
        return m19087f;
    }

    @Override // p193e.p194a.p1342w4.p1343r.AbstractC21220a
    /* renamed from: d */
    public void mo10119d(String str) {
        l.e(str, "adId");
        n.l1(this.f59424e, m10118e(str), this, (String) null, 4, (Object) null);
        this.f59421b.add(str);
    }

    /* renamed from: e */
    public final C15222s m10118e(String str) {
        C20592g c20592g = this.f59426g;
        l.e(str, "adUnitId");
        l.e("SEARCHRESULTS", "placement");
        l.e(c20592g, "featuresRegistry");
        C15222s.C15223a c15223a = new C15222s.C15223a(null, 1);
        c15223a.m19041b(str, null);
        if (c20592g.m10990O().isEnabled()) {
            l.e("SEARCHRESULTS", "placement");
            C14995a.C14997b c14997b = C14995a.f42800h;
            C14995a.C14996a c14996a = new C14995a.C14996a();
            c14996a.m19302c("SEARCHRESULTS");
            c15223a.f43325c = c14996a.m19304a();
        } else {
            c15223a.f43324b = C22128a.m8604k1("SEARCHRESULTS", "campaign", "SEARCHRESULTS", "CampaignConfig.Builder(campaign).build()");
        }
        c15223a.f43331i = "globalSearch";
        c15223a.m19037f(CustomTemplate.NATIVE_CONTENT_DUAL_TRACKER);
        return new C15222s(c15223a);
    }

    @Override // p193e.p194a.p852i.AbstractC15211m
    /* renamed from: ed */
    public void mo10117ed(int i) {
    }

    @Override // p193e.p194a.p852i.AbstractC15211m
    public void onAdLoaded() {
        AbstractC21222c abstractC21222c = this.f59422c;
        if (abstractC21222c != null) {
            abstractC21222c.onAdLoaded();
        }
    }

    @Override // p193e.p194a.p852i.AbstractC15211m
    /* renamed from: xe */
    public void mo10116xe(AbstractC15183d abstractC15183d, int i) {
        l.e(abstractC15183d, "ad");
    }
}
