package kotlinx.coroutines;

import kotlin.p075c.AbstractC1620a;
import kotlin.p075c.AbstractC1646f;
import kotlin.p081e.p082a.AbstractC1674m;
import kotlin.p081e.p083b.C1691e;
import kotlin.p081e.p083b.C1694h;
import kotlinx.coroutines.AbstractC1877ce;
/* renamed from: kotlinx.coroutines.ab */
/* loaded from: classes-dex2jar.jar:kotlinx/coroutines/ab.class */
public final class C1782ab extends AbstractC1620a implements AbstractC1877ce<String> {

    /* renamed from: a */
    public static final C1783a f4459a = new C1783a(null);

    /* renamed from: b */
    private final long f4460b;

    /* renamed from: kotlinx.coroutines.ab$a */
    /* loaded from: classes-dex2jar.jar:kotlinx/coroutines/ab$a.class */
    public static final class C1783a implements AbstractC1646f.AbstractC1651c<C1782ab> {
        private C1783a() {
        }

        public /* synthetic */ C1783a(C1691e c1691e) {
            this();
        }
    }

    public C1782ab(long j) {
        super(f4459a);
        this.f4460b = j;
    }

    /* renamed from: a */
    public final long m2962a() {
        return this.f4460b;
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x0020, code lost:
        if (r8 != null) goto L7;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String mo2718b(kotlin.p075c.AbstractC1646f r8) {
        /*
            r7 = this;
            r0 = r8
            java.lang.String r1 = "context"
            kotlin.p081e.p083b.C1694h.m3117b(r0, r1)
            r0 = r8
            kotlinx.coroutines.ac$a r1 = kotlinx.coroutines.C1784ac.f4461a
            kotlin.c.f$c r1 = (kotlin.p075c.AbstractC1646f.AbstractC1651c) r1
            kotlin.c.f$b r0 = r0.get(r1)
            kotlinx.coroutines.ac r0 = (kotlinx.coroutines.C1784ac) r0
            r8 = r0
            r0 = r8
            if (r0 == 0) goto L26
            r0 = r8
            java.lang.String r0 = r0.m2959a()
            r8 = r0
            r0 = r8
            if (r0 == 0) goto L26
            goto L29
        L26:
            java.lang.String r0 = "coroutine"
            r8 = r0
        L29:
            java.lang.Thread r0 = java.lang.Thread.currentThread()
            r9 = r0
            r0 = r9
            java.lang.String r1 = "currentThread"
            kotlin.p081e.p083b.C1694h.m3122a(r0, r1)
            r0 = r9
            java.lang.String r0 = r0.getName()
            r10 = r0
            r0 = r10
            java.lang.String r1 = "oldName"
            kotlin.p081e.p083b.C1694h.m3122a(r0, r1)
            r0 = r10
            java.lang.CharSequence r0 = (java.lang.CharSequence) r0
            java.lang.String r1 = " @"
            r2 = 0
            r3 = 0
            r4 = 6
            r5 = 0
            int r0 = kotlin.p087i.C1747g.m3003b(r0, r1, r2, r3, r4, r5)
            r11 = r0
            r0 = r11
            r12 = r0
            r0 = r11
            if (r0 >= 0) goto L5d
            r0 = r10
            int r0 = r0.length()
            r12 = r0
        L5d:
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r1 = r0
            r2 = r8
            int r2 = r2.length()
            r3 = r12
            int r2 = r2 + r3
            r3 = 10
            int r2 = r2 + r3
            r1.<init>(r2)
            r13 = r0
            r0 = r10
            r1 = 0
            r2 = r12
            java.lang.String r0 = r0.substring(r1, r2)
            r14 = r0
            r0 = r14
            java.lang.String r1 = "(this as java.lang.Strin…ing(startIndex, endIndex)"
            kotlin.p081e.p083b.C1694h.m3122a(r0, r1)
            r0 = r13
            r1 = r14
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r13
            java.lang.String r1 = " @"
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r13
            r1 = r8
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r13
            r1 = 35
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r13
            r1 = r7
            long r1 = r1.f4460b
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r13
            java.lang.String r0 = r0.toString()
            r8 = r0
            r0 = r8
            java.lang.String r1 = "StringBuilder(capacity).…builderAction).toString()"
            kotlin.p081e.p083b.C1694h.m3122a(r0, r1)
            r0 = r9
            r1 = r8
            r0.setName(r1)
            r0 = r10
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.C1782ab.mo2718b(kotlin.c.f):java.lang.String");
    }

    /* renamed from: a */
    public void mo2719a(AbstractC1646f abstractC1646f, String str) {
        C1694h.m3117b(abstractC1646f, "context");
        C1694h.m3117b(str, "oldState");
        Thread currentThread = Thread.currentThread();
        C1694h.m3122a((Object) currentThread, "Thread.currentThread()");
        currentThread.setName(str);
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C1782ab)) {
                return false;
            }
            return (this.f4460b > ((C1782ab) obj).f4460b ? 1 : (this.f4460b == ((C1782ab) obj).f4460b ? 0 : -1)) == 0;
        }
        return true;
    }

    @Override // kotlin.p075c.AbstractC1620a, kotlin.p075c.AbstractC1646f
    public <R> R fold(R r, AbstractC1674m<? super R, ? super AbstractC1646f.AbstractC1649b, ? extends R> abstractC1674m) {
        C1694h.m3117b(abstractC1674m, "operation");
        return (R) AbstractC1877ce.C1878a.m2717a(this, r, abstractC1674m);
    }

    @Override // kotlin.p075c.AbstractC1620a, kotlin.p075c.AbstractC1646f.AbstractC1649b, kotlin.p075c.AbstractC1646f
    public <E extends AbstractC1646f.AbstractC1649b> E get(AbstractC1646f.AbstractC1651c<E> abstractC1651c) {
        C1694h.m3117b(abstractC1651c, "key");
        return (E) AbstractC1877ce.C1878a.m2716a(this, abstractC1651c);
    }

    public int hashCode() {
        long j = this.f4460b;
        return (int) (j ^ (j >>> 32));
    }

    @Override // kotlin.p075c.AbstractC1620a, kotlin.p075c.AbstractC1646f
    public AbstractC1646f minusKey(AbstractC1646f.AbstractC1651c<?> abstractC1651c) {
        C1694h.m3117b(abstractC1651c, "key");
        return AbstractC1877ce.C1878a.m2714b(this, abstractC1651c);
    }

    @Override // kotlin.p075c.AbstractC1620a, kotlin.p075c.AbstractC1646f
    public AbstractC1646f plus(AbstractC1646f abstractC1646f) {
        C1694h.m3117b(abstractC1646f, "context");
        return AbstractC1877ce.C1878a.m2715a(this, abstractC1646f);
    }

    public String toString() {
        return "CoroutineId(" + this.f4460b + ')';
    }
}
