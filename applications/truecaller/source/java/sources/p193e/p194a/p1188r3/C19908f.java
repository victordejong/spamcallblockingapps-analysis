package p193e.p194a.p1188r3;

import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.dynamicfeaturesupport.DynamicFeatureLoader$loadWithProgressBar$3", f = "DynamicFeatureLoader.kt", l = {53}, m = "invokeSuspend")
/* renamed from: e.a.r3.f */
/* loaded from: classes8-dex2jar.jar:e/a/r3/f.class */
public final class C19908f extends i implements p<AbstractC19898b, d<? super s>, Object> {

    /* renamed from: e */
    public int f56344e;

    public C19908f(d dVar) {
        super(2, dVar);
    }

    /* renamed from: i */
    public final d<s> m11825i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C19908f(dVar);
    }

    /* renamed from: k */
    public final Object m11824k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        return new C19908f(dVar).m11823s(s.a);
    }

    /* renamed from: s */
    public final Object m11823s(Object obj) {
        a aVar = a.a;
        int i = this.f56344e;
        if (i == 0) {
            C25225a.m3932a3(obj);
            this.f56344e = 1;
            if (s1.a.a.a.v0.f.d.D0(100L, this) == aVar) {
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
