package p1727n3.p1909z.p1910j3;

import java.util.concurrent.atomic.AtomicBoolean;
import q3.a.i0;
import q3.a.p1;
import q3.a.w;
import q3.a.w2.i;
import q3.a.w2.j;
import q3.a.x2.u0;
import s1.a.a.a.v0.f.d;
import s1.s;
import s1.w.j.a;
import s1.z.c.l;
/* renamed from: n3.z.j3.k */
/* loaded from: classes-dex2jar.jar:n3/z/j3/k.class */
public abstract class AbstractC27580k<T> {

    /* renamed from: d */
    public static final Object f77721d = new Object();

    /* renamed from: e */
    public static final AbstractC27580k f77722e = null;

    /* renamed from: a */
    public final j<Object> f77723a;

    /* renamed from: b */
    public final w<s> f77724b = d.g((p1) null, 1);

    /* renamed from: c */
    public final AtomicBoolean f77725c = new AtomicBoolean(false);

    public AbstractC27580k(i0 i0Var) {
        l.e(i0Var, "scope");
        j<Object> f = d.f(0, (i) null, (s1.z.b.l) null, 6);
        this.f77723a = f;
        d.x2(new q3.a.x2.s(new u0(d.l0(f), new a(this, (s1.w.d) null)), new b(this, (s1.w.d) null)), i0Var);
    }

    /* renamed from: a */
    public static final void m83a(AbstractC27580k abstractC27580k) {
        s sVar = s.a;
        if (abstractC27580k.f77725c.compareAndSet(false, true)) {
            try {
                abstractC27580k.m80d();
            } finally {
                d.f0(abstractC27580k.f77723a, (Throwable) null, 1, (Object) null);
                abstractC27580k.f77724b.K(sVar);
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0043  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x006f  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x00b6  */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m82b(s1.w.d<? super s1.s> r6) {
        /*
            r5 = this;
            r0 = r6
            boolean r0 = r0 instanceof p1727n3.p1909z.p1910j3.AbstractC27580k.c
            if (r0 == 0) goto L25
            r0 = r6
            n3.z.j3.k$c r0 = (p1727n3.p1909z.p1910j3.AbstractC27580k.c) r0
            r7 = r0
            r0 = r7
            int r0 = r0.e
            r8 = r0
            r0 = r8
            r1 = -2147483648(0xffffffff80000000, float:-0.0)
            r0 = r0 & r1
            if (r0 == 0) goto L25
            r0 = r7
            r1 = r8
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            int r1 = r1 + r2
            r0.e = r1
            r0 = r7
            r6 = r0
            goto L2f
        L25:
            n3.z.j3.k$c r0 = new n3.z.j3.k$c
            r1 = r0
            r2 = r5
            r3 = r6
            r1.<init>(r2, r3)
            r6 = r0
        L2f:
            r0 = r6
            java.lang.Object r0 = r0.d
            r9 = r0
            s1.w.j.a r0 = s1.w.j.a.a
            r10 = r0
            r0 = r6
            int r0 = r0.e
            r8 = r0
            r0 = r8
            if (r0 == 0) goto L6f
            r0 = r8
            r1 = 1
            if (r0 == r1) goto L5f
            r0 = r8
            r1 = 2
            if (r0 != r1) goto L55
            r0 = r9
            p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
            goto Lb9
        L55:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            r1 = r0
            java.lang.String r2 = "call to 'resume' before 'invoke' with coroutine"
            r1.<init>(r2)
            throw r0
        L5f:
            r0 = r6
            java.lang.Object r0 = r0.g
            n3.z.j3.k r0 = (p1727n3.p1909z.p1910j3.AbstractC27580k) r0
            r7 = r0
            r0 = r9
            p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
            goto L9b
        L6f:
            r0 = r9
            p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
            r0 = r5
            q3.a.w2.j<java.lang.Object> r0 = r0.f77723a
            r7 = r0
            java.lang.Object r0 = p1727n3.p1909z.p1910j3.AbstractC27580k.f77721d
            r9 = r0
            r0 = r6
            r1 = r5
            r0.g = r1
            r0 = r6
            r1 = 1
            r0.e = r1
            r0 = r7
            r1 = r9
            r2 = r6
            java.lang.Object r0 = r0.v(r1, r2)
            r1 = r10
            if (r0 != r1) goto L99
            r0 = r10
            return r0
        L99:
            r0 = r5
            r7 = r0
        L9b:
            r0 = r7
            q3.a.w<s1.s> r0 = r0.f77724b
            r7 = r0
            r0 = r6
            r1 = 0
            r0.g = r1
            r0 = r6
            r1 = 2
            r0.e = r1
            r0 = r7
            r1 = r6
            java.lang.Object r0 = r0.s(r1)
            r1 = r10
            if (r0 != r1) goto Lb9
            r0 = r10
            return r0
        Lb9:
            s1.s r0 = s1.s.a
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p1727n3.p1909z.p1910j3.AbstractC27580k.m82b(s1.w.d):java.lang.Object");
    }

    /* renamed from: c */
    public abstract Object m81c(T t, s1.w.d<? super s> dVar);

    /* renamed from: d */
    public void m80d() {
    }

    /* renamed from: e */
    public final Object m79e(T t, s1.w.d<? super s> dVar) {
        Object v = this.f77723a.v(t, dVar);
        return v == a.a ? v : s.a;
    }
}
