package androidx.media2.exoplayer.external.source;
/* renamed from: androidx.media2.exoplayer.external.source.f */
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/f.class */
public final class C1769f implements AbstractC1757am {

    /* renamed from: a */
    protected final AbstractC1757am[] f6990a;

    public C1769f(AbstractC1757am[] abstractC1757amArr) {
        this.f6990a = abstractC1757amArr;
    }

    @Override // androidx.media2.exoplayer.external.source.AbstractC1757am
    /* renamed from: a */
    public final void mo42086a(long j) {
        for (AbstractC1757am abstractC1757am : this.f6990a) {
            abstractC1757am.mo42086a(j);
        }
    }

    @Override // androidx.media2.exoplayer.external.source.AbstractC1757am
    /* renamed from: c */
    public final boolean mo42078c(long j) {
        boolean z;
        boolean z2;
        boolean z3 = false;
        while (true) {
            long mo42076e = mo42076e();
            if (mo42076e == Long.MIN_VALUE) {
                break;
            }
            AbstractC1757am[] abstractC1757amArr = this.f6990a;
            int length = abstractC1757amArr.length;
            int i = 0;
            boolean z4 = false;
            while (true) {
                z = z4;
                if (i >= length) {
                    break;
                }
                AbstractC1757am abstractC1757am = abstractC1757amArr[i];
                long mo42076e2 = abstractC1757am.mo42076e();
                boolean z5 = mo42076e2 != Long.MIN_VALUE && mo42076e2 <= j;
                if (mo42076e2 != mo42076e) {
                    z2 = z;
                    if (!z5) {
                        i++;
                        z4 = z2;
                    }
                }
                z2 = z | abstractC1757am.mo42078c(j);
                i++;
                z4 = z2;
            }
            boolean z6 = z3 | z;
            z3 = z6;
            if (!z) {
                z3 = z6;
                break;
            }
        }
        return z3;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v18 */
    /* JADX WARN: Type inference failed for: r0v20, types: [long] */
    /* JADX WARN: Type inference failed for: r0v5 */
    /* JADX WARN: Type inference failed for: r0v6 */
    @Override // androidx.media2.exoplayer.external.source.AbstractC1757am
    /* renamed from: d */
    public final long mo42077d() {
        char c;
        AbstractC1757am[] abstractC1757amArr = this.f6990a;
        int length = abstractC1757amArr.length;
        int i = 0;
        ?? r0 = 9223372036854775807;
        while (true) {
            c = r0;
            if (i >= length) {
                break;
            }
            long mo42077d = abstractC1757amArr[i].mo42077d();
            char c2 = c;
            if (mo42077d != Long.MIN_VALUE) {
                c2 = Math.min((long) c, mo42077d);
            }
            i++;
            r0 = c2;
        }
        if (c == Long.MAX_VALUE) {
            return Long.MIN_VALUE;
        }
        return c;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v18 */
    /* JADX WARN: Type inference failed for: r0v20, types: [long] */
    /* JADX WARN: Type inference failed for: r0v5 */
    /* JADX WARN: Type inference failed for: r0v6 */
    @Override // androidx.media2.exoplayer.external.source.AbstractC1757am
    /* renamed from: e */
    public final long mo42076e() {
        char c;
        AbstractC1757am[] abstractC1757amArr = this.f6990a;
        int length = abstractC1757amArr.length;
        int i = 0;
        ?? r0 = 9223372036854775807;
        while (true) {
            c = r0;
            if (i >= length) {
                break;
            }
            long mo42076e = abstractC1757amArr[i].mo42076e();
            char c2 = c;
            if (mo42076e != Long.MIN_VALUE) {
                c2 = Math.min((long) c, mo42076e);
            }
            i++;
            r0 = c2;
        }
        if (c == Long.MAX_VALUE) {
            return Long.MIN_VALUE;
        }
        return c;
    }
}
