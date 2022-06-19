package com.google.android.gms.internal.ads;

import me.zhanghai.android.materialprogressbar.C3681R;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzadh.class */
public final class zzadh implements zzadr {
    private final zzfc zza;
    private final zzfd zzb;
    private final String zzc;
    private String zzd;
    private zzxt zze;
    private int zzf;
    private int zzg;
    private boolean zzh;
    private long zzi;
    private zzab zzj;
    private int zzk;
    private long zzl;

    public zzadh() {
        this(null);
    }

    public zzadh(String str) {
        zzfc zzfcVar = new zzfc(new byte[128], 128);
        this.zza = zzfcVar;
        this.zzb = new zzfd(zzfcVar.zza);
        this.zzf = 0;
        this.zzl = -9223372036854775807L;
        this.zzc = str;
    }

    @Override // com.google.android.gms.internal.ads.zzadr
    public final void zza(zzfd zzfdVar) {
        zzdy.zzb(this.zze);
        while (zzfdVar.zza() > 0) {
            int i = this.zzf;
            if (i == 0) {
                while (true) {
                    if (zzfdVar.zza() <= 0) {
                        break;
                    } else if (!this.zzh) {
                        this.zzh = zzfdVar.zzk() == 11;
                    } else {
                        int zzk = zzfdVar.zzk();
                        if (zzk == 119) {
                            this.zzh = false;
                            this.zzf = 1;
                            this.zzb.zzH()[0] = (byte) 11;
                            this.zzb.zzH()[1] = (byte) C3681R.styleable.AppCompatTheme_windowActionModeOverlay;
                            this.zzg = 2;
                            break;
                        }
                        this.zzh = zzk == 11;
                    }
                }
            } else if (i != 1) {
                int min = Math.min(zzfdVar.zza(), this.zzk - this.zzg);
                zzxr.zzb(this.zze, zzfdVar, min);
                int i2 = this.zzg + min;
                this.zzg = i2;
                int i3 = this.zzk;
                if (i2 == i3) {
                    long j = this.zzl;
                    if (j != -9223372036854775807L) {
                        this.zze.zzs(j, 1, i3, 0, null);
                        this.zzl += this.zzi;
                    }
                    this.zzf = 0;
                }
            } else {
                byte[] zzH = this.zzb.zzH();
                int min2 = Math.min(zzfdVar.zza(), 128 - this.zzg);
                zzfdVar.zzB(zzH, this.zzg, min2);
                int i4 = this.zzg + min2;
                this.zzg = i4;
                if (i4 == 128) {
                    this.zza.zzh(0);
                    zzvu zzd = zzvv.zzd(this.zza);
                    zzab zzabVar = this.zzj;
                    if (zzabVar == null || zzd.zzc != zzabVar.zzz || zzd.zzb != zzabVar.zzA || !zzfn.zzP(zzd.zza, zzabVar.zzm)) {
                        zzz zzzVar = new zzz();
                        zzzVar.zzH(this.zzd);
                        zzzVar.zzS(zzd.zza);
                        zzzVar.zzw(zzd.zzc);
                        zzzVar.zzT(zzd.zzb);
                        zzzVar.zzK(this.zzc);
                        zzab zzY = zzzVar.zzY();
                        this.zzj = zzY;
                        this.zze.zzk(zzY);
                    }
                    this.zzk = zzd.zzd;
                    this.zzi = (zzd.zze * 1000000) / this.zzj.zzA;
                    this.zzb.zzF(0);
                    zzxr.zzb(this.zze, this.zzb, 128);
                    this.zzf = 2;
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzadr
    public final void zzb(zzws zzwsVar, zzafd zzafdVar) {
        zzafdVar.zzc();
        this.zzd = zzafdVar.zzb();
        this.zze = zzwsVar.zzv(zzafdVar.zza(), 1);
    }

    @Override // com.google.android.gms.internal.ads.zzadr
    public final void zzc() {
    }

    @Override // com.google.android.gms.internal.ads.zzadr
    public final void zzd(long j, int i) {
        if (j != -9223372036854775807L) {
            this.zzl = j;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzadr
    public final void zze() {
        this.zzf = 0;
        this.zzg = 0;
        this.zzh = false;
        this.zzl = -9223372036854775807L;
    }
}
