package p193e.p194a.p195a.p271o.p272a;

import com.razorpay.AnalyticsConstants;
import com.truecaller.data.entity.CallRecording;
import com.truecaller.data.entity.HistoryEvent;
import java.math.BigDecimal;
import java.util.LinkedHashMap;
import java.util.Objects;
import java.util.Set;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1041l0.p1042u.p1043d.AbstractC17373b;
import p193e.p194a.p1050l5.p1051a.C17697p3;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import p193e.p194a.p1146q2.AbstractC19462a;
import p193e.p194a.p195a.p271o.p272a.C7071k;
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
@e(c = "com.truecaller.messaging.storagemanager.callrec.CallRecStorageManagerPresenter$deleteCallRecordings$1$1", f = "CallRecStorageManagerPresenter.kt", l = {176}, m = "invokeSuspend")
/* renamed from: e.a.a.o.a.j */
/* loaded from: classes7-dex2jar.jar:e/a/a/o/a/j.class */
public final class C7069j extends i implements p<i0, d<? super s>, Object> {

    /* renamed from: e */
    public int f22780e;

    /* renamed from: f */
    public final /* synthetic */ C7071k.C7072a f22781f;

    @e(c = "com.truecaller.messaging.storagemanager.callrec.CallRecStorageManagerPresenter$deleteCallRecordings$1$1$1", f = "CallRecStorageManagerPresenter.kt", l = {}, m = "invokeSuspend")
    /* renamed from: e.a.a.o.a.j$a */
    /* loaded from: classes7-dex2jar.jar:e/a/a/o/a/j$a.class */
    public static final class C7070a extends i implements p<i0, d<? super Boolean>, Object> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C7070a(d dVar) {
            super(2, dVar);
            C7069j.this = r5;
        }

        /* renamed from: i */
        public final d<s> m30195i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C7070a(dVar);
        }

        /* renamed from: k */
        public final Object m30194k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            C7069j c7069j = C7069j.this;
            dVar.getContext();
            C25225a.m3932a3(s.a);
            C7071k.C7072a c7072a = c7069j.f22781f;
            Boolean mo11831c = C7071k.this.f22787h.mo16150P1(c7072a.f22793c).mo11831c();
            if (mo11831c == null) {
                mo11831c = Boolean.FALSE;
            }
            return mo11831c;
        }

        /* renamed from: s */
        public final Object m30193s(Object obj) {
            C25225a.m3932a3(obj);
            C7071k.C7072a c7072a = C7069j.this.f22781f;
            Boolean mo11831c = C7071k.this.f22787h.mo16150P1(c7072a.f22793c).mo11831c();
            if (mo11831c == null) {
                mo11831c = Boolean.FALSE;
            }
            return mo11831c;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C7069j(C7071k.C7072a c7072a, d dVar) {
        super(2, dVar);
        this.f22781f = c7072a;
    }

    /* renamed from: i */
    public final d<s> m30198i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C7069j(this.f22781f, dVar);
    }

    /* renamed from: k */
    public final Object m30197k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        return new C7069j(this.f22781f, dVar).m30196s(s.a);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v105, types: [long] */
    /* JADX WARN: Type inference failed for: r0v108 */
    /* JADX WARN: Type inference failed for: r0v94 */
    /* JADX WARN: Type inference failed for: r0v96, types: [long] */
    /* JADX WARN: Type inference failed for: r0v97 */
    /* renamed from: s */
    public final Object m30196s(Object obj) {
        char c;
        HistoryEvent mo16159n;
        CallRecording callRecording;
        String str;
        CallRecording callRecording2;
        a aVar = a.a;
        int i = this.f22780e;
        if (i == 0) {
            C25225a.m3932a3(obj);
            C7071k.C7072a c7072a = this.f22781f;
            C7071k c7071k = C7071k.this;
            Set set = c7072a.f22793c;
            AbstractC19462a abstractC19462a = c7071k.f22791l;
            LinkedHashMap m8655X = C22128a.m8655X("StorageManagerDelete", "type");
            LinkedHashMap m8652Y = C22128a.m8652Y("type", AnalyticsConstants.NAME, "callRecording", "value", m8655X, "type", "callRecording");
            int size = set.size();
            l.e("numItems", AnalyticsConstants.NAME);
            m8652Y.put("numItems", Double.valueOf(size));
            AbstractC17373b abstractC17373b = c7071k.f22783d;
            if (abstractC17373b != null) {
                abstractC17373b.moveToPosition(-1);
                char c2 = false;
                while (true) {
                    c = c2;
                    if (!abstractC17373b.moveToNext()) {
                        break;
                    }
                    HistoryEvent mo16159n2 = abstractC17373b.mo16159n();
                    char c3 = (mo16159n2 == null || (callRecording2 = mo16159n2.f11547n) == null) ? (char) 65535 : callRecording2.f11503a;
                    if (c3 != -1 && set.contains(Long.valueOf(c3)) && (mo16159n = abstractC17373b.mo16159n()) != null && (callRecording = mo16159n.f11547n) != null && (str = callRecording.f11505c) != null) {
                        Long l = c7071k.f22784e.get(str);
                        c2 += l != null ? l.longValue() : 0;
                    }
                }
            } else {
                c = false;
            }
            double doubleValue = new BigDecimal(C19291g.m13530n(c)).setScale(2, 4).doubleValue();
            l.e("totalSize", AnalyticsConstants.NAME);
            m8652Y.put("totalSize", Double.valueOf(doubleValue));
            C17697p3.C17699b m15852a = C17697p3.m15852a();
            m15852a.m15850b("StorageManagerDelete");
            m15852a.m15849c(m8652Y);
            m15852a.m15848d(m8655X);
            C17697p3 build = m15852a.build();
            l.d(build, "GenericAnalyticsEvent.ne…rties(properties).build()");
            abstractC19462a.mo13275a(build);
            f fVar = C7071k.this.f22786g;
            C7070a c7070a = new C7070a(null);
            this.f22780e = 1;
            if (s1.a.a.a.v0.f.d.a4(fVar, c7070a, this) == aVar) {
                return aVar;
            }
        } else if (i != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            C25225a.m3932a3(obj);
        }
        C7071k c7071k2 = C7071k.this;
        Objects.requireNonNull(c7071k2);
        s1.a.a.a.v0.f.d.w2(c7071k2, (f) null, (j0) null, new C7075l(c7071k2, null), 3, (Object) null);
        AbstractC7068i abstractC7068i = (AbstractC7068i) C7071k.this.f57683a;
        if (abstractC7068i != null) {
            abstractC7068i.mo30201e();
        }
        return s.a;
    }
}
