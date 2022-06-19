package p193e.p194a.p1193r5;

import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p613c0.AbstractC10908f;
import q3.a.i0;
import s1.s;
import s1.w.d;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.a;
import s1.z.b.p;
import s1.z.c.l;
import s1.z.c.m;
@e(c = "com.truecaller.whoviewedme.WhoViewedMeRevealProfileViewAbTestManager$maybeLogConverted$1", f = "WhoViewedMeRevealProfileViewAbTestManager.kt", l = {35}, m = "invokeSuspend")
/* renamed from: e.a.r5.m0 */
/* loaded from: classes8-dex2jar.jar:e/a/r5/m0.class */
public final class C19963m0 extends i implements p<i0, d<? super s>, Object> {

    /* renamed from: e */
    public int f56456e;

    /* renamed from: f */
    public final /* synthetic */ C19966n0 f56457f;

    /* renamed from: e.a.r5.m0$a */
    /* loaded from: classes8-dex2jar.jar:e/a/r5/m0$a.class */
    public static final class C19964a extends m implements a<Boolean> {

        /* renamed from: b */
        public final /* synthetic */ boolean f56458b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C19964a(boolean z) {
            super(0);
            this.f56458b = z;
        }

        public Object invoke() {
            return Boolean.valueOf(this.f56458b);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C19963m0(C19966n0 c19966n0, d dVar) {
        super(2, dVar);
        this.f56457f = c19966n0;
    }

    /* renamed from: i */
    public final d<s> m11730i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C19963m0(this.f56457f, dVar);
    }

    /* renamed from: k */
    public final Object m11729k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        return new C19963m0(this.f56457f, dVar).m11728s(s.a);
    }

    /* renamed from: s */
    public final Object m11728s(Object obj) {
        s1.w.j.a aVar = s1.w.j.a.a;
        int i = this.f56456e;
        if (i == 0) {
            C25225a.m3932a3(obj);
            AbstractC19954i0 abstractC19954i0 = this.f56457f.f56465b;
            this.f56456e = 1;
            Object mo11756g = abstractC19954i0.mo11756g(this);
            obj = mo11756g;
            if (mo11756g == aVar) {
                return aVar;
            }
        } else if (i != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            C25225a.m3932a3(obj);
        }
        AbstractC10908f.m25508d(this.f56457f.f56464a.f32404f, false, new C19964a(((Boolean) obj).booleanValue()), 1, null);
        return s.a;
    }
}
