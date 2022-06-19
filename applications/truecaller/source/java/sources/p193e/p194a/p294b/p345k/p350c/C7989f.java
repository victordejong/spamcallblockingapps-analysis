package p193e.p194a.p294b.p345k.p350c;

import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import q3.a.i0;
import s1.s;
import s1.w.d;
import s1.w.f;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.bizmon.covidDirectory.mvp.CovidDistrictListPresenter$checkAndLoadData$1", f = "CovidDistrictListMvp.kt", l = {169}, m = "invokeSuspend")
/* renamed from: e.a.b.k.c.f */
/* loaded from: classes6-dex2jar.jar:e/a/b/k/c/f.class */
public final class C7989f extends i implements p<i0, d<? super s>, Object> {

    /* renamed from: e */
    public int f24673e;

    /* renamed from: f */
    public final /* synthetic */ C7994i f24674f;

    /* renamed from: g */
    public final /* synthetic */ boolean f24675g;

    @e(c = "com.truecaller.bizmon.covidDirectory.mvp.CovidDistrictListPresenter$checkAndLoadData$1$2", f = "CovidDistrictListMvp.kt", l = {170, 170, 171}, m = "invokeSuspend")
    /* renamed from: e.a.b.k.c.f$a */
    /* loaded from: classes6-dex2jar.jar:e/a/b/k/c/f$a.class */
    public static final class C7990a extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: e */
        public int f24676e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C7990a(d dVar) {
            super(2, dVar);
            C7989f.this = r5;
        }

        /* renamed from: i */
        public final d<s> m29032i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C7990a(dVar);
        }

        /* renamed from: k */
        public final Object m29031k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C7990a(dVar).m29030s(s.a);
        }

        /* JADX WARN: Removed duplicated region for block: B:25:0x00b0  */
        /* renamed from: s */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object m29030s(java.lang.Object r7) {
            /*
                Method dump skipped, instructions count: 232
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p294b.p345k.p350c.C7989f.C7990a.m29030s(java.lang.Object):java.lang.Object");
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C7989f(C7994i c7994i, boolean z, d dVar) {
        super(2, dVar);
        this.f24674f = c7994i;
        this.f24675g = z;
    }

    /* renamed from: i */
    public final d<s> m29035i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C7989f(this.f24674f, this.f24675g, dVar);
    }

    /* renamed from: k */
    public final Object m29034k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        return new C7989f(this.f24674f, this.f24675g, dVar).m29033s(s.a);
    }

    /* renamed from: s */
    public final Object m29033s(Object obj) {
        a aVar = a.a;
        int i = this.f24673e;
        if (i == 0) {
            C25225a.m3932a3(obj);
            AbstractC7988e abstractC7988e = (AbstractC7988e) this.f24674f.f57683a;
            if (abstractC7988e != null) {
                abstractC7988e.mo28980w3();
                abstractC7988e.mo28987e6();
            }
            f fVar = this.f24674f.f24687i;
            C7990a c7990a = new C7990a(null);
            this.f24673e = 1;
            if (s1.a.a.a.v0.f.d.a4(fVar, c7990a, this) == aVar) {
                return aVar;
            }
        } else if (i != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            C25225a.m3932a3(obj);
        }
        return s.a;
    }
}
