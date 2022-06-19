package com.google.android.gms.internal.ads;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/eae.class */
public final class eae implements ebf {

    /* renamed from: a */
    private final ebf[] f48460a;

    public eae(ebf[] ebfVarArr) {
        this.f48460a = ebfVarArr;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v18 */
    /* JADX WARN: Type inference failed for: r0v20, types: [long] */
    /* JADX WARN: Type inference failed for: r0v5 */
    /* JADX WARN: Type inference failed for: r0v6 */
    @Override // com.google.android.gms.internal.ads.ebf
    /* renamed from: K_ */
    public final long mo15316K_() {
        char c;
        ebf[] ebfVarArr = this.f48460a;
        int length = ebfVarArr.length;
        int i = 0;
        ?? r0 = 9223372036854775807;
        while (true) {
            c = r0;
            if (i >= length) {
                break;
            }
            long mo15316K_ = ebfVarArr[i].mo15316K_();
            char c2 = c;
            if (mo15316K_ != Long.MIN_VALUE) {
                c2 = Math.min((long) c, mo15316K_);
            }
            i++;
            r0 = c2;
        }
        if (c == Long.MAX_VALUE) {
            return Long.MIN_VALUE;
        }
        return c;
    }

    @Override // com.google.android.gms.internal.ads.ebf
    /* renamed from: a */
    public final boolean mo15315a(long j) {
        boolean z;
        boolean z2;
        boolean z3 = false;
        do {
            long mo15316K_ = mo15316K_();
            z = z3;
            if (mo15316K_ == Long.MIN_VALUE) {
                break;
            }
            ebf[] ebfVarArr = this.f48460a;
            int length = ebfVarArr.length;
            int i = 0;
            boolean z4 = false;
            while (true) {
                z2 = z4;
                if (i >= length) {
                    break;
                }
                ebf ebfVar = ebfVarArr[i];
                boolean z5 = z2;
                if (ebfVar.mo15316K_() == mo15316K_) {
                    z5 = z2 | ebfVar.mo15315a(j);
                }
                i++;
                z4 = z5;
            }
            z = z3 | z2;
            z3 = z;
        } while (z2);
        return z;
    }
}
