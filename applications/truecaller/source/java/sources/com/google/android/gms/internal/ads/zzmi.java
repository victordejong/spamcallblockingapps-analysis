package com.google.android.gms.internal.ads;

import android.content.Context;
import android.view.Display;
import android.view.Surface;
import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzmi.class */
public final class zzmi {
    private final zzlw zza = new zzlw();
    private final zzme zzb;
    private final zzmh zzc;
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

    public zzmi(Context context) {
        zzme zzmeVar;
        if (context != null) {
            Context applicationContext = context.getApplicationContext();
            zzme zzc = zzamq.zza >= 17 ? zzmg.zzc(applicationContext) : null;
            zzmeVar = zzc;
            if (zzc == null) {
                zzmeVar = zzmf.zzc(applicationContext);
            }
        } else {
            zzmeVar = null;
        }
        this.zzb = zzmeVar;
        this.zzc = zzmeVar != null ? zzmh.zza() : null;
        this.zzk = -9223372036854775807L;
        this.zzl = -9223372036854775807L;
        this.zzf = -1.0f;
        this.zzi = 1.0f;
        this.zzj = 0;
    }

    private final void zzm() {
        this.zzm = 0L;
        this.zzp = -1L;
        this.zzn = -1L;
    }

    /* JADX WARN: Code restructure failed: missing block: B:23:0x007e, code lost:
        if (java.lang.Math.abs(r6 - r5.zzg) >= r7) goto L29;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0091, code lost:
        if (r5.zza.zzd() >= 30) goto L29;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0097, code lost:
        r9 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x009c, code lost:
        if (r9 == false) goto L31;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x00a2, code lost:
        return;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final void zzn() {
        /*
            r5 = this;
            int r0 = com.google.android.gms.internal.ads.zzamq.zza
            r1 = 30
            if (r0 < r1) goto Lad
            r0 = r5
            android.view.Surface r0 = r0.zze
            if (r0 != 0) goto L12
            goto Lad
        L12:
            r0 = r5
            com.google.android.gms.internal.ads.zzlw r0 = r0.zza
            boolean r0 = r0.zzc()
            if (r0 == 0) goto L27
            r0 = r5
            com.google.android.gms.internal.ads.zzlw r0 = r0.zza
            float r0 = r0.zzg()
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
            r0 = r6
            r1 = -1082130432(0xffffffffbf800000, float:-1.0)
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            r8 = r0
            r0 = 1
            r9 = r0
            r0 = r8
            if (r0 == 0) goto L84
            r0 = r7
            r1 = -1082130432(0xffffffffbf800000, float:-1.0)
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 == 0) goto L84
            r0 = r5
            com.google.android.gms.internal.ads.zzlw r0 = r0.zza
            boolean r0 = r0.zzc()
            r10 = r0
            r0 = 1065353216(0x3f800000, float:1.0)
            r11 = r0
            r0 = r11
            r7 = r0
            r0 = r10
            if (r0 == 0) goto L73
            r0 = r11
            r7 = r0
            r0 = r5
            com.google.android.gms.internal.ads.zzlw r0 = r0.zza
            long r0 = r0.zze()
            r1 = 5000000000(0x12a05f200, double:2.470328229E-314)
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 < 0) goto L73
            r0 = 1017370378(0x3ca3d70a, float:0.02)
            r7 = r0
        L73:
            r0 = r6
            r1 = r5
            float r1 = r1.zzg
            float r0 = r0 - r1
            float r0 = java.lang.Math.abs(r0)
            r1 = r7
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 < 0) goto L97
            goto L9a
        L84:
            r0 = r8
            if (r0 != 0) goto La3
            r0 = r5
            com.google.android.gms.internal.ads.zzlw r0 = r0.zza
            int r0 = r0.zzd()
            r1 = 30
            if (r0 < r1) goto L97
            goto L9a
        L97:
            r0 = 0
            r9 = r0
        L9a:
            r0 = r9
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
            r0.zzo(r1)
        Lad:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzmi.zzn():void");
    }

    private final void zzo(boolean z) {
        Surface surface;
        if (zzamq.zza < 30 || (surface = this.zze) == null || this.zzj == Integer.MIN_VALUE) {
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
        zzmc.zza(surface, f);
    }

    private final void zzp() {
        Surface surface;
        if (zzamq.zza < 30 || (surface = this.zze) == null || this.zzj == Integer.MIN_VALUE || this.zzh == 0.0f) {
            return;
        }
        this.zzh = 0.0f;
        zzmc.zza(surface, 0.0f);
    }

    public final void zza(int i) {
        if (this.zzj == i) {
            return;
        }
        this.zzj = i;
        zzo(true);
    }

    public final void zzb() {
        if (this.zzb != null) {
            zzmh zzmhVar = this.zzc;
            Objects.requireNonNull(zzmhVar);
            zzmhVar.zzb();
            this.zzb.zza(new zzmd(this) { // from class: com.google.android.gms.internal.ads.zzmb
                private final zzmi zza;

                {
                    this.zza = this;
                }

                @Override // com.google.android.gms.internal.ads.zzmd
                public final void zza(Display display) {
                    this.zza.zzl(display);
                }
            });
        }
    }

    public final void zzc() {
        this.zzd = true;
        zzm();
        zzo(false);
    }

    public final void zzd(Surface surface) {
        Surface surface2 = surface;
        if (true == (surface instanceof zzlu)) {
            surface2 = null;
        }
        if (this.zze == surface2) {
            return;
        }
        zzp();
        this.zze = surface2;
        zzo(true);
    }

    public final void zze() {
        zzm();
    }

    public final void zzf(float f) {
        this.zzi = f;
        zzm();
        zzo(false);
    }

    public final void zzg(float f) {
        this.zzf = f;
        this.zza.zza();
        zzn();
    }

    public final void zzh(long j) {
        long j2 = this.zzn;
        if (j2 != -1) {
            this.zzp = j2;
            this.zzq = this.zzo;
        }
        this.zzm++;
        this.zza.zzb(j * 1000);
        zzn();
    }

    public final void zzi() {
        this.zzd = false;
        zzp();
    }

    public final void zzj() {
        zzme zzmeVar = this.zzb;
        if (zzmeVar != null) {
            zzmeVar.zzb();
            zzmh zzmhVar = this.zzc;
            Objects.requireNonNull(zzmhVar);
            zzmhVar.zzc();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v23, types: [long] */
    /* JADX WARN: Type inference failed for: r0v34, types: [long] */
    /* JADX WARN: Type inference failed for: r0v36, types: [long] */
    /* JADX WARN: Type inference failed for: r0v47, types: [long] */
    public final long zzk(long j) {
        char c;
        char c2 = j;
        if (this.zzp != -1) {
            c2 = j;
            if (this.zza.zzc()) {
                c2 = this.zzq + (((float) ((this.zzm - this.zzp) * this.zza.zzf())) / this.zzi);
                if (Math.abs(j - c2) > 20000000) {
                    zzm();
                    c2 = j;
                }
            }
        }
        this.zzn = this.zzm;
        this.zzo = c2;
        zzmh zzmhVar = this.zzc;
        if (zzmhVar == null || this.zzk == -9223372036854775807L) {
            return c2;
        }
        long j2 = zzmhVar.zza;
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

    public final /* bridge */ /* synthetic */ void zzl(Display display) {
        if (display == null) {
            this.zzk = -9223372036854775807L;
            this.zzl = -9223372036854775807L;
            return;
        }
        long refreshRate = (long) (1.0E9d / display.getRefreshRate());
        this.zzk = refreshRate;
        this.zzl = (refreshRate * 80) / 100;
    }
}
