package p193e.p194a.p1193r5;

import androidx.work.ListenableWorker;
import com.truecaller.C2752R;
import com.truecaller.data.entity.Address;
import com.truecaller.whoviewedme.WhoViewedMeLaunchContext;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import javax.inject.Inject;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1011l.p1025p2.AbstractC17197v0;
import p193e.p194a.p1129p5.AbstractC19223c0;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import p193e.p194a.p1272u3.C20592g;
import p193e.p194a.p1392y2.AbstractC21765k;
import q3.a.i0;
import s1.s;
import s1.u.v;
import s1.w.d;
import s1.w.f;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
import w3.b.a.b;
/* renamed from: e.a.r5.r0 */
/* loaded from: classes8-dex2jar.jar:e/a/r5/r0.class */
public final class C19976r0 extends AbstractC21765k {

    /* renamed from: b */
    public final String f56484b = "WhoViewedMeWeeklySummaryWorkAction";

    /* renamed from: c */
    public final AbstractC19954i0 f56485c;

    /* renamed from: d */
    public final C20592g f56486d;

    /* renamed from: e */
    public final AbstractC17197v0 f56487e;

    /* renamed from: f */
    public final AbstractC19223c0 f56488f;

    /* renamed from: g */
    public final C19961l0 f56489g;

    @e(c = "com.truecaller.whoviewedme.WhoViewedMeWeeklySummaryWorkAction$execute$1", f = "WhoViewedMeWeeklySummaryWorkAction.kt", l = {34}, m = "invokeSuspend")
    /* renamed from: e.a.r5.r0$a */
    /* loaded from: classes8-dex2jar.jar:e/a/r5/r0$a.class */
    public static final class C19977a extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: e */
        public int f56490e;

        /* renamed from: e.a.r5.r0$a$a */
        /* loaded from: classes8-dex2jar.jar:e/a/r5/r0$a$a.class */
        public static final class C19978a implements v<String, String> {

            /* renamed from: a */
            public final /* synthetic */ Iterable f56492a;

            public C19978a(Iterable iterable) {
                this.f56492a = iterable;
            }

            /* renamed from: a */
            public String m11712a(String str) {
                return str;
            }

            /* renamed from: b */
            public Iterator<String> m11711b() {
                return this.f56492a.iterator();
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C19977a(d dVar) {
            super(2, dVar);
            C19976r0.this = r5;
        }

        /* renamed from: i */
        public final d<s> m11715i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C19977a(dVar);
        }

        /* renamed from: k */
        public final Object m11714k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C19977a(dVar).m11713s(s.a);
        }

        /* renamed from: s */
        public final Object m11713s(Object obj) {
            Object obj2;
            String str;
            s sVar = s.a;
            a aVar = a.a;
            int i = this.f56490e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                AbstractC19954i0 abstractC19954i0 = C19976r0.this.f56485c;
                long mo11745r = abstractC19954i0.mo11745r();
                this.f56490e = 1;
                Object m13633E = C19291g.m13633E(abstractC19954i0, null, mo11745r, this, 1, null);
                obj = m13633E;
                if (m13633E == aVar) {
                    return aVar;
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C25225a.m3932a3(obj);
            }
            List list = (List) obj;
            if (list.isEmpty()) {
                return sVar;
            }
            ArrayList arrayList = new ArrayList();
            Iterator it = list.iterator();
            while (true) {
                String str2 = null;
                if (!it.hasNext()) {
                    break;
                }
                Address m35500r = ((C19969o) it.next()).f56478e.m35500r();
                if (m35500r != null) {
                    str2 = C19291g.m13496y0(m35500r);
                }
                if (str2 != null) {
                    arrayList.add(str2);
                }
            }
            Iterator it2 = C25225a.m3905g0(new C19978a(arrayList)).entrySet().iterator();
            if (!it2.hasNext()) {
                obj2 = null;
            } else {
                obj2 = it2.next();
                if (it2.hasNext()) {
                    Integer num = new Integer(((Number) ((Map.Entry) obj2).getValue()).intValue());
                    Object obj3 = obj2;
                    do {
                        Object next = it2.next();
                        Integer num2 = new Integer(((Number) ((Map.Entry) next).getValue()).intValue());
                        Integer num3 = num;
                        obj2 = obj3;
                        if (num.compareTo(num2) < 0) {
                            obj2 = next;
                            num3 = num2;
                        }
                        num = num3;
                        obj3 = obj2;
                    } while (it2.hasNext());
                }
            }
            Map.Entry entry = (Map.Entry) obj2;
            int size = list.size();
            String mo13768b = C19976r0.this.f56488f.mo13768b(C2752R.string.WhoViewedMeReminderNotificationTitle, new Object[0]);
            l.d(mo13768b, "resourceProvider.getStri…eminderNotificationTitle)");
            if (entry != null) {
                str = C19976r0.this.f56488f.mo13759k(C2752R.plurals.WhoViewedMeReminderNotificationWithLocationText, size, new Integer(size), (String) entry.getKey(), new Integer(((Number) entry.getValue()).intValue()));
            } else {
                str = C19976r0.this.f56488f.mo13759k(C2752R.plurals.WhoViewedMeReminderNotificationNoLocationText, size, new Integer(size));
            }
            l.d(str, "if (it != null) {\n      …  )\n                    }");
            C19976r0.this.f56489g.m11734a(mo13768b, str, WhoViewedMeLaunchContext.WEEKLY_SUMMARY_NOTIFICATION);
            return sVar;
        }
    }

    @Inject
    public C19976r0(AbstractC19954i0 abstractC19954i0, C20592g c20592g, AbstractC17197v0 abstractC17197v0, AbstractC19223c0 abstractC19223c0, C19961l0 c19961l0) {
        l.e(abstractC19954i0, "whoViewedMeManager");
        l.e(c20592g, "featuresRegistry");
        l.e(abstractC17197v0, "premiumStateSettings");
        l.e(abstractC19223c0, "resourceProvider");
        l.e(c19961l0, "whoViewedMeNotifier");
        this.f56485c = abstractC19954i0;
        this.f56486d = c20592g;
        this.f56487e = abstractC17197v0;
        this.f56488f = abstractC19223c0;
        this.f56489g = c19961l0;
    }

    @Override // p193e.p194a.p1392y2.AbstractC21765k
    /* renamed from: a */
    public ListenableWorker.AbstractC0414a mo9063a() {
        s1.a.a.a.v0.f.d.c3((f) null, new C19977a(null), 1, (Object) null);
        ListenableWorker.AbstractC0414a.C0417c c0417c = new ListenableWorker.AbstractC0414a.C0417c();
        l.d(c0417c, "Result.success()");
        return c0417c;
    }

    @Override // p193e.p194a.p1392y2.AbstractC21765k
    /* renamed from: b */
    public String mo9062b() {
        return this.f56484b;
    }

    @Override // p193e.p194a.p1392y2.AbstractC21765k
    /* renamed from: c */
    public boolean mo9061c() {
        boolean z;
        C20592g c20592g = this.f56486d;
        if (c20592g.f57828S5.m10941a(c20592g, C20592g.f57695p6[362]).isEnabled() && !this.f56487e.mo16408H() && this.f56485c.mo11761b()) {
            b D = new b(this.f56485c.mo11745r()).D(7);
            l.d(D, "DateTime(whoViewedMeMana…tTimestamp()).plusDays(7)");
            if (D.j()) {
                z = true;
                return z;
            }
        }
        z = false;
        return z;
    }
}
