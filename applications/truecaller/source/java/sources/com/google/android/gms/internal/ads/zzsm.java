package com.google.android.gms.internal.ads;

import java.io.IOException;
import org.checkerframework.checker.nullness.qual.EnsuresNonNullIf;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzsm.class */
public abstract class zzsm {
    private zzox zzb;
    private zznx zzc;
    private zzsh zzd;
    private long zze;
    private long zzf;
    private long zzg;
    private int zzh;
    private int zzi;
    private long zzk;
    private boolean zzl;
    private boolean zzm;
    private final zzsf zza = new zzsf();
    private zzsk zzj = new zzsk();

    public void zza(boolean z) {
        int i;
        if (z) {
            this.zzj = new zzsk();
            this.zzf = 0L;
            i = 0;
        } else {
            i = 1;
        }
        this.zzh = i;
        this.zze = -1L;
        this.zzg = 0L;
    }

    public abstract long zzb(zzamf zzamfVar);

    @EnsuresNonNullIf(expression = {"#3.format"}, result = false)
    public abstract boolean zzc(zzamf zzamfVar, long j, zzsk zzskVar) throws IOException;

    public final void zze(zznx zznxVar, zzox zzoxVar) {
        this.zzc = zznxVar;
        this.zzb = zzoxVar;
        zza(true);
    }

    public final void zzf(long j, long j2) {
        this.zza.zza();
        if (j == 0) {
            zza(!this.zzl);
        } else if (this.zzh == 0) {
        } else {
            long zzi = zzi(j2);
            this.zze = zzi;
            zzsh zzshVar = this.zzd;
            int i = zzamq.zza;
            zzshVar.zzf(zzi);
            this.zzh = 2;
        }
    }

    public final int zzg(zznv zznvVar, zzoq zzoqVar) throws IOException {
        zzakt.zze(this.zzb);
        int i = zzamq.zza;
        int i2 = this.zzh;
        int i3 = -1;
        if (i2 == 0) {
            while (true) {
                if (!this.zza.zzb(zznvVar)) {
                    this.zzh = 3;
                    break;
                }
                this.zzk = zznvVar.zzn() - this.zzf;
                if (zzc(this.zza.zzd(), this.zzf, this.zzj)) {
                    this.zzf = zznvVar.zzn();
                } else {
                    zzafv zzafvVar = this.zzj.zza;
                    this.zzi = zzafvVar.zzz;
                    if (!this.zzm) {
                        this.zzb.zzs(zzafvVar);
                        this.zzm = true;
                    }
                    zzsh zzshVar = this.zzj.zzb;
                    if (zzshVar != null) {
                        this.zzd = zzshVar;
                    } else if (zznvVar.zzo() == -1) {
                        this.zzd = new zzsl(null);
                    } else {
                        zzsg zzc = this.zza.zzc();
                        this.zzd = new zzsa(this, this.zzf, zznvVar.zzo(), zzc.zzd + zzc.zze, zzc.zzb, (zzc.zza & 4) != 0);
                    }
                    this.zzh = 2;
                    this.zza.zze();
                    i3 = 0;
                }
            }
            return i3;
        } else if (i2 == 1) {
            ((zznp) zznvVar).zzd((int) this.zzf, false);
            this.zzh = 2;
            return 0;
        } else if (i2 != 2) {
            return -1;
        } else {
            long zze = this.zzd.zze(zznvVar);
            if (zze >= 0) {
                zzoqVar.zza = zze;
                i3 = 1;
            } else {
                if (zze < -1) {
                    zzj(-(zze + 2));
                }
                if (!this.zzl) {
                    zzot zzg = this.zzd.zzg();
                    zzakt.zze(zzg);
                    this.zzc.zzD(zzg);
                    this.zzl = true;
                }
                if (this.zzk > 0 || this.zza.zzb(zznvVar)) {
                    this.zzk = 0L;
                    zzamf zzd = this.zza.zzd();
                    long zzb = zzb(zzd);
                    if (zzb >= 0) {
                        long j = this.zzg;
                        if (j + zzb >= this.zze) {
                            long zzh = zzh(j);
                            zzov.zzb(this.zzb, zzd, zzd.zze());
                            this.zzb.zzv(zzh, 1, zzd.zze(), 0, null);
                            this.zze = -1L;
                        }
                    }
                    this.zzg += zzb;
                    i3 = 0;
                } else {
                    this.zzh = 3;
                }
            }
            return i3;
        }
    }

    public final long zzh(long j) {
        return (j * 1000000) / this.zzi;
    }

    public final long zzi(long j) {
        return (this.zzi * j) / 1000000;
    }

    public void zzj(long j) {
        this.zzg = j;
    }
}
