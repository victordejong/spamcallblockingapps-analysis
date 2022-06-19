package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzaua.class */
public final class zzaua implements zzava {
    private final zzava[] zza;

    public zzaua(zzava[] zzavaVarArr) {
        this.zza = zzavaVarArr;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v18 */
    /* JADX WARN: Type inference failed for: r0v20, types: [long] */
    /* JADX WARN: Type inference failed for: r0v5 */
    /* JADX WARN: Type inference failed for: r0v6 */
    @Override // com.google.android.gms.internal.ads.zzava
    public final long zza() {
        char c;
        zzava[] zzavaVarArr = this.zza;
        int length = zzavaVarArr.length;
        int i = 0;
        ?? r0 = 9223372036854775807;
        while (true) {
            c = r0;
            if (i >= length) {
                break;
            }
            long zza = zzavaVarArr[i].zza();
            char c2 = c;
            if (zza != Long.MIN_VALUE) {
                c2 = Math.min((long) c, zza);
            }
            i++;
            r0 = c2;
        }
        if (c == Long.MAX_VALUE) {
            return Long.MIN_VALUE;
        }
        return c;
    }

    @Override // com.google.android.gms.internal.ads.zzava
    public final boolean zzbr(long j) {
        boolean z;
        boolean z2 = false;
        while (true) {
            long zza = zza();
            if (zza != Long.MIN_VALUE) {
                zzava[] zzavaVarArr = this.zza;
                int length = zzavaVarArr.length;
                int i = 0;
                boolean z3 = false;
                while (true) {
                    z = z3;
                    if (i >= length) {
                        break;
                    }
                    zzava zzavaVar = zzavaVarArr[i];
                    boolean z4 = z;
                    if (zzavaVar.zza() == zza) {
                        z4 = z | zzavaVar.zzbr(j);
                    }
                    i++;
                    z3 = z4;
                }
                boolean z5 = z2 | z;
                z2 = z5;
                if (!z) {
                    z2 = z5;
                    break;
                }
            } else {
                break;
            }
        }
        return z2;
    }
}
