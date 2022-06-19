package com.google.android.gms.internal.ads;

import androidx.recyclerview.widget.RecyclerView;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzgr.class */
public final class zzgr implements zziw {
    public final zziw[] zza;

    public zzgr(zziw[] zziwVarArr) {
        this.zza = zziwVarArr;
    }

    @Override // com.google.android.gms.internal.ads.zziw
    public final void zzf(long j) {
        for (zziw zziwVar : this.zza) {
            zziwVar.zzf(j);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v18 */
    /* JADX WARN: Type inference failed for: r0v20, types: [long] */
    /* JADX WARN: Type inference failed for: r0v5 */
    /* JADX WARN: Type inference failed for: r0v6 */
    @Override // com.google.android.gms.internal.ads.zziw
    public final long zzh() {
        char c;
        zziw[] zziwVarArr = this.zza;
        int length = zziwVarArr.length;
        int i = 0;
        ?? r0 = 9223372036854775807;
        while (true) {
            c = r0;
            if (i >= length) {
                break;
            }
            long zzh = zziwVarArr[i].zzh();
            char c2 = c;
            if (zzh != Long.MIN_VALUE) {
                c2 = Math.min((long) c, zzh);
            }
            i++;
            r0 = c2;
        }
        if (c == RecyclerView.FOREVER_NS) {
            return Long.MIN_VALUE;
        }
        return c;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v18 */
    /* JADX WARN: Type inference failed for: r0v20, types: [long] */
    /* JADX WARN: Type inference failed for: r0v5 */
    /* JADX WARN: Type inference failed for: r0v6 */
    @Override // com.google.android.gms.internal.ads.zziw
    public final long zzk() {
        char c;
        zziw[] zziwVarArr = this.zza;
        int length = zziwVarArr.length;
        int i = 0;
        ?? r0 = 9223372036854775807;
        while (true) {
            c = r0;
            if (i >= length) {
                break;
            }
            long zzk = zziwVarArr[i].zzk();
            char c2 = c;
            if (zzk != Long.MIN_VALUE) {
                c2 = Math.min((long) c, zzk);
            }
            i++;
            r0 = c2;
        }
        if (c == RecyclerView.FOREVER_NS) {
            return Long.MIN_VALUE;
        }
        return c;
    }

    @Override // com.google.android.gms.internal.ads.zziw
    public final boolean zzl(long j) {
        boolean z;
        boolean z2;
        boolean z3 = false;
        while (true) {
            long zzk = zzk();
            if (zzk != Long.MIN_VALUE) {
                zziw[] zziwVarArr = this.zza;
                int length = zziwVarArr.length;
                int i = 0;
                boolean z4 = false;
                while (true) {
                    z = z4;
                    if (i >= length) {
                        break;
                    }
                    zziw zziwVar = zziwVarArr[i];
                    long zzk2 = zziwVar.zzk();
                    boolean z5 = zzk2 != Long.MIN_VALUE && zzk2 <= j;
                    if (zzk2 != zzk) {
                        z2 = z;
                        if (!z5) {
                            i++;
                            z4 = z2;
                        }
                    }
                    z2 = z | zziwVar.zzl(j);
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

    @Override // com.google.android.gms.internal.ads.zziw
    public final boolean zzm() {
        for (zziw zziwVar : this.zza) {
            if (zziwVar.zzm()) {
                return true;
            }
        }
        return false;
    }
}
