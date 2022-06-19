package p193e.p194a.p1164r.p1182x;

import javax.inject.Inject;
import javax.inject.Provider;
import p193e.p194a.p372b0.p406e.AbstractC8426f;
import s1.z.c.l;
/* renamed from: e.a.r.x.k */
/* loaded from: classes16-dex2jar.jar:e/a/r/x/k.class */
public final class C19784k {

    /* renamed from: a */
    public final Provider<Boolean> f54829a;

    /* renamed from: b */
    public final AbstractC8426f f54830b;

    @Inject
    public C19784k(Provider<Boolean> provider, AbstractC8426f abstractC8426f) {
        l.e(provider, "adsDisabled");
        l.e(abstractC8426f, "regionUtils");
        this.f54829a = provider;
        this.f54830b = abstractC8426f;
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x0046, code lost:
        if (((java.lang.Boolean) r3.f54829a.get()).booleanValue() == false) goto L14;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean m12854a() {
        /*
            r3 = this;
            r0 = r3
            e.a.b0.e.f r0 = r0.f54830b
            com.truecaller.common.account.Region r0 = r0.mo28592f()
            int r0 = r0.ordinal()
            r4 = r0
            r0 = 0
            r5 = r0
            r0 = r4
            if (r0 == 0) goto L37
            r0 = r4
            r1 = 1
            if (r0 == r1) goto L32
            r0 = r4
            r1 = 2
            if (r0 == r1) goto L32
            r0 = r4
            r1 = 3
            if (r0 == r1) goto L32
            r0 = r4
            r1 = 4
            if (r0 != r1) goto L2a
            goto L4c
        L2a:
            s1.i r0 = new s1.i
            r1 = r0
            r1.<init>()
            throw r0
        L32:
            r0 = 1
            r5 = r0
            goto L4c
        L37:
            r0 = r3
            javax.inject.Provider<java.lang.Boolean> r0 = r0.f54829a
            java.lang.Object r0 = r0.get()
            java.lang.Boolean r0 = (java.lang.Boolean) r0
            boolean r0 = r0.booleanValue()
            if (r0 != 0) goto L4c
            goto L32
        L4c:
            r0 = r5
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1164r.p1182x.C19784k.m12854a():boolean");
    }
}
