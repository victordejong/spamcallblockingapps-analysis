package com.google.android.gms.internal.ads;

import java.io.IOException;
import org.checkerframework.checker.nullness.qual.EnsuresNonNullIf;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzadc.class */
public abstract class zzadc {
    private zzxt zzb;
    private zzws zzc;
    private zzacx zzd;
    private long zze;
    private long zzf;
    private long zzg;
    private int zzh;
    private int zzi;
    private long zzk;
    private boolean zzl;
    private boolean zzm;
    private final zzacv zza = new zzacv();
    private zzacz zzj = new zzacz();

    public abstract long zza(zzfd zzfdVar);

    public void zzb(boolean z) {
        int i;
        if (z) {
            this.zzj = new zzacz();
            this.zzf = 0L;
            i = 0;
        } else {
            i = 1;
        }
        this.zzh = i;
        this.zze = -1L;
        this.zzg = 0L;
    }

    @EnsuresNonNullIf(expression = {"#3.format"}, result = false)
    public abstract boolean zzc(zzfd zzfdVar, long j, zzacz zzaczVar) throws IOException;

    public final int zze(zzwq zzwqVar, zzxm zzxmVar) throws IOException {
        zzdy.zzb(this.zzb);
        int i = zzfn.zza;
        int i2 = this.zzh;
        int i3 = -1;
        if (i2 == 0) {
            while (true) {
                if (!this.zza.zze(zzwqVar)) {
                    this.zzh = 3;
                    break;
                }
                this.zzk = zzwqVar.zze() - this.zzf;
                if (zzc(this.zza.zza(), this.zzf, this.zzj)) {
                    this.zzf = zzwqVar.zze();
                } else {
                    zzab zzabVar = this.zzj.zza;
                    this.zzi = zzabVar.zzA;
                    if (!this.zzm) {
                        this.zzb.zzk(zzabVar);
                        this.zzm = true;
                    }
                    zzacx zzacxVar = this.zzj.zzb;
                    if (zzacxVar != null) {
                        this.zzd = zzacxVar;
                    } else if (zzwqVar.zzc() == -1) {
                        this.zzd = new zzadb(null);
                    } else {
                        zzacw zzb = this.zza.zzb();
                        this.zzd = new zzacq(this, this.zzf, zzwqVar.zzc(), zzb.zzd + zzb.zze, zzb.zzb, (zzb.zza & 4) != 0);
                    }
                    this.zzh = 2;
                    this.zza.zzd();
                    i3 = 0;
                }
            }
            return i3;
        } else if (i2 == 1) {
            ((zzwk) zzwqVar).zzo((int) this.zzf, false);
            this.zzh = 2;
            return 0;
        } else if (i2 != 2) {
            return -1;
        } else {
            long zzd = this.zzd.zzd(zzwqVar);
            if (zzd >= 0) {
                zzxmVar.zza = zzd;
                i3 = 1;
            } else {
                if (zzd < -1) {
                    zzi(-(zzd + 2));
                }
                if (!this.zzl) {
                    zzxp zze = this.zzd.zze();
                    zzdy.zzb(zze);
                    this.zzc.zzL(zze);
                    this.zzl = true;
                }
                if (this.zzk > 0 || this.zza.zze(zzwqVar)) {
                    this.zzk = 0L;
                    zzfd zza = this.zza.zza();
                    long zza2 = zza(zza);
                    if (zza2 >= 0) {
                        long j = this.zzg;
                        if (j + zza2 >= this.zze) {
                            long zzf = zzf(j);
                            zzxr.zzb(this.zzb, zza, zza.zzd());
                            this.zzb.zzs(zzf, 1, zza.zzd(), 0, null);
                            this.zze = -1L;
                        }
                    }
                    this.zzg += zza2;
                    i3 = 0;
                } else {
                    this.zzh = 3;
                }
            }
            return i3;
        }
    }

    public final long zzf(long j) {
        return (j * 1000000) / this.zzi;
    }

    public final long zzg(long j) {
        return (this.zzi * j) / 1000000;
    }

    public final void zzh(zzws zzwsVar, zzxt zzxtVar) {
        this.zzc = zzwsVar;
        this.zzb = zzxtVar;
        zzb(true);
    }

    public void zzi(long j) {
        this.zzg = j;
    }

    public final void zzj(long j, long j2) {
        this.zza.zzc();
        if (j == 0) {
            zzb(!this.zzl);
        } else if (this.zzh == 0) {
        } else {
            long zzg = zzg(j2);
            this.zze = zzg;
            zzacx zzacxVar = this.zzd;
            int i = zzfn.zza;
            zzacxVar.zzg(zzg);
            this.zzh = 2;
        }
    }
}
