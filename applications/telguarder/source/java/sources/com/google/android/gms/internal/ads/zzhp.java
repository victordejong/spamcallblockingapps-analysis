package com.google.android.gms.internal.ads;

import android.util.Log;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzhp.class */
public final class zzhp {
    public final int index;
    private final zzhy[] zzaeq;
    private final zzoh zzaer;
    private final zzib[] zzafn;
    private final zzhx zzafo;
    private final zzne zzafu;
    public int zzagi;
    public long zzagj;
    public final zznc zzagm;
    public final Object zzagn;
    public final zznn[] zzago;
    private final boolean[] zzagp;
    public final long zzagq;
    public boolean zzagr;
    public boolean zzags;
    public boolean zzagt;
    public zzhp zzagu;
    public zzoj zzagv;
    private zzoj zzagw;

    public zzhp(zzhy[] zzhyVarArr, zzib[] zzibVarArr, long j, zzoh zzohVar, zzhx zzhxVar, zzne zzneVar, Object obj, int i, int i2, boolean z, long j2) {
        this.zzaeq = zzhyVarArr;
        this.zzafn = zzibVarArr;
        this.zzagq = j;
        this.zzaer = zzohVar;
        this.zzafo = zzhxVar;
        this.zzafu = zzneVar;
        this.zzagn = zzpg.checkNotNull(obj);
        this.index = i;
        this.zzagi = i2;
        this.zzagr = z;
        this.zzagj = j2;
        this.zzago = new zznn[zzhyVarArr.length];
        this.zzagp = new boolean[zzhyVarArr.length];
        this.zzagm = zzneVar.zza(i2, zzhxVar.zzfd());
    }

    public final void release() {
        try {
            this.zzafu.zzb(this.zzagm);
        } catch (RuntimeException e) {
            Log.e("ExoPlayerImplInternal", "Period release failed.", e);
        }
    }

    public final long zza(long j, boolean z, boolean[] zArr) {
        zzoi zzoiVar = this.zzagv.zzbhy;
        int i = 0;
        while (true) {
            boolean z2 = true;
            if (i >= zzoiVar.length) {
                break;
            }
            boolean[] zArr2 = this.zzagp;
            if (z || !this.zzagv.zza(this.zzagw, i)) {
                z2 = false;
            }
            zArr2[i] = z2;
            i++;
        }
        long zza = this.zzagm.zza(zzoiVar.zzim(), this.zzagp, this.zzago, zArr, j);
        this.zzagw = this.zzagv;
        this.zzagt = false;
        int i2 = 0;
        while (true) {
            zznn[] zznnVarArr = this.zzago;
            if (i2 >= zznnVarArr.length) {
                this.zzafo.zza(this.zzaeq, this.zzagv.zzbhx, zzoiVar);
                return zza;
            }
            if (zznnVarArr[i2] != null) {
                zzpg.checkState(zzoiVar.zzbe(i2) != null);
                this.zzagt = true;
            } else {
                zzpg.checkState(zzoiVar.zzbe(i2) == null);
            }
            i2++;
        }
    }

    public final long zzb(long j, boolean z) {
        return zza(j, false, new boolean[this.zzaeq.length]);
    }

    public final void zzc(int i, boolean z) {
        this.zzagi = i;
        this.zzagr = z;
    }

    public final long zzew() {
        return this.zzagq - this.zzagj;
    }

    public final boolean zzex() {
        if (this.zzags) {
            return !this.zzagt || this.zzagm.zzhr() == Long.MIN_VALUE;
        }
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0048 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:15:0x004a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean zzey() throws com.google.android.gms.internal.ads.zzhe {
        /*
            r4 = this;
            r0 = r4
            com.google.android.gms.internal.ads.zzoh r0 = r0.zzaer
            r1 = r4
            com.google.android.gms.internal.ads.zzib[] r1 = r1.zzafn
            r2 = r4
            com.google.android.gms.internal.ads.zznc r2 = r2.zzagm
            com.google.android.gms.internal.ads.zznu r2 = r2.zzhp()
            com.google.android.gms.internal.ads.zzoj r0 = r0.zza(r1, r2)
            r5 = r0
            r0 = r4
            com.google.android.gms.internal.ads.zzoj r0 = r0.zzagw
            r6 = r0
            r0 = r6
            if (r0 != 0) goto L23
        L1e:
            r0 = 0
            r7 = r0
            goto L44
        L23:
            r0 = 0
            r7 = r0
        L25:
            r0 = r7
            r1 = r5
            com.google.android.gms.internal.ads.zzoi r1 = r1.zzbhy
            int r1 = r1.length
            if (r0 >= r1) goto L42
            r0 = r5
            r1 = r6
            r2 = r7
            boolean r0 = r0.zza(r1, r2)
            if (r0 != 0) goto L3c
            goto L1e
        L3c:
            int r7 = r7 + 1
            goto L25
        L42:
            r0 = 1
            r7 = r0
        L44:
            r0 = r7
            if (r0 == 0) goto L4a
            r0 = 0
            return r0
        L4a:
            r0 = r4
            r1 = r5
            r0.zzagv = r1
            r0 = 1
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzhp.zzey():boolean");
    }
}
