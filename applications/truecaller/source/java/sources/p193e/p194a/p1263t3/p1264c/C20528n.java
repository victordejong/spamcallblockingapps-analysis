package p193e.p194a.p1263t3.p1264c;

import com.truecaller.featuretoggles.FeatureKey;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Objects;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1263t3.p1264c.AbstractC20513e;
import p193e.p194a.p1263t3.p1264c.AbstractC20526m;
import p193e.p194a.p1263t3.p1264c.p1265x.AbstractC20554e;
import p193e.p194a.p1270u2.p1271a.AbstractC20576b;
import p193e.p194a.p1272u3.AbstractC20583b;
import p193e.p194a.p1272u3.AbstractC20597i;
import p193e.p194a.p1272u3.AbstractC20599k;
import p193e.p194a.p1272u3.AbstractC20607p;
import p193e.p194a.p1272u3.AbstractC20608q;
import p193e.p194a.p1272u3.C20584c;
import p193e.p194a.p1272u3.C20602n;
import s1.f0.v;
import s1.u.i;
import s1.z.c.l;
/* renamed from: e.a.t3.c.n */
/* loaded from: classes9-dex2jar.jar:e/a/t3/c/n.class */
public final class C20528n extends AbstractC20576b<AbstractC20531p> implements AbstractC20526m {

    /* renamed from: b */
    public AbstractC20526m.AbstractC20527a f57606b;

    /* renamed from: c */
    public final AbstractC20519g f57607c;

    /* renamed from: d */
    public final C20602n f57608d;

    /* renamed from: e */
    public final AbstractC20554e f57609e;

    /* renamed from: e.a.t3.c.n$a */
    /* loaded from: classes9-dex2jar.jar:e/a/t3/c/n$a.class */
    public static final class C20529a<T> implements Comparator {
        @Override // java.util.Comparator
        public final int compare(T t, T t2) {
            return C25225a.m4000K(((AbstractC20583b) t).getDescription(), ((AbstractC20583b) t2).getDescription());
        }
    }

    public C20528n(AbstractC20519g abstractC20519g, C20602n c20602n, AbstractC20554e abstractC20554e) {
        l.e(abstractC20519g, "adapterPresenter");
        l.e(c20602n, "featuresRegistry");
        l.e(abstractC20554e, "toggleHooks");
        this.f57607c = abstractC20519g;
        this.f57608d = c20602n;
        this.f57609e = abstractC20554e;
    }

    @Override // p193e.p194a.p1263t3.p1264c.AbstractC20519g.AbstractC20520a
    /* renamed from: Gd */
    public void mo11067Gd(FeatureKey featureKey, boolean z) {
        l.e(featureKey, "taskKey");
        AbstractC20583b m10972d = this.f57608d.m10972d(featureKey);
        ((AbstractC20599k) m10972d).setEnabled(z);
        this.f57609e.mo11037a(m10972d);
    }

    @Override // p193e.p194a.p1263t3.p1264c.AbstractC20531p.AbstractC20532a
    /* renamed from: Hb */
    public void mo11060Hb(String str) {
        m11066Hj(str);
    }

    /* renamed from: Hj */
    public final void m11066Hj(String str) {
        Object obj;
        AbstractC20519g abstractC20519g = this.f57607c;
        List<AbstractC20583b> m10980Y = this.f57608d.m10980Y();
        ArrayList arrayList = new ArrayList();
        Iterator<T> it = m10980Y.iterator();
        while (true) {
            boolean z = true;
            if (!it.hasNext()) {
                break;
            }
            Object next = it.next();
            AbstractC20583b abstractC20583b = (AbstractC20583b) next;
            if (str != null) {
                z = v.z(abstractC20583b.getDescription(), str, true);
            }
            if (z) {
                arrayList.add(next);
            }
        }
        List F0 = i.F0(i.F0(arrayList, new C20529a()), new C20584c());
        ArrayList arrayList2 = new ArrayList(C25225a.m4004J(F0, 10));
        int i = 0;
        for (Object obj2 : F0) {
            if (i < 0) {
                i.N0();
                throw null;
            }
            AbstractC20583b abstractC20583b2 = (AbstractC20583b) obj2;
            if (abstractC20583b2 instanceof AbstractC20608q) {
                long j = i;
                FeatureKey key = abstractC20583b2.getKey();
                String description = abstractC20583b2.getDescription();
                AbstractC20608q abstractC20608q = (AbstractC20608q) abstractC20583b2;
                obj = new AbstractC20513e.C20517d(j, key, description, abstractC20608q.mo10930c(), abstractC20608q.mo10929e(), abstractC20608q.mo10928f() || abstractC20608q.mo10926l(), !abstractC20608q.mo10926l());
            } else if (!(abstractC20583b2 instanceof AbstractC20597i)) {
                obj = new AbstractC20513e.C20514a(i, abstractC20583b2.getKey(), abstractC20583b2.getDescription(), abstractC20583b2.isEnabled());
            } else if (((AbstractC20597i) abstractC20583b2).mo10936j().ordinal() != 0) {
                long j2 = i;
                FeatureKey key2 = abstractC20583b2.getKey();
                String description2 = abstractC20583b2.getDescription();
                AbstractC20597i abstractC20597i = (AbstractC20597i) abstractC20583b2;
                String mo10938g = l.a(abstractC20597i.mo10938g(), "") ? "(Empty)" : abstractC20597i.mo10938g();
                String str2 = abstractC20597i.mo10936j().toString();
                Locale locale = Locale.ROOT;
                l.d(locale, "Locale.ROOT");
                Objects.requireNonNull(str2, "null cannot be cast to non-null type java.lang.String");
                String lowerCase = str2.toLowerCase(locale);
                l.d(lowerCase, "(this as java.lang.String).toLowerCase(locale)");
                obj = new AbstractC20513e.C20516c(j2, key2, description2, mo10938g, lowerCase);
            } else {
                obj = new AbstractC20513e.C20515b(i, abstractC20583b2.getKey(), abstractC20583b2.getDescription(), abstractC20583b2.isEnabled());
            }
            arrayList2.add(obj);
            i++;
        }
        abstractC20519g.mo11071d9(arrayList2);
        AbstractC20531p abstractC20531p = (AbstractC20531p) this.f57683a;
        if (abstractC20531p != null) {
            abstractC20531p.onDataChanged();
        }
    }

    @Override // p193e.p194a.p1263t3.p1264c.AbstractC20531p.AbstractC20532a
    /* renamed from: U0 */
    public void mo11059U0() {
        AbstractC20526m.AbstractC20527a abstractC20527a = this.f57606b;
        if (abstractC20527a != null) {
            abstractC20527a.mo11068d0();
        }
    }

    @Override // p193e.p194a.p1263t3.p1264c.AbstractC20531p.AbstractC20532a
    /* renamed from: U1 */
    public void mo11058U1() {
        AbstractC20526m.AbstractC20527a abstractC20527a = this.f57606b;
        if (abstractC20527a != null) {
            abstractC20527a.mo11070F0();
        }
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [e.a.t3.c.p, PV, java.lang.Object] */
    @Override // p193e.p194a.p1270u2.p1271a.AbstractC20576b, p193e.p194a.p1270u2.p1271a.AbstractC20580e
    /* renamed from: Y0 */
    public void mo9029Y0(AbstractC20531p abstractC20531p) {
        AbstractC20531p abstractC20531p2 = abstractC20531p;
        l.e(abstractC20531p2, "presenterView");
        this.f57683a = abstractC20531p2;
        m11066Hj(null);
    }

    @Override // p193e.p194a.p1263t3.p1264c.AbstractC20519g.AbstractC20520a
    /* renamed from: a5 */
    public void mo11065a5(FeatureKey featureKey, String str) {
        l.e(featureKey, "featureKey");
        l.e(str, "newFirebaseString");
        ((AbstractC20607p) this.f57608d.m10972d(featureKey)).mo10932h(str);
        m11066Hj(null);
    }

    @Override // p193e.p194a.p1270u2.p1271a.AbstractC20576b, p193e.p194a.p1270u2.p1271a.AbstractC20580e
    /* renamed from: c */
    public void mo9806c() {
        this.f57683a = null;
        this.f57606b = null;
    }

    @Override // p193e.p194a.p1263t3.p1264c.AbstractC20526m
    /* renamed from: he */
    public void mo11064he(AbstractC20526m.AbstractC20527a abstractC20527a) {
        l.e(abstractC20527a, "router");
        this.f57606b = abstractC20527a;
    }

    @Override // p193e.p194a.p1263t3.p1264c.AbstractC20531p.AbstractC20532a
    /* renamed from: i7 */
    public void mo11057i7() {
        List<AbstractC20583b> m10980Y = this.f57608d.m10980Y();
        ArrayList arrayList = new ArrayList();
        for (Object obj : m10980Y) {
            if (obj instanceof AbstractC20599k) {
                arrayList.add(obj);
            }
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            ((AbstractC20599k) it.next()).mo10927k();
        }
        m11066Hj(null);
    }

    @Override // p193e.p194a.p1263t3.p1264c.AbstractC20519g.AbstractC20520a
    /* renamed from: l2 */
    public void mo11063l2(String str, boolean z) {
        l.e(str, "taskKey");
        this.f57608d.m10957k0(str, z);
    }

    @Override // p193e.p194a.p1263t3.p1264c.AbstractC20519g.AbstractC20520a
    /* renamed from: zi */
    public void mo11062zi(FeatureKey featureKey, String str) {
        l.e(featureKey, "featureKey");
        l.e(str, "firebaseString");
        AbstractC20526m.AbstractC20527a abstractC20527a = this.f57606b;
        if (abstractC20527a != null) {
            abstractC20527a.mo11069G9(featureKey, str);
        }
    }
}
