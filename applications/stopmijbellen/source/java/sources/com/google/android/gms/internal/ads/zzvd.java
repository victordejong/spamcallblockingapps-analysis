package com.google.android.gms.internal.ads;

import android.content.Context;
import android.util.Log;
import android.view.Display;
import android.view.Surface;
import java.util.Objects;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzvd.class */
public final class zzvd {
    private final zzus zza = new zzus();
    private final zzuz zzb;
    private final zzvc zzc;
    private boolean zzd;
    private Surface zze;
    private float zzf;
    private float zzg;
    private float zzh;
    private float zzi;
    private int zzj;
    private long zzk;
    private long zzl;
    private long zzm;
    private long zzn;
    private long zzo;
    private long zzp;
    private long zzq;

    public zzvd(Context context) {
        zzuz zzuzVar;
        if (context != null) {
            Context applicationContext = context.getApplicationContext();
            zzuz zzc = zzfn.zza >= 17 ? zzvb.zzc(applicationContext) : null;
            zzuzVar = zzc;
            if (zzc == null) {
                zzuzVar = zzva.zzc(applicationContext);
            }
        } else {
            zzuzVar = null;
        }
        this.zzb = zzuzVar;
        this.zzc = zzuzVar != null ? zzvc.zza() : null;
        this.zzk = -9223372036854775807L;
        this.zzl = -9223372036854775807L;
        this.zzf = -1.0f;
        this.zzi = 1.0f;
        this.zzj = 0;
    }

    public static /* synthetic */ void zzb(zzvd zzvdVar, Display display) {
        if (display != null) {
            long refreshRate = (long) (1.0E9d / display.getRefreshRate());
            zzvdVar.zzk = refreshRate;
            zzvdVar.zzl = (refreshRate * 80) / 100;
            return;
        }
        Log.w("VideoFrameReleaseHelper", "Unable to query display refresh rate");
        zzvdVar.zzk = -9223372036854775807L;
        zzvdVar.zzl = -9223372036854775807L;
    }

    private final void zzm() {
        Surface surface;
        if (zzfn.zza < 30 || (surface = this.zze) == null || this.zzj == Integer.MIN_VALUE || this.zzh == 0.0f) {
            return;
        }
        this.zzh = 0.0f;
        zzuy.zza(surface, 0.0f);
    }

    private final void zzn() {
        this.zzm = 0L;
        this.zzp = -1L;
        this.zzn = -1L;
    }

    /* JADX WARN: Code restructure failed: missing block: B:23:0x007f, code lost:
        if (java.lang.Math.abs(r6 - r5.zzg) >= r7) goto L29;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0093, code lost:
        if (r5.zza.zzb() >= 30) goto L29;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0099, code lost:
        r8 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x009c, code lost:
        if (r8 == false) goto L31;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x00a2, code lost:
        return;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final void zzo() {
        /*
            r5 = this;
            int r0 = com.google.android.gms.internal.ads.zzfn.zza
            r1 = 30
            if (r0 < r1) goto Lad
            r0 = r5
            android.view.Surface r0 = r0.zze
            if (r0 != 0) goto L12
            goto Lad
        L12:
            r0 = r5
            com.google.android.gms.internal.ads.zzus r0 = r0.zza
            boolean r0 = r0.zzg()
            if (r0 == 0) goto L27
            r0 = r5
            com.google.android.gms.internal.ads.zzus r0 = r0.zza
            float r0 = r0.zza()
            r6 = r0
            goto L2c
        L27:
            r0 = r5
            float r0 = r0.zzf
            r6 = r0
        L2c:
            r0 = r5
            float r0 = r0.zzg
            r7 = r0
            r0 = r6
            r1 = r7
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L38
            return
        L38:
            r0 = 1
            r8 = r0
            r0 = r6
            r1 = -1082130432(0xffffffffbf800000, float:-1.0)
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            r9 = r0
            r0 = r9
            if (r0 == 0) goto L85
            r0 = r7
            r1 = -1082130432(0xffffffffbf800000, float:-1.0)
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 == 0) goto L85
            r0 = r5
            com.google.android.gms.internal.ads.zzus r0 = r0.zza
            boolean r0 = r0.zzg()
            r10 = r0
            r0 = 1065353216(0x3f800000, float:1.0)
            r11 = r0
            r0 = r11
            r7 = r0
            r0 = r10
            if (r0 == 0) goto L74
            r0 = r11
            r7 = r0
            r0 = r5
            com.google.android.gms.internal.ads.zzus r0 = r0.zza
            long r0 = r0.zzd()
            r1 = 5000000000(0x12a05f200, double:2.470328229E-314)
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 < 0) goto L74
            r0 = 1017370378(0x3ca3d70a, float:0.02)
            r7 = r0
        L74:
            r0 = r6
            r1 = r5
            float r1 = r1.zzg
            float r0 = r0 - r1
            float r0 = java.lang.Math.abs(r0)
            r1 = r7
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 < 0) goto L99
            goto L9b
        L85:
            r0 = r9
            if (r0 != 0) goto La3
            r0 = r5
            com.google.android.gms.internal.ads.zzus r0 = r0.zza
            int r0 = r0.zzb()
            r1 = 30
            if (r0 < r1) goto L99
            goto L9b
        L99:
            r0 = 0
            r8 = r0
        L9b:
            r0 = r8
            if (r0 == 0) goto La2
            goto La3
        La2:
            return
        La3:
            r0 = r5
            r1 = r6
            r0.zzg = r1
            r0 = r5
            r1 = 0
            r0.zzp(r1)
        Lad:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzvd.zzo():void");
    }

    private final void zzp(boolean z) {
        Surface surface;
        if (zzfn.zza < 30 || (surface = this.zze) == null || this.zzj == Integer.MIN_VALUE) {
            return;
        }
        float f = 0.0f;
        if (this.zzd) {
            float f2 = this.zzg;
            f = 0.0f;
            if (f2 != -1.0f) {
                f = this.zzi * f2;
            }
        }
        if (!z && this.zzh == f) {
            return;
        }
        this.zzh = f;
        zzuy.zza(surface, f);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v23, types: [long] */
    /* JADX WARN: Type inference failed for: r0v34, types: [long] */
    /* JADX WARN: Type inference failed for: r0v36, types: [long] */
    /* JADX WARN: Type inference failed for: r0v47, types: [long] */
    public final long zza(long j) {
        char c;
        char c2 = j;
        if (this.zzp != -1) {
            c2 = j;
            if (this.zza.zzg()) {
                c2 = this.zzq + (((float) ((this.zzm - this.zzp) * this.zza.zzc())) / this.zzi);
                if (Math.abs(j - c2) > 20000000) {
                    zzn();
                    c2 = j;
                }
            }
        }
        this.zzn = this.zzm;
        this.zzo = c2;
        zzvc zzvcVar = this.zzc;
        if (zzvcVar == null || this.zzk == -9223372036854775807L) {
            return c2;
        }
        long j2 = zzvcVar.zza;
        if (j2 == -9223372036854775807L) {
            return c2;
        }
        long j3 = this.zzk;
        char c3 = (((c2 - j2) / j3) * j3) + j2;
        if (c2 <= c3) {
            c = c3 - j3;
        } else {
            c = c3;
            c3 = j3 + c3;
        }
        if (c3 - c2 >= c2 - c) {
            c3 = c;
        }
        return c3 - this.zzl;
    }

    public final void zzc() {
        zzuz zzuzVar = this.zzb;
        if (zzuzVar != null) {
            zzuzVar.zza();
            zzvc zzvcVar = this.zzc;
            Objects.requireNonNull(zzvcVar);
            zzvcVar.zzc();
        }
    }

    public final void zzd() {
        if (this.zzb != null) {
            zzvc zzvcVar = this.zzc;
            Objects.requireNonNull(zzvcVar);
            zzvcVar.zzb();
            this.zzb.zzb(new zzux(this));
        }
    }

    public final void zze(float f) {
        this.zzf = f;
        this.zza.zzf();
        zzo();
    }

    public final void zzf(long j) {
        long j2 = this.zzn;
        if (j2 != -1) {
            this.zzp = j2;
            this.zzq = this.zzo;
        }
        this.zzm++;
        this.zza.zze(j * 1000);
        zzo();
    }

    public final void zzg(float f) {
        this.zzi = f;
        zzn();
        zzp(false);
    }

    public final void zzh() {
        zzn();
    }

    public final void zzi() {
        this.zzd = true;
        zzn();
        zzp(false);
    }

    public final void zzj() {
        this.zzd = false;
        zzm();
    }

    public final void zzk(Surface surface) {
        Surface surface2 = surface;
        if (true == (surface instanceof zzuq)) {
            surface2 = null;
        }
        if (this.zze == surface2) {
            return;
        }
        zzm();
        this.zze = surface2;
        zzp(true);
    }

    public final void zzl(int i) {
        if (this.zzj == i) {
            return;
        }
        this.zzj = i;
        zzp(true);
    }
}
