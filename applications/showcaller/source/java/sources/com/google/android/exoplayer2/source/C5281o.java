package com.google.android.exoplayer2.source;
/* renamed from: com.google.android.exoplayer2.source.o */
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/source/o.class */
public class C5281o implements AbstractC5211c0 {

    /* renamed from: d */
    protected final AbstractC5211c0[] f16759d;

    public C5281o(AbstractC5211c0[] abstractC5211c0Arr) {
        this.f16759d = abstractC5211c0Arr;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v19 */
    /* JADX WARN: Type inference failed for: r0v21, types: [long] */
    /* JADX WARN: Type inference failed for: r0v5 */
    /* JADX WARN: Type inference failed for: r0v6 */
    @Override // com.google.android.exoplayer2.source.AbstractC5211c0
    /* renamed from: a */
    public final long mo19768a() {
        char c;
        AbstractC5211c0[] abstractC5211c0Arr = this.f16759d;
        int length = abstractC5211c0Arr.length;
        int i = 0;
        ?? r0 = 9223372036854775807;
        while (true) {
            c = r0;
            if (i >= length) {
                break;
            }
            long mo19768a = abstractC5211c0Arr[i].mo19768a();
            char c2 = c;
            if (mo19768a != Long.MIN_VALUE) {
                c2 = Math.min((long) c, mo19768a);
            }
            i++;
            r0 = c2;
        }
        char c3 = c;
        if (c == Long.MAX_VALUE) {
            c3 = 0;
        }
        return c3;
    }

    @Override // com.google.android.exoplayer2.source.AbstractC5211c0
    /* renamed from: b */
    public boolean mo19766b(long j) {
        boolean z;
        boolean z2;
        boolean z3 = false;
        while (true) {
            long mo19768a = mo19768a();
            if (mo19768a != Long.MIN_VALUE) {
                AbstractC5211c0[] abstractC5211c0Arr = this.f16759d;
                int length = abstractC5211c0Arr.length;
                int i = 0;
                boolean z4 = false;
                while (true) {
                    z = z4;
                    if (i >= length) {
                        break;
                    }
                    AbstractC5211c0 abstractC5211c0 = abstractC5211c0Arr[i];
                    long mo19768a2 = abstractC5211c0.mo19768a();
                    boolean z5 = mo19768a2 != Long.MIN_VALUE && mo19768a2 <= j;
                    if (mo19768a2 != mo19768a) {
                        z2 = z;
                        if (!z5) {
                            i++;
                            z4 = z2;
                        }
                    }
                    z2 = z | abstractC5211c0.mo19766b(j);
                    i++;
                    z4 = z2;
                }
                boolean z6 = z3 | z;
                z3 = z6;
                if (!z) {
                    z3 = z6;
                    break;
                }
            } else {
                break;
            }
        }
        return z3;
    }

    @Override // com.google.android.exoplayer2.source.AbstractC5211c0
    /* renamed from: d */
    public boolean mo19762d() {
        for (AbstractC5211c0 abstractC5211c0 : this.f16759d) {
            if (abstractC5211c0.mo19762d()) {
                return true;
            }
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v19 */
    /* JADX WARN: Type inference failed for: r0v21, types: [long] */
    /* JADX WARN: Type inference failed for: r0v5 */
    /* JADX WARN: Type inference failed for: r0v6 */
    @Override // com.google.android.exoplayer2.source.AbstractC5211c0
    /* renamed from: e */
    public final long mo19760e() {
        char c;
        AbstractC5211c0[] abstractC5211c0Arr = this.f16759d;
        int length = abstractC5211c0Arr.length;
        int i = 0;
        ?? r0 = 9223372036854775807;
        while (true) {
            c = r0;
            if (i >= length) {
                break;
            }
            long mo19760e = abstractC5211c0Arr[i].mo19760e();
            char c2 = c;
            if (mo19760e != Long.MIN_VALUE) {
                c2 = Math.min((long) c, mo19760e);
            }
            i++;
            r0 = c2;
        }
        char c3 = c;
        if (c == Long.MAX_VALUE) {
            c3 = 0;
        }
        return c3;
    }

    @Override // com.google.android.exoplayer2.source.AbstractC5211c0
    /* renamed from: f */
    public final void mo19758f(long j) {
        for (AbstractC5211c0 abstractC5211c0 : this.f16759d) {
            abstractC5211c0.mo19758f(j);
        }
    }
}
