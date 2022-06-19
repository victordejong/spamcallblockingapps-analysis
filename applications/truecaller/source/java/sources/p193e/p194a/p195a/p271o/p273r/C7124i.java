package p193e.p194a.p195a.p271o.p273r;

import com.amazon.device.ads.DTBMetricsConfiguration;
import com.razorpay.AnalyticsConstants;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import javax.inject.Inject;
import javax.inject.Named;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1050l5.p1051a.C17697p3;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import p193e.p194a.p1146q2.AbstractC19462a;
import p193e.p194a.p1270u2.p1271a.AbstractC20574a;
import p193e.p194a.p195a.p235g1.AbstractC6254b;
import p193e.p194a.p195a.p271o.AbstractC7084f;
import q3.a.i0;
import q3.a.j0;
import s1.u.s;
import s1.u.t;
import s1.w.d;
import s1.w.f;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.a;
import s1.z.b.p;
import s1.z.c.l;
import s1.z.c.m;
/* renamed from: e.a.a.o.r.i */
/* loaded from: classes7-dex2jar.jar:e/a/a/o/r/i.class */
public final class C7124i extends AbstractC20574a<AbstractC7123h> implements AbstractC7122g {

    /* renamed from: d */
    public List<String> f22903d = s.a;

    /* renamed from: e */
    public Map<String, Long> f22904e = t.a;

    /* renamed from: f */
    public Set<String> f22905f = new LinkedHashSet();

    /* renamed from: g */
    public final f f22906g;

    /* renamed from: h */
    public final AbstractC6254b f22907h;

    /* renamed from: i */
    public final AbstractC7084f f22908i;

    /* renamed from: j */
    public final AbstractC19462a f22909j;

    /* renamed from: e.a.a.o.r.i$a */
    /* loaded from: classes7-dex2jar.jar:e/a/a/o/r/i$a.class */
    public static final class C7125a extends m implements a<s1.s> {

        /* renamed from: c */
        public final /* synthetic */ List f22911c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C7125a(List list) {
            super(0);
            C7124i.this = r4;
            this.f22911c = list;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v17 */
        /* JADX WARN: Type inference failed for: r0v18 */
        /* JADX WARN: Type inference failed for: r0v61 */
        /* JADX WARN: Type inference failed for: r0v64 */
        /* JADX WARN: Type inference failed for: r0v66, types: [long] */
        /* JADX WARN: Type inference failed for: r0v67 */
        public Object invoke() {
            char c;
            C7124i c7124i = C7124i.this;
            List<String> list = this.f22911c;
            AbstractC19462a abstractC19462a = c7124i.f22909j;
            LinkedHashMap m8655X = C22128a.m8655X("StorageManagerDelete", "type");
            LinkedHashMap m8652Y = C22128a.m8652Y("type", AnalyticsConstants.NAME, "langPack", "value", m8655X, "type", "langPack");
            int size = list.size();
            l.e("numItems", AnalyticsConstants.NAME);
            m8652Y.put("numItems", Double.valueOf(size));
            Iterator it = list.iterator();
            ?? r0 = 0;
            while (true) {
                c = r0;
                if (!it.hasNext()) {
                    break;
                }
                Long l = c7124i.f22904e.get((String) it.next());
                r0 = c + (l != null ? l.longValue() : 0);
            }
            double m13549g1 = C19291g.m13549g1(C19291g.m13530n(c), 0, 1);
            l.e("totalSize", AnalyticsConstants.NAME);
            m8652Y.put("totalSize", Double.valueOf(m13549g1));
            C17697p3.C17699b m15852a = C17697p3.m15852a();
            m15852a.m15850b("StorageManagerDelete");
            m15852a.m15849c(m8652Y);
            m15852a.m15848d(m8655X);
            C17697p3 build = m15852a.build();
            l.d(build, "GenericAnalyticsEvent.ne…rties(properties).build()");
            abstractC19462a.mo13275a(build);
            for (String str : list) {
                c7124i.f22907h.mo31540i(str, new C7128j(c7124i));
            }
            AbstractC7123h abstractC7123h = (AbstractC7123h) c7124i.f57683a;
            if (abstractC7123h != null) {
                abstractC7123h.mo30095e();
            }
            return s1.s.a;
        }
    }

    @e(c = "com.truecaller.messaging.storagemanager.langpack.LangPackStorageManagerPresenter$loadLangPackList$1", f = "LangPackStorageManagerPresenter.kt", l = {35}, m = "invokeSuspend")
    /* renamed from: e.a.a.o.r.i$b */
    /* loaded from: classes7-dex2jar.jar:e/a/a/o/r/i$b.class */
    public static final class C7126b extends i implements p<i0, d<? super s1.s>, Object> {

        /* renamed from: e */
        public int f22912e;

        @e(c = "com.truecaller.messaging.storagemanager.langpack.LangPackStorageManagerPresenter$loadLangPackList$1$1", f = "LangPackStorageManagerPresenter.kt", l = {36, 37}, m = "invokeSuspend")
        /* renamed from: e.a.a.o.r.i$b$a */
        /* loaded from: classes7-dex2jar.jar:e/a/a/o/r/i$b$a.class */
        public static final class C7127a extends i implements p<i0, d<? super s1.s>, Object> {

            /* renamed from: e */
            public Object f22914e;

            /* renamed from: f */
            public int f22915f;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C7127a(d dVar) {
                super(2, dVar);
                C7126b.this = r5;
            }

            /* renamed from: i */
            public final d<s1.s> m30081i(Object obj, d<?> dVar) {
                l.e(dVar, "completion");
                return new C7127a(dVar);
            }

            /* renamed from: k */
            public final Object m30080k(Object obj, Object obj2) {
                d dVar = (d) obj2;
                l.e(dVar, "completion");
                return new C7127a(dVar).m30079s(s1.s.a);
            }

            /* renamed from: s */
            public final Object m30079s(Object obj) {
                Object obj2;
                C7124i c7124i;
                C7124i c7124i2;
                s1.w.j.a aVar = s1.w.j.a.a;
                int i = this.f22915f;
                if (i == 0) {
                    C25225a.m3932a3(obj);
                    c7124i2 = C7124i.this;
                    AbstractC6254b abstractC6254b = c7124i2.f22907h;
                    this.f22914e = c7124i2;
                    this.f22915f = 1;
                    Object mo31544e = abstractC6254b.mo31544e(this);
                    obj = mo31544e;
                    if (mo31544e == aVar) {
                        return aVar;
                    }
                } else if (i != 1) {
                    if (i != 2) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    c7124i = (C7124i) this.f22914e;
                    C25225a.m3932a3(obj);
                    obj2 = obj;
                    c7124i.f22904e = (Map) obj2;
                    return s1.s.a;
                } else {
                    c7124i2 = (C7124i) this.f22914e;
                    C25225a.m3932a3(obj);
                }
                ArrayList arrayList = new ArrayList();
                for (Object obj3 : (Iterable) obj) {
                    if (!Boolean.valueOf(l.a((String) obj3, "en")).booleanValue()) {
                        arrayList.add(obj3);
                    }
                }
                c7124i2.f22903d = arrayList;
                C7124i c7124i3 = C7124i.this;
                AbstractC7084f abstractC7084f = c7124i3.f22908i;
                Set<String> d1 = s1.u.i.d1(c7124i3.f22903d);
                this.f22914e = c7124i3;
                this.f22915f = 2;
                obj2 = abstractC7084f.mo30154e(d1, this);
                if (obj2 == aVar) {
                    return aVar;
                }
                c7124i = c7124i3;
                c7124i.f22904e = (Map) obj2;
                return s1.s.a;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C7126b(d dVar) {
            super(2, dVar);
            C7124i.this = r5;
        }

        /* renamed from: i */
        public final d<s1.s> m30084i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C7126b(dVar);
        }

        /* renamed from: k */
        public final Object m30083k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C7126b(dVar).m30082s(s1.s.a);
        }

        /* renamed from: s */
        public final Object m30082s(Object obj) {
            s1.w.j.a aVar = s1.w.j.a.a;
            int i = this.f22912e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                f fVar = C7124i.this.f22906g;
                C7127a c7127a = new C7127a(null);
                this.f22912e = 1;
                if (s1.a.a.a.v0.f.d.a4(fVar, c7127a, this) == aVar) {
                    return aVar;
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C25225a.m3932a3(obj);
            }
            if (C7124i.this.f22903d.isEmpty()) {
                AbstractC7123h abstractC7123h = (AbstractC7123h) C7124i.this.f57683a;
                if (abstractC7123h != null) {
                    abstractC7123h.mo30100C();
                }
            } else {
                AbstractC7123h abstractC7123h2 = (AbstractC7123h) C7124i.this.f57683a;
                if (abstractC7123h2 != null) {
                    abstractC7123h2.mo30096c0();
                }
                AbstractC7123h abstractC7123h3 = (AbstractC7123h) C7124i.this.f57683a;
                if (abstractC7123h3 != null) {
                    abstractC7123h3.mo30097U2();
                }
            }
            return s1.s.a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @Inject
    public C7124i(@Named("UI") f fVar, @Named("IO") f fVar2, AbstractC6254b abstractC6254b, AbstractC7084f abstractC7084f, AbstractC19462a abstractC19462a) {
        super(fVar);
        l.e(fVar, "uiContext");
        l.e(fVar2, "ioContext");
        l.e(abstractC6254b, "translateManager");
        l.e(abstractC7084f, "storageManager");
        l.e(abstractC19462a, DTBMetricsConfiguration.ANALYTICS_KEY_NAME);
        this.f22906g = fVar2;
        this.f22907h = abstractC6254b;
        this.f22908i = abstractC7084f;
        this.f22909j = abstractC19462a;
    }

    /* renamed from: Ij */
    public final void m30092Ij(List<String> list) {
        AbstractC7123h abstractC7123h = (AbstractC7123h) this.f57683a;
        if (abstractC7123h != null) {
            abstractC7123h.mo30099He(list.size(), new C7125a(list));
        }
    }

    /* renamed from: Jj */
    public final void m30091Jj(String str) {
        AbstractC7123h abstractC7123h;
        if (this.f22905f.isEmpty() && (abstractC7123h = (AbstractC7123h) this.f57683a) != null) {
            abstractC7123h.mo30094g();
        }
        if (this.f22905f.contains(str)) {
            this.f22905f.remove(str);
        } else {
            this.f22905f.add(str);
        }
        if (this.f22905f.isEmpty()) {
            AbstractC7123h abstractC7123h2 = (AbstractC7123h) this.f57683a;
            if (abstractC7123h2 != null) {
                abstractC7123h2.mo30095e();
            }
        } else {
            AbstractC7123h abstractC7123h3 = (AbstractC7123h) this.f57683a;
            if (abstractC7123h3 != null) {
                abstractC7123h3.mo30098T0(String.valueOf(this.f22905f.size()));
            }
        }
        AbstractC7123h abstractC7123h4 = (AbstractC7123h) this.f57683a;
        if (abstractC7123h4 != null) {
            abstractC7123h4.mo30096c0();
        }
        AbstractC7123h abstractC7123h5 = (AbstractC7123h) this.f57683a;
        if (abstractC7123h5 != null) {
            abstractC7123h5.mo30093u1();
        }
    }

    @Override // p193e.p194a.p195a.p271o.p273r.AbstractC7122g
    /* renamed from: d */
    public void mo30090d(int i) {
        if (i == 2131361957) {
            m30092Ij(s1.u.i.S0(this.f22905f));
        } else if (i == 2131362019) {
            for (String str : this.f22903d) {
                this.f22905f.add(str);
            }
            AbstractC7123h abstractC7123h = (AbstractC7123h) this.f57683a;
            if (abstractC7123h != null) {
                abstractC7123h.mo30098T0(String.valueOf(this.f22905f.size()));
            }
            AbstractC7123h abstractC7123h2 = (AbstractC7123h) this.f57683a;
            if (abstractC7123h2 != null) {
                abstractC7123h2.mo30093u1();
            }
            AbstractC7123h abstractC7123h3 = (AbstractC7123h) this.f57683a;
            if (abstractC7123h3 == null) {
                return;
            }
            abstractC7123h3.mo30096c0();
        }
    }

    @Override // p193e.p194a.p682e.p684b.p686b.AbstractC12890h
    /* renamed from: e1 */
    public List<String> mo22475e1() {
        return this.f22903d;
    }

    @Override // p193e.p194a.p682e.p684b.p686b.AbstractC12890h
    /* renamed from: f1 */
    public Set<String> mo22474f1() {
        return this.f22905f;
    }

    @Override // p193e.p194a.p195a.p271o.p273r.AbstractC7122g
    /* renamed from: h0 */
    public boolean mo30089h0() {
        return !this.f22903d.isEmpty();
    }

    @Override // p193e.p194a.p682e.p684b.p686b.AbstractC12890h
    /* renamed from: if */
    public Map<String, Long> mo22473if() {
        return this.f22904e;
    }

    @Override // p193e.p194a.p195a.p271o.p273r.AbstractC7122g
    /* renamed from: je */
    public void mo30088je() {
        s1.a.a.a.v0.f.d.w2(this, (f) null, (j0) null, new C7126b(null), 3, (Object) null);
    }

    @Override // p193e.p194a.p682e.p684b.p686b.AbstractC12889g
    /* renamed from: k6 */
    public boolean mo22478k6(String str) {
        l.e(str, "languageCode");
        if (!this.f22905f.isEmpty()) {
            m30091Jj(str);
            return true;
        }
        return false;
    }

    @Override // p193e.p194a.p682e.p684b.p686b.AbstractC12889g
    /* renamed from: p3 */
    public boolean mo22477p3(String str) {
        l.e(str, "languageCode");
        m30091Jj(str);
        return true;
    }

    @Override // p193e.p194a.p195a.p271o.p273r.AbstractC7122g
    /* renamed from: s1 */
    public void mo30087s1() {
        m30092Ij(this.f22903d);
    }

    @Override // p193e.p194a.p195a.p271o.p273r.AbstractC7122g
    /* renamed from: u */
    public boolean mo30086u(int i) {
        boolean z = false;
        if (i == 2131361957 || (i == 2131362019 && this.f22905f.size() != this.f22903d.size())) {
            z = true;
        }
        return z;
    }

    @Override // p193e.p194a.p682e.p684b.p686b.AbstractC12889g
    /* renamed from: w5 */
    public boolean mo22476w5(String str) {
        l.e(str, "languageCode");
        m30092Ij(C25225a.m3962T1(str));
        return true;
    }

    @Override // p193e.p194a.p195a.p271o.p273r.AbstractC7122g
    /* renamed from: z */
    public void mo30085z() {
        this.f22905f.clear();
        AbstractC7123h abstractC7123h = (AbstractC7123h) this.f57683a;
        if (abstractC7123h != null) {
            abstractC7123h.mo30096c0();
        }
    }
}
