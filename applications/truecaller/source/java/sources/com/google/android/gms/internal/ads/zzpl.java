package com.google.android.gms.internal.ads;

import com.huawei.hms.support.api.entity.core.JosStatusCodes;
import java.util.Collections;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzpl.class */
public final class zzpl extends zzpq {
    private static final int[] zzb = {5512, 11025, 22050, 44100};
    private boolean zzc;
    private boolean zzd;
    private int zze;

    public zzpl(zzox zzoxVar) {
        super(zzoxVar);
    }

    @Override // com.google.android.gms.internal.ads.zzpq
    public final boolean zza(zzamf zzamfVar) throws zzpp {
        if (this.zzc) {
            zzamfVar.zzk(1);
            return true;
        }
        int zzn = zzamfVar.zzn();
        int i = zzn >> 4;
        this.zze = i;
        if (i == 2) {
            int i2 = zzb[(zzn >> 2) & 3];
            zzaft zzaftVar = new zzaft();
            zzaftVar.zzN("audio/mpeg");
            zzaftVar.zzaa(1);
            zzaftVar.zzab(i2);
            this.zza.zzs(zzaftVar.zzah());
            this.zzd = true;
        } else if (i == 7 || i == 8) {
            String str = i == 7 ? "audio/g711-alaw" : "audio/g711-mlaw";
            zzaft zzaftVar2 = new zzaft();
            zzaftVar2.zzN(str);
            zzaftVar2.zzaa(1);
            zzaftVar2.zzab(JosStatusCodes.RTN_CODE_COMMON_ERROR);
            this.zza.zzs(zzaftVar2.zzah());
            this.zzd = true;
        } else if (i != 10) {
            throw new zzpp(C22128a.m8690L1(39, "Audio format not supported: ", i));
        }
        this.zzc = true;
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzpq
    public final boolean zzb(zzamf zzamfVar, long j) throws zzaha {
        if (this.zze == 2) {
            int zzd = zzamfVar.zzd();
            this.zza.zzy(zzamfVar, zzd);
            this.zza.zzv(j, 1, zzd, 0, null);
            return true;
        }
        int zzn = zzamfVar.zzn();
        if (zzn != 0 || this.zzd) {
            if (this.zze == 10 && zzn != 1) {
                return false;
            }
            int zzd2 = zzamfVar.zzd();
            this.zza.zzy(zzamfVar, zzd2);
            this.zza.zzv(j, 1, zzd2, 0, null);
            return true;
        }
        int zzd3 = zzamfVar.zzd();
        byte[] bArr = new byte[zzd3];
        zzamfVar.zzm(bArr, 0, zzd3);
        zzmv zza = zzmx.zza(bArr);
        zzaft zzaftVar = new zzaft();
        zzaftVar.zzN("audio/mp4a-latm");
        zzaftVar.zzK(zza.zzc);
        zzaftVar.zzaa(zza.zzb);
        zzaftVar.zzab(zza.zza);
        zzaftVar.zzP(Collections.singletonList(bArr));
        this.zza.zzs(zzaftVar.zzah());
        this.zzd = true;
        return false;
    }
}
