package com.google.android.gms.internal.ads;

import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzpr.class */
public final class zzpr extends zzpq {
    private final zzamf zzb = new zzamf(zzalw.zza);
    private final zzamf zzc = new zzamf(4);
    private int zzd;
    private boolean zze;
    private boolean zzf;
    private int zzg;

    public zzpr(zzox zzoxVar) {
        super(zzoxVar);
    }

    @Override // com.google.android.gms.internal.ads.zzpq
    public final boolean zza(zzamf zzamfVar) throws zzpp {
        int zzn = zzamfVar.zzn();
        int i = zzn >> 4;
        int i2 = zzn & 15;
        if (i2 == 7) {
            this.zzg = i;
            return i != 5;
        }
        throw new zzpp(C22128a.m8690L1(39, "Video format not supported: ", i2));
    }

    @Override // com.google.android.gms.internal.ads.zzpq
    public final boolean zzb(zzamf zzamfVar, long j) throws zzaha {
        int zzn = zzamfVar.zzn();
        long zzs = zzamfVar.zzs();
        if (zzn == 0) {
            if (this.zze) {
                return false;
            }
            zzamf zzamfVar2 = new zzamf(new byte[zzamfVar.zzd()]);
            zzamfVar.zzm(zzamfVar2.zzi(), 0, zzamfVar.zzd());
            zzne zza = zzne.zza(zzamfVar2);
            this.zzd = zza.zzb;
            zzaft zzaftVar = new zzaft();
            zzaftVar.zzN("video/avc");
            zzaftVar.zzK(zza.zzf);
            zzaftVar.zzS(zza.zzc);
            zzaftVar.zzT(zza.zzd);
            zzaftVar.zzW(zza.zze);
            zzaftVar.zzP(zza.zza);
            this.zza.zzs(zzaftVar.zzah());
            this.zze = true;
            return false;
        } else if (zzn != 1 || !this.zze) {
            return false;
        } else {
            int i = this.zzg == 1 ? 1 : 0;
            if (!this.zzf && i == 0) {
                return false;
            }
            byte[] zzi = this.zzc.zzi();
            zzi[0] = (byte) 0;
            zzi[1] = (byte) 0;
            zzi[2] = (byte) 0;
            int i2 = this.zzd;
            int i3 = 0;
            while (true) {
                int i4 = i3;
                if (zzamfVar.zzd() <= 0) {
                    this.zza.zzv((zzs * 1000) + j, i, i4, 0, null);
                    this.zzf = true;
                    return true;
                }
                zzamfVar.zzm(this.zzc.zzi(), 4 - i2, this.zzd);
                this.zzc.zzh(0);
                int zzB = this.zzc.zzB();
                this.zzb.zzh(0);
                this.zza.zzy(this.zzb, 4);
                this.zza.zzy(zzamfVar, zzB);
                i3 = i4 + 4 + zzB;
            }
        }
    }
}
