package com.google.android.gms.internal.ads;

import kotlin.jvm.internal.LongCompanionObject;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzmp.class */
public final class zzmp implements zznq {
    private final zznq[] zzbdk;

    public zzmp(zznq[] zznqVarArr) {
        this.zzbdk = zznqVarArr;
    }

    @Override // com.google.android.gms.internal.ads.zznq
    public final boolean zzee(long j) {
        boolean z;
        boolean z2;
        boolean z3 = false;
        do {
            long zzhn = zzhn();
            z = z3;
            if (zzhn == Long.MIN_VALUE) {
                break;
            }
            zznq[] zznqVarArr = this.zzbdk;
            int length = zznqVarArr.length;
            int i = 0;
            boolean z4 = false;
            while (true) {
                z2 = z4;
                if (i >= length) {
                    break;
                }
                zznq zznqVar = zznqVarArr[i];
                boolean z5 = z2;
                if (zznqVar.zzhn() == zzhn) {
                    z5 = z2 | zznqVar.zzee(j);
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
    /* JADX WARN: Type inference failed for: r0v18 */
    /* JADX WARN: Type inference failed for: r0v20, types: [long] */
    /* JADX WARN: Type inference failed for: r0v5 */
    /* JADX WARN: Type inference failed for: r0v6 */
    @Override // com.google.android.gms.internal.ads.zznq
    public final long zzhn() {
        char c;
        zznq[] zznqVarArr = this.zzbdk;
        int length = zznqVarArr.length;
        int i = 0;
        ?? r0 = 9223372036854775807;
        while (true) {
            c = r0;
            if (i >= length) {
                break;
            }
            long zzhn = zznqVarArr[i].zzhn();
            char c2 = c;
            if (zzhn != Long.MIN_VALUE) {
                c2 = Math.min((long) c, zzhn);
            }
            i++;
            r0 = c2;
        }
        if (c == LongCompanionObject.MAX_VALUE) {
            return Long.MIN_VALUE;
        }
        return c;
    }
}
