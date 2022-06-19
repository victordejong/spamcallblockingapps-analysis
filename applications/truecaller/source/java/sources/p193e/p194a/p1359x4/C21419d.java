package p193e.p194a.p1359x4;

import androidx.work.ListenableWorker;
import javax.inject.Inject;
import o3.a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1359x4.p1360j.AbstractC21427a;
import p193e.p194a.p1392y2.AbstractC21765k;
import p193e.p194a.p372b0.p406e.AbstractC8432l;
import q3.a.i0;
import s1.s;
import s1.w.d;
import s1.w.f;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
/* renamed from: e.a.x4.d */
/* loaded from: classes13-dex2jar.jar:e/a/x4/d.class */
public final class C21419d extends AbstractC21765k {

    /* renamed from: b */
    public final a<AbstractC8432l> f59893b;

    /* renamed from: c */
    public final a<AbstractC21427a> f59894c;

    @e(c = "com.truecaller.searchwarnings.FetchSearchWarningsWorkAction$execute$1", f = "FetchSearchWarningsWorkAction.kt", l = {32}, m = "invokeSuspend")
    /* renamed from: e.a.x4.d$a */
    /* loaded from: classes13-dex2jar.jar:e/a/x4/d$a.class */
    public static final class C21420a extends i implements p<i0, d<? super ListenableWorker.AbstractC0414a>, Object> {

        /* renamed from: e */
        public int f59895e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C21420a(d dVar) {
            super(2, dVar);
            C21419d.this = r5;
        }

        /* renamed from: i */
        public final d<s> m9751i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C21420a(dVar);
        }

        /* renamed from: k */
        public final Object m9750k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C21420a(dVar).m9749s(s.a);
        }

        /* renamed from: s */
        public final Object m9749s(Object obj) {
            ListenableWorker.AbstractC0414a.C0417c c0417c;
            s1.w.j.a aVar = s1.w.j.a.a;
            int i = this.f59895e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                this.f59895e = 1;
                Object mo9741c = ((AbstractC21427a) C21419d.this.f59894c.get()).mo9741c(this);
                obj = mo9741c;
                if (mo9741c == aVar) {
                    return aVar;
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C25225a.m3932a3(obj);
            }
            boolean booleanValue = ((Boolean) obj).booleanValue();
            if (booleanValue) {
                c0417c = new ListenableWorker.AbstractC0414a.C0417c();
            } else if (booleanValue) {
                throw new s1.i();
            } else {
                c0417c = new ListenableWorker.AbstractC0414a.C0416b();
            }
            return c0417c;
        }
    }

    @Inject
    public C21419d(a<AbstractC8432l> aVar, a<AbstractC21427a> aVar2) {
        l.e(aVar, "accountManager");
        l.e(aVar2, "searchWarningsRepository");
        this.f59893b = aVar;
        this.f59894c = aVar2;
    }

    @Override // p193e.p194a.p1392y2.AbstractC21765k
    /* renamed from: a */
    public ListenableWorker.AbstractC0414a mo9063a() {
        Object c3 = s1.a.a.a.v0.f.d.c3((f) null, new C21420a(null), 1, (Object) null);
        l.d(c3, "runBlocking {\n          …)\n            }\n        }");
        return (ListenableWorker.AbstractC0414a) c3;
    }

    @Override // p193e.p194a.p1392y2.AbstractC21765k
    /* renamed from: b */
    public String mo9062b() {
        return "FetchSearchWarningsWorkAction";
    }

    @Override // p193e.p194a.p1392y2.AbstractC21765k
    /* renamed from: c */
    public boolean mo9061c() {
        return ((AbstractC8432l) this.f59893b.get()).mo28580d();
    }
}
