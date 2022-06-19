package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzaef.class */
public final class zzaef implements zzadr {
    private final zzfd zza;
    private final zzxj zzb;
    private final String zzc;
    private zzxt zzd;
    private String zze;
    private int zzf;
    private int zzg;
    private boolean zzh;
    private boolean zzi;
    private long zzj;
    private int zzk;
    private long zzl;

    public zzaef() {
        this(null);
    }

    public zzaef(String str) {
        this.zzf = 0;
        zzfd zzfdVar = new zzfd(4);
        this.zza = zzfdVar;
        zzfdVar.zzH()[0] = (byte) (-1);
        this.zzb = new zzxj();
        this.zzl = -9223372036854775807L;
        this.zzc = str;
    }

    @Override // com.google.android.gms.internal.ads.zzadr
    public final void zza(zzfd zzfdVar) {
        zzxj zzxjVar;
        zzdy.zzb(this.zzd);
        while (zzfdVar.zza() > 0) {
            int i = this.zzf;
            if (i == 0) {
                byte[] zzH = zzfdVar.zzH();
                int zzc = zzfdVar.zzc();
                int zzd = zzfdVar.zzd();
                while (true) {
                    if (zzc >= zzd) {
                        zzfdVar.zzF(zzd);
                        break;
                    }
                    byte b = zzH[zzc];
                    boolean z = (b & 255) == 255;
                    boolean z2 = this.zzi && (b & 224) == 224;
                    this.zzi = z;
                    if (z2) {
                        zzfdVar.zzF(zzc + 1);
                        this.zzi = false;
                        this.zza.zzH()[1] = zzH[zzc];
                        this.zzg = 2;
                        this.zzf = 1;
                        break;
                    }
                    zzc++;
                }
            } else if (i != 1) {
                int min = Math.min(zzfdVar.zza(), this.zzk - this.zzg);
                zzxr.zzb(this.zzd, zzfdVar, min);
                int i2 = this.zzg + min;
                this.zzg = i2;
                int i3 = this.zzk;
                if (i2 >= i3) {
                    long j = this.zzl;
                    if (j != -9223372036854775807L) {
                        this.zzd.zzs(j, 1, i3, 0, null);
                        this.zzl += this.zzj;
                    }
                    this.zzg = 0;
                    this.zzf = 0;
                }
            } else {
                int min2 = Math.min(zzfdVar.zza(), 4 - this.zzg);
                zzfdVar.zzB(this.zza.zzH(), this.zzg, min2);
                int i4 = this.zzg + min2;
                this.zzg = i4;
                if (i4 >= 4) {
                    this.zza.zzF(0);
                    if (!this.zzb.zza(this.zza.zze())) {
                        this.zzg = 0;
                        this.zzf = 1;
                    } else {
                        this.zzk = this.zzb.zzc;
                        if (!this.zzh) {
                            this.zzj = (zzxjVar.zzg * 1000000) / zzxjVar.zzd;
                            zzz zzzVar = new zzz();
                            zzzVar.zzH(this.zze);
                            zzzVar.zzS(this.zzb.zzb);
                            zzzVar.zzL(4096);
                            zzzVar.zzw(this.zzb.zze);
                            zzzVar.zzT(this.zzb.zzd);
                            zzzVar.zzK(this.zzc);
                            this.zzd.zzk(zzzVar.zzY());
                            this.zzh = true;
                        }
                        this.zza.zzF(0);
                        zzxr.zzb(this.zzd, this.zza, 4);
                        this.zzf = 2;
                    }
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzadr
    public final void zzb(zzws zzwsVar, zzafd zzafdVar) {
        zzafdVar.zzc();
        this.zze = zzafdVar.zzb();
        this.zzd = zzwsVar.zzv(zzafdVar.zza(), 1);
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
        this.zzi = false;
        this.zzl = -9223372036854775807L;
    }
}
