package kotlinx.coroutines.internal;

import kotlin.C1775o;
import kotlin.p075c.AbstractC1646f;
import kotlin.p081e.p083b.C1691e;
import kotlin.p081e.p083b.C1694h;
import kotlinx.coroutines.AbstractC1796am;
import kotlinx.coroutines.AbstractC1812au;
import kotlinx.coroutines.AbstractC1866bu;
import kotlinx.coroutines.AbstractC1934k;
/* renamed from: kotlinx.coroutines.internal.n */
/* loaded from: classes-dex2jar.jar:kotlinx/coroutines/internal/n.class */
final class C1916n extends AbstractC1866bu implements AbstractC1796am {

    /* renamed from: b */
    private final Throwable f4665b;

    /* renamed from: c */
    private final String f4666c;

    public C1916n(Throwable th, String str) {
        this.f4665b = th;
        this.f4666c = str;
    }

    public /* synthetic */ C1916n(Throwable th, String str, int i, C1691e c1691e) {
        this(th, (i & 2) != 0 ? null : str);
    }

    /* JADX WARN: Code restructure failed: missing block: B:7:0x003a, code lost:
        if (r8 != null) goto L9;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final java.lang.Void m2613a() {
        /*
            r5 = this;
            r0 = r5
            java.lang.Throwable r0 = r0.f4665b
            if (r0 == 0) goto L5c
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r1 = r0
            r1.<init>()
            r6 = r0
            r0 = r6
            java.lang.String r1 = "Module with the Main dispatcher had failed to initialize"
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r5
            java.lang.String r0 = r0.f4666c
            r7 = r0
            r0 = r7
            if (r0 == 0) goto L40
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r1 = r0
            r1.<init>()
            r8 = r0
            r0 = r8
            java.lang.String r1 = ". "
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r8
            r1 = r7
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r8
            java.lang.String r0 = r0.toString()
            r8 = r0
            r0 = r8
            if (r0 == 0) goto L40
            goto L43
        L40:
            java.lang.String r0 = ""
            r8 = r0
        L43:
            r0 = r6
            r1 = r8
            java.lang.StringBuilder r0 = r0.append(r1)
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            r1 = r0
            r2 = r6
            java.lang.String r2 = r2.toString()
            r3 = r5
            java.lang.Throwable r3 = r3.f4665b
            r1.<init>(r2, r3)
            java.lang.Throwable r0 = (java.lang.Throwable) r0
            throw r0
        L5c:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            r1 = r0
            java.lang.String r2 = "Module with the Main dispatcher is missing. Add dependency providing the Main dispatcher, e.g. 'kotlinx-coroutines-android'"
            r1.<init>(r2)
            java.lang.Throwable r0 = (java.lang.Throwable) r0
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.internal.C1916n.m2613a():java.lang.Void");
    }

    @Override // kotlinx.coroutines.AbstractC1796am
    /* renamed from: a */
    public AbstractC1812au mo2612a(long j, Runnable runnable) {
        C1694h.m3117b(runnable, "block");
        m2613a();
        throw null;
    }

    @Override // kotlinx.coroutines.AbstractC1950y
    /* renamed from: a */
    public boolean mo2513a(AbstractC1646f abstractC1646f) {
        C1694h.m3117b(abstractC1646f, "context");
        m2613a();
        throw null;
    }

    /* renamed from: b */
    public Void mo2611a(long j, AbstractC1934k<? super C1775o> abstractC1934k) {
        C1694h.m3117b(abstractC1934k, "continuation");
        m2613a();
        throw null;
    }

    /* renamed from: b */
    public Void mo2512a(AbstractC1646f abstractC1646f, Runnable runnable) {
        C1694h.m3117b(abstractC1646f, "context");
        C1694h.m3117b(runnable, "block");
        m2613a();
        throw null;
    }

    @Override // kotlinx.coroutines.AbstractC1950y
    public String toString() {
        String str;
        StringBuilder sb = new StringBuilder();
        sb.append("Main[missing");
        if (this.f4665b != null) {
            str = ", cause=" + this.f4665b;
        } else {
            str = "";
        }
        sb.append(str);
        sb.append(']');
        return sb.toString();
    }
}
