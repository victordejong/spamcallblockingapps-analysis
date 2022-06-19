package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzvz.class */
public final class zzvz {
    public final List<byte[]> zza;
    public final int zzb;
    public final int zzc;
    public final int zzd;
    public final float zze;
    public final String zzf;

    private zzvz(List<byte[]> list, int i, int i2, int i3, float f, String str) {
        this.zza = list;
        this.zzb = i;
        this.zzc = i2;
        this.zzd = i3;
        this.zze = f;
        this.zzf = str;
    }

    public static zzvz zza(zzfd zzfdVar) throws zzbj {
        float f;
        int i;
        int i2;
        String str;
        try {
            zzfdVar.zzG(4);
            int zzk = (zzfdVar.zzk() & 3) + 1;
            if (zzk == 3) {
                throw new IllegalStateException();
            }
            ArrayList arrayList = new ArrayList();
            int zzk2 = zzfdVar.zzk() & 31;
            for (int i3 = 0; i3 < zzk2; i3++) {
                arrayList.add(zzb(zzfdVar));
            }
            int zzk3 = zzfdVar.zzk();
            for (int i4 = 0; i4 < zzk3; i4++) {
                arrayList.add(zzb(zzfdVar));
            }
            if (zzk2 > 0) {
                zzet zzd = zzeu.zzd((byte[]) arrayList.get(0), zzk + 1, ((byte[]) arrayList.get(0)).length);
                i = zzd.zze;
                i2 = zzd.zzf;
                f = zzd.zzg;
                str = zzea.zza(zzd.zza, zzd.zzb, zzd.zzc);
            } else {
                str = null;
                i = -1;
                i2 = -1;
                f = 1.0f;
            }
            return new zzvz(arrayList, zzk, i, i2, f, str);
        } catch (ArrayIndexOutOfBoundsException e) {
            throw zzbj.zza("Error parsing AVC config", e);
        }
    }

    private static byte[] zzb(zzfd zzfdVar) {
        int zzo = zzfdVar.zzo();
        int zzc = zzfdVar.zzc();
        zzfdVar.zzG(zzo);
        return zzea.zzc(zzfdVar.zzH(), zzc, zzo);
    }
}
