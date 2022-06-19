package p193e.p194a.p1129p5.p1130q0;

import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import q3.a.i0;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.l;
import s1.z.b.p;
@e(c = "com.truecaller.utils.async.RetryHelper$retryIf$2$2", f = "RetryHelper.kt", l = {29}, m = "invokeSuspend")
/* renamed from: e.a.p5.q0.c */
/* loaded from: classes15-dex2jar.jar:e/a/p5/q0/c.class */
public final class C19257c extends i implements p<i0, d<? super s>, Object> {

    /* renamed from: e */
    public int f53623e;

    /* renamed from: f */
    public final /* synthetic */ C19259e f53624f;

    /* renamed from: g */
    public final /* synthetic */ l f53625g;

    /* renamed from: h */
    public final /* synthetic */ l f53626h;

    /* renamed from: i */
    public final /* synthetic */ long f53627i;

    /* renamed from: j */
    public final /* synthetic */ d f53628j;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C19257c(d dVar, C19259e c19259e, l lVar, l lVar2, long j, d dVar2) {
        super(2, dVar);
        this.f53624f = c19259e;
        this.f53625g = lVar;
        this.f53626h = lVar2;
        this.f53627i = j;
        this.f53628j = dVar2;
    }

    /* renamed from: i */
    public final d<s> m13736i(Object obj, d<?> dVar) {
        s1.z.c.l.e(dVar, "completion");
        return new C19257c(dVar, this.f53624f, this.f53625g, this.f53626h, this.f53627i, this.f53628j);
    }

    /* renamed from: k */
    public final Object m13735k(Object obj, Object obj2) {
        return m13736i(obj, (d) obj2).m13734s(s.a);
    }

    /* renamed from: s */
    public final Object m13734s(Object obj) {
        a aVar = a.a;
        int i = this.f53623e;
        if (i == 0) {
            C25225a.m3932a3(obj);
            long j = this.f53627i;
            this.f53623e = 1;
            if (s1.a.a.a.v0.f.d.D0(j, this) == aVar) {
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
