package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzmo.class */
public final class zzmo implements zznl {

    /* renamed from: a */
    public final zznl[] f28636a;

    public zzmo(zznl[] zznlVarArr) {
        this.f28636a = zznlVarArr;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v18 */
    /* JADX WARN: Type inference failed for: r0v19 */
    /* JADX WARN: Type inference failed for: r0v5 */
    /* JADX WARN: Type inference failed for: r0v6, types: [long] */
    /* JADX WARN: Type inference failed for: r13v0 */
    /* JADX WARN: Type inference failed for: r13v2, types: [long] */
    /* JADX WARN: Unknown variable types count: 2 */
    @Override // com.google.android.gms.internal.ads.zznl
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final long mo11766a() {
        /*
            r5 = this;
            r0 = r5
            com.google.android.gms.internal.ads.zznl[] r0 = r0.f28636a
            r6 = r0
            r0 = r6
            int r0 = r0.length
            r7 = r0
            r0 = 0
            r8 = r0
            r0 = 9223372036854775807(0x7fffffffffffffff, double:NaN)
            r9 = r0
        L_0x000f:
            r0 = r8
            r1 = r7
            if (r0 >= r1) goto L_0x003e
            r0 = r6
            r1 = r8
            r0 = r0[r1]
            long r0 = r0.mo11766a()
            r11 = r0
            r0 = r9
            r13 = r0
            r0 = r11
            r1 = -9223372036854775808
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 == 0) goto L_0x0034
            r0 = r9
            r1 = r11
            long r0 = java.lang.Math.min(r0, r1)
            r13 = r0
        L_0x0034:
            int r8 = r8 + 1
            r0 = r13
            r9 = r0
            goto L_0x000f
        L_0x003e:
            r0 = r9
            r1 = 9223372036854775807(0x7fffffffffffffff, double:NaN)
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L_0x004b
            r0 = -9223372036854775808
            return r0
        L_0x004b:
            r0 = r9
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzmo.mo11766a():long");
    }

    @Override // com.google.android.gms.internal.ads.zznl
    /* renamed from: a */
    public final boolean mo11765a(long j) {
        boolean z;
        zznl[] zznlVarArr;
        boolean z2;
        boolean z3 = false;
        do {
            long a = mo11766a();
            z = z3;
            if (a == Long.MIN_VALUE) {
                break;
            }
            z2 = false;
            for (zznl zznlVar : this.f28636a) {
                z2 = z2;
                if (zznlVar.mo11766a() == a) {
                    z2 |= zznlVar.mo11765a(j);
                }
            }
            z = z3 | z2;
            z3 = z;
        } while (z2);
        return z;
    }
}
