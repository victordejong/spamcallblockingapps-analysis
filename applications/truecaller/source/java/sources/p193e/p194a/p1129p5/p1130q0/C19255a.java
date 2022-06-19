package p193e.p194a.p1129p5.p1130q0;

import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import q3.a.i0;
import s1.s;
import s1.w.d;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.utils.async.AsyncUtils$executeAsync$1", f = "AsyncUtils.kt", l = {}, m = "invokeSuspend")
/* renamed from: e.a.p5.q0.a */
/* loaded from: classes15-dex2jar.jar:e/a/p5/q0/a.class */
public final class C19255a extends i implements p<i0, d<? super s>, Object> {

    /* renamed from: e */
    public final /* synthetic */ Runnable f53622e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C19255a(Runnable runnable, d dVar) {
        super(2, dVar);
        this.f53622e = runnable;
    }

    /* renamed from: i */
    public final d<s> m13739i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C19255a(this.f53622e, dVar);
    }

    /* renamed from: k */
    public final Object m13738k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        Runnable runnable = this.f53622e;
        dVar.getContext();
        s sVar = s.a;
        C25225a.m3932a3(sVar);
        runnable.run();
        return sVar;
    }

    /* renamed from: s */
    public final Object m13737s(Object obj) {
        C25225a.m3932a3(obj);
        this.f53622e.run();
        return s.a;
    }
}
