package p193e.p194a.p294b.p345k.p346a;

import com.truecaller.bizmon.covidDirectory.config.CovidDirectoryResponse;
import java.util.List;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p294b.p345k.p347b.p349b.C7980a;
import p193e.p194a.p294b.p345k.p347b.p349b.C7981b;
import p193e.p194a.p294b.p345k.p347b.p349b.C7982c;
import q3.a.i0;
import q3.a.j0;
import q3.a.n0;
import s1.s;
import s1.w.d;
import s1.w.f;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.bizmon.covidDirectory.config.CovidDirectoryConfigManagerImpl$saveDataToDbAsync$2", f = "CovidDirectoryConfigManager.kt", l = {}, m = "invokeSuspend")
/* renamed from: e.a.b.k.a.b */
/* loaded from: classes6-dex2jar.jar:e/a/b/k/a/b.class */
public final class C7957b extends i implements p<i0, d<? super n0<? extends Boolean>>, Object> {

    /* renamed from: e */
    public /* synthetic */ Object f24610e;

    /* renamed from: f */
    public final /* synthetic */ C7964d f24611f;

    /* renamed from: g */
    public final /* synthetic */ List f24612g;

    @e(c = "com.truecaller.bizmon.covidDirectory.config.CovidDirectoryConfigManagerImpl$saveDataToDbAsync$2$1", f = "CovidDirectoryConfigManager.kt", l = {}, m = "invokeSuspend")
    /* renamed from: e.a.b.k.a.b$a */
    /* loaded from: classes6-dex2jar.jar:e/a/b/k/a/b$a.class */
    public static final class C7958a extends i implements p<i0, d<? super Boolean>, Object> {

        /* renamed from: e */
        public /* synthetic */ Object f24613e;

        /* renamed from: e.a.b.k.a.b$a$a */
        /* loaded from: classes6-dex2jar.jar:e/a/b/k/a/b$a$a.class */
        public static final class RunnableC7959a implements Runnable {

            /* renamed from: b */
            public final /* synthetic */ i0 f24616b;

            @e(c = "com.truecaller.bizmon.covidDirectory.config.CovidDirectoryConfigManagerImpl$saveDataToDbAsync$2$1$1$1", f = "CovidDirectoryConfigManager.kt", l = {}, m = "invokeSuspend")
            /* renamed from: e.a.b.k.a.b$a$a$a */
            /* loaded from: classes6-dex2jar.jar:e/a/b/k/a/b$a$a$a.class */
            public static final class C7960a extends i implements p<i0, d<? super s>, Object> {
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                public C7960a(d dVar) {
                    super(2, dVar);
                    RunnableC7959a.this = r5;
                }

                /* renamed from: i */
                public final d<s> m29066i(Object obj, d<?> dVar) {
                    l.e(dVar, "completion");
                    return new C7960a(dVar);
                }

                /* renamed from: k */
                public final Object m29065k(Object obj, Object obj2) {
                    d dVar = (d) obj2;
                    l.e(dVar, "completion");
                    C7960a c7960a = new C7960a(dVar);
                    s sVar = s.a;
                    c7960a.m29064s(sVar);
                    return sVar;
                }

                /* JADX WARN: Type inference failed for: r0v100, types: [long] */
                /* JADX WARN: Type inference failed for: r0v41, types: [long] */
                /* renamed from: s */
                public final Object m29064s(Object obj) {
                    C25225a.m3932a3(obj);
                    C7957b.this.f24611f.f24626c.mo29055a();
                    C7957b.this.f24611f.f24628e.mo29050c();
                    C7957b.this.f24611f.f24627d.mo29044c();
                    List<CovidDirectoryResponse> list = C7957b.this.f24612g;
                    if (list != null) {
                        for (CovidDirectoryResponse covidDirectoryResponse : list) {
                            String state = covidDirectoryResponse.getState();
                            char mo29045b = C7957b.this.f24611f.f24627d.mo29045b(state);
                            if (!C7957b.this.f24611f.f24627d.mo29046a(state)) {
                                mo29045b = C7957b.this.f24611f.f24627d.mo29043d(new C7982c(state, 0, 2));
                            }
                            if (covidDirectoryResponse.getDistrict().length() == 0) {
                                C7957b.this.f24611f.f24627d.mo29042e(state, 1);
                            }
                            String district = covidDirectoryResponse.getDistrict();
                            Long l = null;
                            boolean z = false;
                            if (district.length() == 0) {
                                z = true;
                            }
                            if (!z) {
                                l = new Long(C7957b.this.f24611f.f24628e.mo29049d(covidDirectoryResponse.getDistrict(), mo29045b));
                                if (!C7957b.this.f24611f.f24628e.mo29051b(district, mo29045b)) {
                                    l = new Long(C7957b.this.f24611f.f24628e.mo29048e(new C7981b(district, 0, mo29045b, 2)));
                                }
                                C7957b.this.f24611f.f24628e.mo29052a(l.longValue(), 1);
                            }
                            C7957b.this.f24611f.f24626c.mo29053c(new C7980a(covidDirectoryResponse.getHospitalName(), covidDirectoryResponse.getPhoneNumber(), covidDirectoryResponse.getAddress(), l, new Long(mo29045b)));
                        }
                    }
                    return s.a;
                }
            }

            public RunnableC7959a(i0 i0Var) {
                C7958a.this = r4;
                this.f24616b = i0Var;
            }

            @Override // java.lang.Runnable
            public final void run() {
                s1.a.a.a.v0.f.d.w2(this.f24616b, (f) null, (j0) null, new C7960a(null), 3, (Object) null);
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C7958a(d dVar) {
            super(2, dVar);
            C7957b.this = r5;
        }

        /* renamed from: i */
        public final d<s> m29069i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            C7958a c7958a = new C7958a(dVar);
            c7958a.f24613e = obj;
            return c7958a;
        }

        /* renamed from: k */
        public final Object m29068k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            C7958a c7958a = new C7958a(dVar);
            c7958a.f24613e = obj;
            c7958a.m29067s(s.a);
            return Boolean.TRUE;
        }

        /* renamed from: s */
        public final Object m29067s(Object obj) {
            C25225a.m3932a3(obj);
            C7957b.this.f24611f.f24629f.runInTransaction(new RunnableC7959a((i0) this.f24613e));
            C7957b.this.f24611f.f24630g.putLong("covid_dir_last_sync_time", System.currentTimeMillis());
            return Boolean.TRUE;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C7957b(C7964d c7964d, List list, d dVar) {
        super(2, dVar);
        this.f24611f = c7964d;
        this.f24612g = list;
    }

    /* renamed from: i */
    public final d<s> m29072i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        C7957b c7957b = new C7957b(this.f24611f, this.f24612g, dVar);
        c7957b.f24610e = obj;
        return c7957b;
    }

    /* renamed from: k */
    public final Object m29071k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        C7957b c7957b = new C7957b(this.f24611f, this.f24612g, dVar);
        c7957b.f24610e = obj;
        return c7957b.m29070s(s.a);
    }

    /* renamed from: s */
    public final Object m29070s(Object obj) {
        C25225a.m3932a3(obj);
        return s1.a.a.a.v0.f.d.H((i0) this.f24610e, (f) null, (j0) null, new C7958a(null), 3, (Object) null);
    }
}
