package com.google.android.gms.internal.ads;

import android.support.p012v4.media.C0082b;
import java.util.Collections;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzyh.class */
final class zzyh extends zzym {
    private static final int[] zzb = {5512, 11025, 22050, 44100};
    private boolean zzc;
    private boolean zzd;
    private int zze;

    public zzyh(zzxt zzxtVar) {
        super(zzxtVar);
    }

    @Override // com.google.android.gms.internal.ads.zzym
    public final boolean zza(zzfd zzfdVar) throws zzyl {
        if (this.zzc) {
            zzfdVar.zzG(1);
            return true;
        }
        int zzk = zzfdVar.zzk();
        int i = zzk >> 4;
        this.zze = i;
        if (i == 2) {
            int i2 = zzb[(zzk >> 2) & 3];
            zzz zzzVar = new zzz();
            zzzVar.zzS("audio/mpeg");
            zzzVar.zzw(1);
            zzzVar.zzT(i2);
            this.zza.zzk(zzzVar.zzY());
            this.zzd = true;
        } else if (i == 7 || i == 8) {
            String str = i == 7 ? "audio/g711-alaw" : "audio/g711-mlaw";
            zzz zzzVar2 = new zzz();
            zzzVar2.zzS(str);
            zzzVar2.zzw(1);
            zzzVar2.zzT(8000);
            this.zza.zzk(zzzVar2.zzY());
            this.zzd = true;
        } else if (i != 10) {
            throw new zzyl(C0082b.m8758d(39, "Audio format not supported: ", i));
        }
        this.zzc = true;
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzym
    public final boolean zzb(zzfd zzfdVar, long j) throws zzbj {
        if (this.zze == 2) {
            int zza = zzfdVar.zza();
            this.zza.zzq(zzfdVar, zza);
            this.zza.zzs(j, 1, zza, 0, null);
            return true;
        }
        int zzk = zzfdVar.zzk();
        if (zzk != 0 || this.zzd) {
            if (this.zze == 10 && zzk != 1) {
                return false;
            }
            int zza2 = zzfdVar.zza();
            this.zza.zzq(zzfdVar, zza2);
            this.zza.zzs(j, 1, zza2, 0, null);
            return true;
        }
        int zza3 = zzfdVar.zza();
        byte[] bArr = new byte[zza3];
        zzfdVar.zzB(bArr, 0, zza3);
        zzvr zza4 = zzvs.zza(bArr);
        zzz zzzVar = new zzz();
        zzzVar.zzS("audio/mp4a-latm");
        zzzVar.zzx(zza4.zzc);
        zzzVar.zzw(zza4.zzb);
        zzzVar.zzT(zza4.zza);
        zzzVar.zzI(Collections.singletonList(bArr));
        this.zza.zzk(zzzVar.zzY());
        this.zzd = true;
        return false;
    }
}
