package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dpq.class */
public final class dpq implements dqr {

    /* renamed from: a */
    private final dqr[] f15297a;

    public dpq(dqr[] dqrVarArr) {
        this.f15297a = dqrVarArr;
    }

    @Override // com.google.android.gms.internal.ads.dqr
    /* renamed from: a */
    public final boolean mo8844a(long j) {
        boolean z;
        boolean z2;
        boolean z3 = false;
        do {
            long mo8843n_ = mo8843n_();
            z = z3;
            if (mo8843n_ == Long.MIN_VALUE) {
                break;
            }
            dqr[] dqrVarArr = this.f15297a;
            int length = dqrVarArr.length;
            int i = 0;
            boolean z4 = false;
            while (true) {
                z2 = z4;
                if (i >= length) {
                    break;
                }
                dqr dqrVar = dqrVarArr[i];
                boolean z5 = z2;
                if (dqrVar.mo8843n_() == mo8843n_) {
                    z5 = z2 | dqrVar.mo8844a(j);
                }
                i++;
                z4 = z5;
            }
            z = z3 | z2;
            z3 = z;
        } while (z2);
        return z;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v19 */
    /* JADX WARN: Type inference failed for: r0v21, types: [long] */
    /* JADX WARN: Type inference failed for: r0v5 */
    /* JADX WARN: Type inference failed for: r0v6 */
    @Override // com.google.android.gms.internal.ads.dqr
    /* renamed from: n_ */
    public final long mo8843n_() {
        char c;
        dqr[] dqrVarArr = this.f15297a;
        int length = dqrVarArr.length;
        int i = 0;
        ?? r0 = 9223372036854775807;
        while (true) {
            c = r0;
            if (i >= length) {
                break;
            }
            long mo8843n_ = dqrVarArr[i].mo8843n_();
            char c2 = c;
            if (mo8843n_ != Long.MIN_VALUE) {
                c2 = Math.min((long) c, mo8843n_);
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
}
