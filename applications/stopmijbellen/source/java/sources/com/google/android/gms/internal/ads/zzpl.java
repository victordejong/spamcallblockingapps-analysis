package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzpl.class */
public final class zzpl implements zzrp {
    public final zzrp[] zza;

    public zzpl(zzrp[] zzrpVarArr) {
        this.zza = zzrpVarArr;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v18 */
    /* JADX WARN: Type inference failed for: r0v20, types: [long] */
    /* JADX WARN: Type inference failed for: r0v5 */
    /* JADX WARN: Type inference failed for: r0v6 */
    @Override // com.google.android.gms.internal.ads.zzrp
    public final long zzb() {
        char c;
        zzrp[] zzrpVarArr = this.zza;
        int length = zzrpVarArr.length;
        int i = 0;
        ?? r0 = 9223372036854775807;
        while (true) {
            c = r0;
            if (i >= length) {
                break;
            }
            long zzb = zzrpVarArr[i].zzb();
            char c2 = c;
            if (zzb != Long.MIN_VALUE) {
                c2 = Math.min((long) c, zzb);
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
    @Override // com.google.android.gms.internal.ads.zzrp
    public final long zzc() {
        char c;
        zzrp[] zzrpVarArr = this.zza;
        int length = zzrpVarArr.length;
        int i = 0;
        ?? r0 = 9223372036854775807;
        while (true) {
            c = r0;
            if (i >= length) {
                break;
            }
            long zzc = zzrpVarArr[i].zzc();
            char c2 = c;
            if (zzc != Long.MIN_VALUE) {
                c2 = Math.min((long) c, zzc);
            }
            i++;
            r0 = c2;
        }
        if (c == Long.MAX_VALUE) {
            return Long.MIN_VALUE;
        }
        return c;
    }

    @Override // com.google.android.gms.internal.ads.zzrp
    public final void zzl(long j) {
        for (zzrp zzrpVar : this.zza) {
            zzrpVar.zzl(j);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzrp
    public final boolean zzn(long j) {
        boolean z;
        boolean z2;
        boolean z3 = false;
        while (true) {
            long zzc = zzc();
            if (zzc != Long.MIN_VALUE) {
                zzrp[] zzrpVarArr = this.zza;
                int length = zzrpVarArr.length;
                int i = 0;
                boolean z4 = false;
                while (true) {
                    z = z4;
                    if (i >= length) {
                        break;
                    }
                    zzrp zzrpVar = zzrpVarArr[i];
                    long zzc2 = zzrpVar.zzc();
                    boolean z5 = zzc2 != Long.MIN_VALUE && zzc2 <= j;
                    if (zzc2 != zzc) {
                        z2 = z;
                        if (!z5) {
                            i++;
                            z4 = z2;
                        }
                    }
                    z2 = z | zzrpVar.zzn(j);
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

    @Override // com.google.android.gms.internal.ads.zzrp
    public final boolean zzo() {
        for (zzrp zzrpVar : this.zza) {
            if (zzrpVar.zzo()) {
                return true;
            }
        }
        return false;
    }
}
