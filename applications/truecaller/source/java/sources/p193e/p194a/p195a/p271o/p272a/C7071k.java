package p193e.p194a.p195a.p271o.p272a;

import com.amazon.device.ads.DTBMetricsConfiguration;
import com.truecaller.C2752R;
import com.truecaller.callrecording.CallRecordingManager;
import com.truecaller.callrecording.analytics.RecordingAnalyticsSource;
import com.truecaller.data.entity.CallRecording;
import com.truecaller.data.entity.HistoryEvent;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.Map;
import java.util.Set;
import javax.inject.Inject;
import javax.inject.Named;
import o3.a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1041l0.p1042u.p1043d.AbstractC17373b;
import p193e.p194a.p1041l0.p1042u.p1044e.AbstractC17384b;
import p193e.p194a.p1129p5.AbstractC19223c0;
import p193e.p194a.p1146q2.AbstractC19462a;
import p193e.p194a.p1270u2.p1271a.AbstractC20574a;
import p193e.p194a.p195a.p271o.AbstractC7107p;
import q3.a.i0;
import q3.a.j0;
import s1.a.a.a.v0.f.d;
import s1.s;
import s1.u.u;
import s1.w.f;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
import s1.z.c.m;
/* renamed from: e.a.a.o.a.k */
/* loaded from: classes7-dex2jar.jar:e/a/a/o/a/k.class */
public final class C7071k extends AbstractC20574a<AbstractC7068i> implements AbstractC7067h {

    /* renamed from: d */
    public AbstractC17373b f22783d;

    /* renamed from: e */
    public final Map<String, Long> f22784e = new LinkedHashMap();

    /* renamed from: f */
    public final Set<Long> f22785f = new LinkedHashSet();

    /* renamed from: g */
    public final f f22786g;

    /* renamed from: h */
    public final AbstractC17384b f22787h;

    /* renamed from: i */
    public final AbstractC7107p f22788i;

    /* renamed from: j */
    public final a<CallRecordingManager> f22789j;

    /* renamed from: k */
    public final AbstractC19223c0 f22790k;

    /* renamed from: l */
    public final AbstractC19462a f22791l;

    /* renamed from: e.a.a.o.a.k$a */
    /* loaded from: classes7-dex2jar.jar:e/a/a/o/a/k$a.class */
    public static final class C7072a extends m implements s1.z.b.a<s> {

        /* renamed from: c */
        public final /* synthetic */ Set f22793c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C7072a(Set set) {
            super(0);
            C7071k.this = r4;
            this.f22793c = set;
        }

        public Object invoke() {
            d.w2(C7071k.this, (f) null, (j0) null, new C7069j(this, null), 3, (Object) null);
            return s.a;
        }
    }

    @e(c = "com.truecaller.messaging.storagemanager.callrec.CallRecStorageManagerPresenter$getMediaFileSize$1", f = "CallRecStorageManagerPresenter.kt", l = {63}, m = "invokeSuspend")
    /* renamed from: e.a.a.o.a.k$b */
    /* loaded from: classes7-dex2jar.jar:e/a/a/o/a/k$b.class */
    public static final class C7073b extends i implements p<i0, s1.w.d<? super s>, Object> {

        /* renamed from: e */
        public int f22794e;

        /* renamed from: g */
        public final /* synthetic */ String f22796g;

        @e(c = "com.truecaller.messaging.storagemanager.callrec.CallRecStorageManagerPresenter$getMediaFileSize$1$callSize$1", f = "CallRecStorageManagerPresenter.kt", l = {}, m = "invokeSuspend")
        /* renamed from: e.a.a.o.a.k$b$a */
        /* loaded from: classes7-dex2jar.jar:e/a/a/o/a/k$b$a.class */
        public static final class C7074a extends i implements p<i0, s1.w.d<? super Long>, Object> {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C7074a(s1.w.d dVar) {
                super(2, dVar);
                C7073b.this = r5;
            }

            /* renamed from: i */
            public final s1.w.d<s> m30175i(Object obj, s1.w.d<?> dVar) {
                l.e(dVar, "completion");
                return new C7074a(dVar);
            }

            /* renamed from: k */
            public final Object m30174k(Object obj, Object obj2) {
                s1.w.d dVar = (s1.w.d) obj2;
                l.e(dVar, "completion");
                C7073b c7073b = C7073b.this;
                dVar.getContext();
                C25225a.m3932a3(s.a);
                return C7071k.this.f22787h.mo16151O1(c7073b.f22796g).mo11831c();
            }

            /* renamed from: s */
            public final Object m30173s(Object obj) {
                C25225a.m3932a3(obj);
                C7073b c7073b = C7073b.this;
                return C7071k.this.f22787h.mo16151O1(c7073b.f22796g).mo11831c();
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C7073b(String str, s1.w.d dVar) {
            super(2, dVar);
            C7071k.this = r5;
            this.f22796g = str;
        }

        /* renamed from: i */
        public final s1.w.d<s> m30178i(Object obj, s1.w.d<?> dVar) {
            l.e(dVar, "completion");
            return new C7073b(this.f22796g, dVar);
        }

        /* renamed from: k */
        public final Object m30177k(Object obj, Object obj2) {
            s1.w.d dVar = (s1.w.d) obj2;
            l.e(dVar, "completion");
            return new C7073b(this.f22796g, dVar).m30176s(s.a);
        }

        /* renamed from: s */
        public final Object m30176s(Object obj) {
            s1.w.j.a aVar = s1.w.j.a.a;
            int i = this.f22794e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                f fVar = C7071k.this.f22786g;
                C7074a c7074a = new C7074a(null);
                this.f22794e = 1;
                Object a4 = d.a4(fVar, c7074a, this);
                obj = a4;
                if (a4 == aVar) {
                    return aVar;
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C25225a.m3932a3(obj);
            }
            Long l = (Long) obj;
            if (l == null) {
                l = new Long(0L);
            }
            l.d(l, "withContext(ioContext) {…cSize(path).get() } ?: 0L");
            C7071k.this.f22784e.put(this.f22796g, new Long(l.longValue()));
            AbstractC7068i abstractC7068i = (AbstractC7068i) C7071k.this.f57683a;
            if (abstractC7068i != null) {
                abstractC7068i.mo30204Lc();
            }
            return s.a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @Inject
    public C7071k(@Named("UI") f fVar, @Named("IO") f fVar2, AbstractC17384b abstractC17384b, AbstractC7107p abstractC7107p, a<CallRecordingManager> aVar, AbstractC19223c0 abstractC19223c0, AbstractC19462a abstractC19462a) {
        super(fVar);
        l.e(fVar, "uiContext");
        l.e(fVar2, "ioContext");
        l.e(abstractC17384b, "callRecordingDataManager");
        l.e(abstractC7107p, "storageUtils");
        l.e(aVar, "callRecordingManager");
        l.e(abstractC19223c0, "resourceProvider");
        l.e(abstractC19462a, DTBMetricsConfiguration.ANALYTICS_KEY_NAME);
        this.f22786g = fVar2;
        this.f22787h = abstractC17384b;
        this.f22788i = abstractC7107p;
        this.f22789j = aVar;
        this.f22790k = abstractC19223c0;
        this.f22791l = abstractC19462a;
    }

    @Override // p193e.p194a.p195a.p271o.p272a.AbstractC7053b
    /* renamed from: B5 */
    public boolean mo30192B5(CallRecording callRecording) {
        l.e(callRecording, "callRecording");
        m30191Ij(s1.u.i.y0(Long.valueOf(callRecording.f11503a)));
        return true;
    }

    /* renamed from: Ij */
    public final void m30191Ij(Set<Long> set) {
        String mo13759k = this.f22790k.mo13759k(C2752R.plurals.ManageStorageDeleteCallRecordings, set.size(), Integer.valueOf(set.size()));
        l.d(mo13759k, "resourceProvider.getQuan…e, callRecordingIds.size)");
        AbstractC7068i abstractC7068i = (AbstractC7068i) this.f57683a;
        if (abstractC7068i != null) {
            abstractC7068i.mo30205Ep(mo13759k, new C7072a(set));
        }
    }

    /* renamed from: Jj */
    public final void m30190Jj(CallRecording callRecording) {
        AbstractC7068i abstractC7068i;
        if (this.f22785f.isEmpty() && (abstractC7068i = (AbstractC7068i) this.f57683a) != null) {
            abstractC7068i.mo30200g();
        }
        if (this.f22785f.contains(Long.valueOf(callRecording.f11503a))) {
            this.f22785f.remove(Long.valueOf(callRecording.f11503a));
        } else {
            this.f22785f.add(Long.valueOf(callRecording.f11503a));
        }
        if (this.f22785f.isEmpty()) {
            AbstractC7068i abstractC7068i2 = (AbstractC7068i) this.f57683a;
            if (abstractC7068i2 != null) {
                abstractC7068i2.mo30201e();
            }
        } else {
            AbstractC7068i abstractC7068i3 = (AbstractC7068i) this.f57683a;
            if (abstractC7068i3 != null) {
                abstractC7068i3.mo30203T0(String.valueOf(this.f22785f.size()));
            }
        }
        AbstractC7068i abstractC7068i4 = (AbstractC7068i) this.f57683a;
        if (abstractC7068i4 != null) {
            abstractC7068i4.mo30204Lc();
        }
        AbstractC7068i abstractC7068i5 = (AbstractC7068i) this.f57683a;
        if (abstractC7068i5 != null) {
            abstractC7068i5.mo30199u1();
        }
    }

    @Override // p193e.p194a.p195a.p271o.p272a.AbstractC7053b
    /* renamed from: Qi */
    public boolean mo30189Qi(CallRecording callRecording) {
        l.e(callRecording, "callRecording");
        if (!this.f22785f.isEmpty()) {
            m30190Jj(callRecording);
            return true;
        }
        l.e(callRecording, "callRecording");
        ((CallRecordingManager) this.f22789j.get()).mo17605C(callRecording, RecordingAnalyticsSource.STORAGE_MANAGER);
        return true;
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [e.a.a.o.a.i, PV, java.lang.Object] */
    @Override // p193e.p194a.p1270u2.p1271a.AbstractC20576b, p193e.p194a.p1270u2.p1271a.AbstractC20580e
    /* renamed from: Y0 */
    public void mo9029Y0(AbstractC7068i abstractC7068i) {
        AbstractC7068i abstractC7068i2 = abstractC7068i;
        l.e(abstractC7068i2, "presenterView");
        this.f57683a = abstractC7068i2;
        d.w2(this, (f) null, (j0) null, new C7075l(this, null), 3, (Object) null);
    }

    @Override // p193e.p194a.p1270u2.p1271a.AbstractC20574a, p193e.p194a.p1270u2.p1271a.AbstractC20576b, p193e.p194a.p1270u2.p1271a.AbstractC20580e
    /* renamed from: c */
    public void mo9806c() {
        super.mo9806c();
        AbstractC17373b abstractC17373b = this.f22783d;
        if (abstractC17373b != null) {
            abstractC17373b.close();
        }
        this.f22783d = null;
    }

    @Override // p193e.p194a.p195a.p271o.p272a.AbstractC7067h
    /* renamed from: d */
    public void mo30188d(int i) {
        CallRecording callRecording;
        if (i == 2131361957) {
            m30191Ij(s1.u.i.d1(this.f22785f));
        } else if (i != 2131362019) {
        } else {
            AbstractC17373b abstractC17373b = this.f22783d;
            if (abstractC17373b != null) {
                abstractC17373b.moveToPosition(-1);
                while (abstractC17373b.moveToNext()) {
                    HistoryEvent mo16159n = abstractC17373b.mo16159n();
                    if (mo16159n != null && (callRecording = mo16159n.f11547n) != null) {
                        this.f22785f.add(Long.valueOf(callRecording.f11503a));
                    }
                }
            }
            AbstractC7068i abstractC7068i = (AbstractC7068i) this.f57683a;
            if (abstractC7068i != null) {
                abstractC7068i.mo30203T0(String.valueOf(this.f22785f.size()));
            }
            AbstractC7068i abstractC7068i2 = (AbstractC7068i) this.f57683a;
            if (abstractC7068i2 != null) {
                abstractC7068i2.mo30199u1();
            }
            AbstractC7068i abstractC7068i3 = (AbstractC7068i) this.f57683a;
            if (abstractC7068i3 == null) {
                return;
            }
            abstractC7068i3.mo30204Lc();
        }
    }

    @Override // p193e.p194a.p195a.p271o.p272a.AbstractC7057f
    /* renamed from: f1 */
    public Set<Long> mo30187f1() {
        return this.f22785f;
    }

    @Override // p193e.p194a.p195a.p271o.p272a.AbstractC7067h
    /* renamed from: h0 */
    public boolean mo30186h0() {
        AbstractC17373b abstractC17373b = this.f22783d;
        boolean z = false;
        if ((abstractC17373b != null ? abstractC17373b.getCount() : 0) > 0) {
            z = true;
        }
        return z;
    }

    @Override // p193e.p194a.p195a.p271o.p272a.AbstractC7057f
    /* renamed from: kj */
    public AbstractC17373b mo30185kj(AbstractC7055d abstractC7055d, s1.a.l<?> lVar) {
        l.e(abstractC7055d, "callRecItemsPresenter");
        l.e(lVar, "property");
        return this.f22783d;
    }

    @Override // p193e.p194a.p195a.p271o.p272a.AbstractC7067h
    /* renamed from: s1 */
    public void mo30184s1() {
        LinkedHashSet linkedHashSet;
        CallRecording callRecording;
        AbstractC17373b abstractC17373b = this.f22783d;
        if (abstractC17373b != null) {
            LinkedHashSet linkedHashSet2 = new LinkedHashSet();
            abstractC17373b.moveToPosition(-1);
            while (true) {
                linkedHashSet = linkedHashSet2;
                if (!abstractC17373b.moveToNext()) {
                    break;
                }
                HistoryEvent mo16159n = abstractC17373b.mo16159n();
                if (mo16159n != null && (callRecording = mo16159n.f11547n) != null) {
                    linkedHashSet2.add(Long.valueOf(callRecording.f11503a));
                }
            }
        } else {
            linkedHashSet = u.a;
        }
        m30191Ij(linkedHashSet);
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x002b, code lost:
        if (r0 == r0.getCount()) goto L11;
     */
    @Override // p193e.p194a.p195a.p271o.p272a.AbstractC7067h
    /* renamed from: u */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean mo30183u(int r4) {
        /*
            r3 = this;
            r0 = 0
            r5 = r0
            r0 = r4
            r1 = 2131361957(0x7f0a00a5, float:1.834368E38)
            if (r0 == r1) goto L2e
            r0 = r4
            r1 = 2131362019(0x7f0a00e3, float:1.8343807E38)
            if (r0 == r1) goto L11
            goto L30
        L11:
            r0 = r3
            java.util.Set<java.lang.Long> r0 = r0.f22785f
            int r0 = r0.size()
            r4 = r0
            r0 = r3
            e.a.l0.u.d.b r0 = r0.f22783d
            r6 = r0
            r0 = r6
            if (r0 == 0) goto L2e
            r0 = r4
            r1 = r6
            int r1 = r1.getCount()
            if (r0 == r1) goto L30
        L2e:
            r0 = 1
            r5 = r0
        L30:
            r0 = r5
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p195a.p271o.p272a.C7071k.mo30183u(int):boolean");
    }

    @Override // p193e.p194a.p195a.p271o.p272a.AbstractC7057f
    /* renamed from: w3 */
    public String mo30182w3(String str) {
        String str2;
        if (str == null) {
            return null;
        }
        Long l = this.f22784e.get(str);
        if (l != null) {
            str2 = this.f22788i.mo30114a(l.longValue());
        } else {
            d.w2(this, (f) null, (j0) null, new C7073b(str, null), 3, (Object) null);
            str2 = null;
        }
        return str2;
    }

    @Override // p193e.p194a.p195a.p271o.p272a.AbstractC7053b
    /* renamed from: yi */
    public boolean mo30181yi(CallRecording callRecording) {
        l.e(callRecording, "callRecording");
        m30190Jj(callRecording);
        return true;
    }

    @Override // p193e.p194a.p195a.p271o.p272a.AbstractC7067h
    /* renamed from: z */
    public void mo30180z() {
        this.f22785f.clear();
        AbstractC7068i abstractC7068i = (AbstractC7068i) this.f57683a;
        if (abstractC7068i != null) {
            abstractC7068i.mo30204Lc();
        }
    }

    @Override // p193e.p194a.p195a.p271o.p272a.AbstractC7053b
    /* renamed from: z4 */
    public boolean mo30179z4(CallRecording callRecording) {
        l.e(callRecording, "callRecording");
        ((CallRecordingManager) this.f22789j.get()).mo17605C(callRecording, RecordingAnalyticsSource.STORAGE_MANAGER);
        return true;
    }
}
