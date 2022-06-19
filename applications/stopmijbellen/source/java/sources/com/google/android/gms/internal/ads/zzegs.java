package com.google.android.gms.internal.ads;

import android.content.Context;
import android.net.NetworkInfo;
import android.os.Bundle;
import android.telephony.TelephonyManager;
import android.util.SparseArray;
import com.google.android.gms.ads.internal.util.zzg;
import com.google.android.gms.ads.internal.zzt;
import java.util.ArrayList;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzegs.class */
public final class zzegs {
    private static final SparseArray<zzbdj> zza;
    private final Context zzb;
    private final zzddx zzc;
    private final TelephonyManager zzd;
    private final zzegl zze;
    private final zzegh zzf;
    private final zzg zzg;
    private int zzh;

    static {
        SparseArray<zzbdj> sparseArray = new SparseArray<>();
        zza = sparseArray;
        sparseArray.put(NetworkInfo.DetailedState.CONNECTED.ordinal(), zzbdj.CONNECTED);
        int ordinal = NetworkInfo.DetailedState.AUTHENTICATING.ordinal();
        zzbdj zzbdjVar = zzbdj.CONNECTING;
        sparseArray.put(ordinal, zzbdjVar);
        sparseArray.put(NetworkInfo.DetailedState.CONNECTING.ordinal(), zzbdjVar);
        sparseArray.put(NetworkInfo.DetailedState.OBTAINING_IPADDR.ordinal(), zzbdjVar);
        sparseArray.put(NetworkInfo.DetailedState.DISCONNECTING.ordinal(), zzbdj.DISCONNECTING);
        int ordinal2 = NetworkInfo.DetailedState.BLOCKED.ordinal();
        zzbdj zzbdjVar2 = zzbdj.DISCONNECTED;
        sparseArray.put(ordinal2, zzbdjVar2);
        sparseArray.put(NetworkInfo.DetailedState.DISCONNECTED.ordinal(), zzbdjVar2);
        sparseArray.put(NetworkInfo.DetailedState.FAILED.ordinal(), zzbdjVar2);
        sparseArray.put(NetworkInfo.DetailedState.IDLE.ordinal(), zzbdjVar2);
        sparseArray.put(NetworkInfo.DetailedState.SCANNING.ordinal(), zzbdjVar2);
        sparseArray.put(NetworkInfo.DetailedState.SUSPENDED.ordinal(), zzbdj.SUSPENDED);
        sparseArray.put(NetworkInfo.DetailedState.CAPTIVE_PORTAL_CHECK.ordinal(), zzbdjVar);
        sparseArray.put(NetworkInfo.DetailedState.VERIFYING_POOR_LINK.ordinal(), zzbdjVar);
    }

    public zzegs(Context context, zzddx zzddxVar, zzegl zzeglVar, zzegh zzeghVar, zzg zzgVar) {
        this.zzb = context;
        this.zzc = zzddxVar;
        this.zze = zzeglVar;
        this.zzf = zzeghVar;
        this.zzd = (TelephonyManager) context.getSystemService("phone");
        this.zzg = zzgVar;
    }

    public static /* bridge */ /* synthetic */ zzbda zza(zzegs zzegsVar, Bundle bundle) {
        zzbct zza2 = zzbda.zza();
        int i = bundle.getInt("cnt", -2);
        int i2 = bundle.getInt("gnt", 0);
        int i3 = 2;
        if (i == -1) {
            zzegsVar.zzh = 2;
        } else {
            zzegsVar.zzh = 1;
            if (i == 0) {
                zza2.zzb(2);
            } else if (i != 1) {
                zza2.zzb(1);
            } else {
                zza2.zzb(3);
            }
            switch (i2) {
                case 1:
                case 2:
                case 4:
                case 7:
                case 11:
                case 16:
                    break;
                case 3:
                case 5:
                case 6:
                case 8:
                case 9:
                case 10:
                case 12:
                case 14:
                case 15:
                case 17:
                    i3 = 3;
                    break;
                case 13:
                    i3 = 5;
                    break;
                default:
                    i3 = 1;
                    break;
            }
            zza2.zza(i3);
        }
        return zza2.zzah();
    }

    public static /* bridge */ /* synthetic */ byte[] zzf(zzegs zzegsVar, boolean z, ArrayList arrayList, zzbda zzbdaVar, zzbdj zzbdjVar) {
        zzbde zzg = zzbdf.zzg();
        zzg.zza(arrayList);
        zzg.zzh(zzg(zzt.zzq().zza(zzegsVar.zzb.getContentResolver()) != 0));
        zzg.zzi(zzt.zzq().zzq(zzegsVar.zzb, zzegsVar.zzd));
        zzg.zzf(zzegsVar.zze.zzd());
        zzg.zze(zzegsVar.zze.zzb());
        zzg.zzb(zzegsVar.zze.zza());
        zzg.zzc(zzbdjVar);
        zzg.zzd(zzbdaVar);
        zzg.zzj(zzegsVar.zzh);
        zzg.zzk(zzg(z));
        zzg.zzg(zzt.zzA().currentTimeMillis());
        zzg.zzl(zzg(zzt.zzq().zzb(zzegsVar.zzb.getContentResolver()) != 0));
        return zzg.zzah().zzar();
    }

    private static final int zzg(boolean z) {
        return z ? 2 : 1;
    }

    public final void zze(boolean z) {
        zzfwq.zzr(this.zzc.zzb(), new zzegr(this, z), zzcjm.zzf);
    }
}
