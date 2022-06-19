package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzaer.class */
public final class zzaer implements zzafe {
    private final zzaeq zza;
    private final zzfd zzb = new zzfd(32);
    private int zzc;
    private int zzd;
    private boolean zze;
    private boolean zzf;

    public zzaer(zzaeq zzaeqVar) {
        this.zza = zzaeqVar;
    }

    @Override // com.google.android.gms.internal.ads.zzafe
    public final void zza(zzfd zzfdVar, int i) {
        int i2 = i & 1;
        int zzc = i2 != 0 ? zzfdVar.zzc() + zzfdVar.zzk() : -1;
        if (this.zzf) {
            if (i2 == 0) {
                return;
            }
            this.zzf = false;
            zzfdVar.zzF(zzc);
            this.zzd = 0;
        }
        while (zzfdVar.zza() > 0) {
            int i3 = this.zzd;
            if (i3 < 3) {
                if (i3 == 0) {
                    int zzk = zzfdVar.zzk();
                    zzfdVar.zzF(zzfdVar.zzc() - 1);
                    if (zzk == 255) {
                        this.zzf = true;
                        return;
                    }
                }
                int min = Math.min(zzfdVar.zza(), 3 - this.zzd);
                zzfdVar.zzB(this.zzb.zzH(), this.zzd, min);
                int i4 = this.zzd + min;
                this.zzd = i4;
                if (i4 == 3) {
                    this.zzb.zzF(0);
                    this.zzb.zzE(3);
                    this.zzb.zzG(1);
                    int zzk2 = this.zzb.zzk();
                    int zzk3 = this.zzb.zzk();
                    this.zze = (zzk2 & 128) != 0;
                    this.zzc = (((zzk2 & 15) << 8) | zzk3) + 3;
                    int zzb = this.zzb.zzb();
                    int i5 = this.zzc;
                    if (zzb < i5) {
                        int zzb2 = this.zzb.zzb();
                        this.zzb.zzz(Math.min(4098, Math.max(i5, zzb2 + zzb2)));
                    }
                }
            } else {
                int min2 = Math.min(zzfdVar.zza(), this.zzc - this.zzd);
                zzfdVar.zzB(this.zzb.zzH(), this.zzd, min2);
                int i6 = this.zzd + min2;
                this.zzd = i6;
                int i7 = this.zzc;
                if (i6 != i7) {
                    continue;
                } else {
                    if (!this.zze) {
                        this.zzb.zzE(i7);
                    } else if (zzfn.zzg(this.zzb.zzH(), 0, this.zzc, -1) != 0) {
                        this.zzf = true;
                        return;
                    } else {
                        this.zzb.zzE(this.zzc - 4);
                    }
                    this.zzb.zzF(0);
                    this.zza.zza(this.zzb);
                    this.zzd = 0;
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzafe
    public final void zzb(zzfk zzfkVar, zzws zzwsVar, zzafd zzafdVar) {
        this.zza.zzb(zzfkVar, zzwsVar, zzafdVar);
        this.zzf = true;
    }

    @Override // com.google.android.gms.internal.ads.zzafe
    public final void zzc() {
        this.zzf = true;
    }
}
