package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzne.class */
public final class zzne {
    public final List<byte[]> zza;
    public final int zzb;
    public final int zzc;
    public final int zzd;
    public final float zze;
    public final String zzf;

    private zzne(List<byte[]> list, int i, int i2, int i3, float f, String str) {
        this.zza = list;
        this.zzb = i;
        this.zzc = i2;
        this.zzd = i3;
        this.zze = f;
        this.zzf = str;
    }

    public static zzne zza(zzamf zzamfVar) throws zzaha {
        float f;
        int i;
        int i2;
        String str;
        try {
            zzamfVar.zzk(4);
            int zzn = (zzamfVar.zzn() & 3) + 1;
            if (zzn == 3) {
                throw new IllegalStateException();
            }
            ArrayList arrayList = new ArrayList();
            int zzn2 = zzamfVar.zzn() & 31;
            for (int i3 = 0; i3 < zzn2; i3++) {
                arrayList.add(zzb(zzamfVar));
            }
            int zzn3 = zzamfVar.zzn();
            for (int i4 = 0; i4 < zzn3; i4++) {
                arrayList.add(zzb(zzamfVar));
            }
            if (zzn2 > 0) {
                zzalv zzb = zzalw.zzb((byte[]) arrayList.get(0), zzn, ((byte[]) arrayList.get(0)).length);
                i = zzb.zze;
                i2 = zzb.zzf;
                f = zzb.zzg;
                str = zzakv.zza(zzb.zza, zzb.zzb, zzb.zzc);
            } else {
                i = -1;
                i2 = -1;
                f = 1.0f;
                str = null;
            }
            return new zzne(arrayList, zzn, i, i2, f, str);
        } catch (ArrayIndexOutOfBoundsException e) {
            throw zzaha.zzb("Error parsing AVC config", e);
        }
    }

    private static byte[] zzb(zzamf zzamfVar) {
        int zzo = zzamfVar.zzo();
        int zzg = zzamfVar.zzg();
        zzamfVar.zzk(zzo);
        return zzakv.zzc(zzamfVar.zzi(), zzg, zzo);
    }
}
