package com.google.android.gms.internal.ads;

import android.support.p012v4.media.C0082b;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzyn.class */
final class zzyn extends zzym {
    private final zzfd zzb = new zzfd(zzeu.zza);
    private final zzfd zzc = new zzfd(4);
    private int zzd;
    private boolean zze;
    private boolean zzf;
    private int zzg;

    public zzyn(zzxt zzxtVar) {
        super(zzxtVar);
    }

    @Override // com.google.android.gms.internal.ads.zzym
    public final boolean zza(zzfd zzfdVar) throws zzyl {
        int zzk = zzfdVar.zzk();
        int i = zzk >> 4;
        int i2 = zzk & 15;
        if (i2 == 7) {
            this.zzg = i;
            return i != 5;
        }
        throw new zzyl(C0082b.m8758d(39, "Video format not supported: ", i2));
    }

    @Override // com.google.android.gms.internal.ads.zzym
    public final boolean zzb(zzfd zzfdVar, long j) throws zzbj {
        int zzk = zzfdVar.zzk();
        long zzf = zzfdVar.zzf();
        if (zzk == 0) {
            if (this.zze) {
                return false;
            }
            zzfd zzfdVar2 = new zzfd(new byte[zzfdVar.zza()]);
            zzfdVar.zzB(zzfdVar2.zzH(), 0, zzfdVar.zza());
            zzvz zza = zzvz.zza(zzfdVar2);
            this.zzd = zza.zzb;
            zzz zzzVar = new zzz();
            zzzVar.zzS("video/avc");
            zzzVar.zzx(zza.zzf);
            zzzVar.zzX(zza.zzc);
            zzzVar.zzF(zza.zzd);
            zzzVar.zzP(zza.zze);
            zzzVar.zzI(zza.zza);
            this.zza.zzk(zzzVar.zzY());
            this.zze = true;
            return false;
        } else if (zzk != 1 || !this.zze) {
            return false;
        } else {
            int i = this.zzg == 1 ? 1 : 0;
            if (!this.zzf && i == 0) {
                return false;
            }
            byte[] zzH = this.zzc.zzH();
            zzH[0] = (byte) 0;
            zzH[1] = (byte) 0;
            zzH[2] = (byte) 0;
            int i2 = this.zzd;
            int i3 = 0;
            while (true) {
                int i4 = i3;
                if (zzfdVar.zza() <= 0) {
                    this.zza.zzs((zzf * 1000) + j, i, i4, 0, null);
                    this.zzf = true;
                    return true;
                }
                zzfdVar.zzB(this.zzc.zzH(), 4 - i2, this.zzd);
                this.zzc.zzF(0);
                int zzn = this.zzc.zzn();
                this.zzb.zzF(0);
                this.zza.zzq(this.zzb, 4);
                this.zza.zzq(zzfdVar, zzn);
                i3 = i4 + 4 + zzn;
            }
        }
    }
}
