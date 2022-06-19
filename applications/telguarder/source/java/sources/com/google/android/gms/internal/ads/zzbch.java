package com.google.android.gms.internal.ads;

import com.telguarder.ApplicationConstants;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbch.class */
public final class zzbch implements zzhx {
    private int zzbih;
    private final zzor zzeof;
    private long zzeog;
    private long zzeoh;
    private long zzeoi;
    private long zzeoj;
    private boolean zzeok;

    public zzbch() {
        this(15000, 30000, 2500L, ApplicationConstants.CALL_WIDGET_TOOLTIP_HIDE_DELAY);
    }

    private zzbch(int i, int i2, long j, long j2) {
        this.zzeof = new zzor(true, 65536);
        this.zzeog = 15000000L;
        this.zzeoh = 30000000L;
        this.zzeoi = 2500000L;
        this.zzeoj = 5000000L;
    }

    private final void zzk(boolean z) {
        this.zzbih = 0;
        this.zzeok = false;
        if (z) {
            this.zzeof.reset();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzhx
    public final void onStopped() {
        zzk(true);
    }

    @Override // com.google.android.gms.internal.ads.zzhx
    public final void zza(zzhy[] zzhyVarArr, zznu zznuVar, zzoi zzoiVar) {
        this.zzbih = 0;
        for (int i = 0; i < zzhyVarArr.length; i++) {
            if (zzoiVar.zzbe(i) != null) {
                this.zzbih += zzpt.zzbp(zzhyVarArr[i].getTrackType());
            }
        }
        this.zzeof.zzbf(this.zzbih);
    }

    /* JADX WARN: Type inference failed for: r0v13, types: [long] */
    /* JADX WARN: Type inference failed for: r0v15, types: [long] */
    @Override // com.google.android.gms.internal.ads.zzhx
    public final boolean zzc(long j, boolean z) {
        boolean z2;
        synchronized (this) {
            char c = z ? this.zzeoj : this.zzeoi;
            z2 = c <= 0 || j >= c;
        }
        return z2;
    }

    public final void zzdm(int i) {
        synchronized (this) {
            this.zzeoi = i * 1000;
        }
    }

    public final void zzdn(int i) {
        synchronized (this) {
            this.zzeoj = i * 1000;
        }
    }

    public final void zzds(int i) {
        synchronized (this) {
            this.zzeog = i * 1000;
        }
    }

    public final void zzdt(int i) {
        synchronized (this) {
            this.zzeoh = i * 1000;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:27:0x0060, code lost:
        if (r12 == false) goto L28;
     */
    @Override // com.google.android.gms.internal.ads.zzhx
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean zzdt(long r6) {
        /*
            r5 = this;
            r0 = r5
            monitor-enter(r0)
            r0 = r5
            long r0 = r0.zzeoh     // Catch: java.lang.Throwable -> L71
            r8 = r0
            r0 = 0
            r10 = r0
            r0 = r6
            r1 = r8
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 <= 0) goto L16
            r0 = 0
            r11 = r0
            goto L28
        L16:
            r0 = r6
            r1 = r5
            long r1 = r1.zzeog     // Catch: java.lang.Throwable -> L71
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 >= 0) goto L25
            r0 = 2
            r11 = r0
            goto L28
        L25:
            r0 = 1
            r11 = r0
        L28:
            r0 = r5
            com.google.android.gms.internal.ads.zzor r0 = r0.zzeof     // Catch: java.lang.Throwable -> L71
            int r0 = r0.zziq()     // Catch: java.lang.Throwable -> L71
            r1 = r5
            int r1 = r1.zzbih     // Catch: java.lang.Throwable -> L71
            if (r0 < r1) goto L3c
            r0 = 1
            r12 = r0
            goto L3f
        L3c:
            r0 = 0
            r12 = r0
        L3f:
            r0 = r11
            r1 = 2
            if (r0 == r1) goto L63
            r0 = r10
            r13 = r0
            r0 = r11
            r1 = 1
            if (r0 != r1) goto L66
            r0 = r10
            r13 = r0
            r0 = r5
            boolean r0 = r0.zzeok     // Catch: java.lang.Throwable -> L71
            if (r0 == 0) goto L66
            r0 = r10
            r13 = r0
            r0 = r12
            if (r0 != 0) goto L66
        L63:
            r0 = 1
            r13 = r0
        L66:
            r0 = r5
            r1 = r13
            r0.zzeok = r1     // Catch: java.lang.Throwable -> L71
            r0 = r5
            monitor-exit(r0)
            r0 = r13
            return r0
        L71:
            r14 = move-exception
            r0 = r5
            monitor-exit(r0)
            r0 = r14
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzbch.zzdt(long):boolean");
    }

    @Override // com.google.android.gms.internal.ads.zzhx
    public final void zzfb() {
        zzk(false);
    }

    @Override // com.google.android.gms.internal.ads.zzhx
    public final void zzfc() {
        zzk(true);
    }

    @Override // com.google.android.gms.internal.ads.zzhx
    public final zzol zzfd() {
        return this.zzeof;
    }
}
