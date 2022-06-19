package com.google.android.gms.internal.ads;

import androidx.recyclerview.widget.RecyclerView;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzasd.class */
public final class zzasd implements zzatd {
    private final zzatd[] zza;

    public zzasd(zzatd[] zzatdVarArr) {
        this.zza = zzatdVarArr;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v18 */
    /* JADX WARN: Type inference failed for: r0v20, types: [long] */
    /* JADX WARN: Type inference failed for: r0v5 */
    /* JADX WARN: Type inference failed for: r0v6 */
    @Override // com.google.android.gms.internal.ads.zzatd
    public final long zza() {
        char c;
        zzatd[] zzatdVarArr = this.zza;
        int length = zzatdVarArr.length;
        int i = 0;
        ?? r0 = 9223372036854775807;
        while (true) {
            c = r0;
            if (i >= length) {
                break;
            }
            long zza = zzatdVarArr[i].zza();
            char c2 = c;
            if (zza != Long.MIN_VALUE) {
                c2 = Math.min((long) c, zza);
            }
            i++;
            r0 = c2;
        }
        if (c == RecyclerView.FOREVER_NS) {
            return Long.MIN_VALUE;
        }
        return c;
    }

    @Override // com.google.android.gms.internal.ads.zzatd
    public final boolean zzb(long j) {
        boolean z;
        boolean z2 = false;
        while (true) {
            long zza = zza();
            if (zza != Long.MIN_VALUE) {
                zzatd[] zzatdVarArr = this.zza;
                int length = zzatdVarArr.length;
                int i = 0;
                boolean z3 = false;
                while (true) {
                    z = z3;
                    if (i >= length) {
                        break;
                    }
                    zzatd zzatdVar = zzatdVarArr[i];
                    boolean z4 = z;
                    if (zzatdVar.zza() == zza) {
                        z4 = z | zzatdVar.zzb(j);
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
