package com.google.android.gms.internal.ads;

import android.content.Context;
import android.net.NetworkInfo;
import android.os.Build;
import android.os.Bundle;
import android.telephony.TelephonyManager;
import android.util.SparseArray;
import com.google.android.gms.ads.internal.zzr;
import com.google.android.gms.internal.ads.zzug;
import java.util.ArrayList;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcqi.class */
public final class zzcqi {
    private static final SparseArray<zzug.zzo.zzc> zzgri;
    private final Context context;
    private final zzbqu zzfxf;
    private final zzcqb zzgoh;
    private final TelephonyManager zzgrf;
    private final zzcpv zzgrg;
    private zzuq zzgrh;

    static {
        SparseArray<zzug.zzo.zzc> sparseArray = new SparseArray<>();
        zzgri = sparseArray;
        sparseArray.put(NetworkInfo.DetailedState.CONNECTED.ordinal(), zzug.zzo.zzc.zzcel);
        int ordinal = NetworkInfo.DetailedState.AUTHENTICATING.ordinal();
        zzug.zzo.zzc zzcVar = zzug.zzo.zzc.zzcek;
        sparseArray.put(ordinal, zzcVar);
        sparseArray.put(NetworkInfo.DetailedState.CONNECTING.ordinal(), zzcVar);
        sparseArray.put(NetworkInfo.DetailedState.OBTAINING_IPADDR.ordinal(), zzcVar);
        sparseArray.put(NetworkInfo.DetailedState.DISCONNECTING.ordinal(), zzug.zzo.zzc.zzcem);
        int ordinal2 = NetworkInfo.DetailedState.BLOCKED.ordinal();
        zzug.zzo.zzc zzcVar2 = zzug.zzo.zzc.zzcen;
        sparseArray.put(ordinal2, zzcVar2);
        sparseArray.put(NetworkInfo.DetailedState.DISCONNECTED.ordinal(), zzcVar2);
        sparseArray.put(NetworkInfo.DetailedState.FAILED.ordinal(), zzcVar2);
        sparseArray.put(NetworkInfo.DetailedState.IDLE.ordinal(), zzcVar2);
        sparseArray.put(NetworkInfo.DetailedState.SCANNING.ordinal(), zzcVar2);
        sparseArray.put(NetworkInfo.DetailedState.SUSPENDED.ordinal(), zzug.zzo.zzc.zzceo);
        if (Build.VERSION.SDK_INT >= 17) {
            sparseArray.put(NetworkInfo.DetailedState.CAPTIVE_PORTAL_CHECK.ordinal(), zzcVar);
        }
        sparseArray.put(NetworkInfo.DetailedState.VERIFYING_POOR_LINK.ordinal(), zzcVar);
    }

    public zzcqi(Context context, zzbqu zzbquVar, zzcqb zzcqbVar, zzcpv zzcpvVar) {
        this.context = context;
        this.zzfxf = zzbquVar;
        this.zzgoh = zzcqbVar;
        this.zzgrg = zzcpvVar;
        this.zzgrf = (TelephonyManager) context.getSystemService("phone");
    }

    public final byte[] zza(boolean z, ArrayList<zzug.zzc.zza> arrayList, zzug.zzm zzmVar, zzug.zzo.zzc zzcVar) {
        return ((zzelb) zzug.zzo.zza.zzpg().zzf(arrayList).zzh(zzbk(zzr.zzkt().zzb(this.context.getContentResolver()) != 0)).zzi(zzr.zzkt().zza(this.context, this.zzgrf)).zzev(this.zzgoh.zzow()).zzew(this.zzgoh.zzox()).zzcl(this.zzgoh.getResponseCode()).zzb(zzcVar).zzb(zzmVar).zzj(this.zzgrh).zzf(zzbk(z)).zzeu(zzr.zzky().currentTimeMillis()).zzg(zzbk(zzr.zzkt().zza(this.context.getContentResolver()) != 0)).zzbiw()).toByteArray();
    }

    private static zzuq zzbk(boolean z) {
        return z ? zzuq.zzcca : zzuq.zzcbz;
    }

    public final zzug.zzm zzj(Bundle bundle) {
        zzug.zzm.zza zzaVar;
        zzug.zzm.zzb zzop = zzug.zzm.zzop();
        int i = bundle.getInt("cnt", -2);
        int i2 = bundle.getInt("gnt", 0);
        if (i == -1) {
            this.zzgrh = zzuq.zzcca;
        } else {
            this.zzgrh = zzuq.zzcbz;
            zzop.zzb(i != 0 ? i != 1 ? zzug.zzm.zzc.zzcdi : zzug.zzm.zzc.zzcdk : zzug.zzm.zzc.zzcdj);
            switch (i2) {
                case 1:
                case 2:
                case 4:
                case 7:
                case 11:
                case 16:
                    zzaVar = zzug.zzm.zza.zzcde;
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
                    zzaVar = zzug.zzm.zza.zzcdf;
                    break;
                case 13:
                    zzaVar = zzug.zzm.zza.zzcdg;
                    break;
                default:
                    zzaVar = zzug.zzm.zza.zzcdd;
                    break;
            }
            zzop.zzb(zzaVar);
        }
        return (zzelb) zzop.zzbiw();
    }

    public static zzug.zzo.zzc zzk(Bundle bundle) {
        return zzgri.get(zzdnz.zza(zzdnz.zza(bundle, "device"), "network").getInt("active_network_state", -1), zzug.zzo.zzc.zzcej);
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x0084  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.util.ArrayList<com.google.android.gms.internal.ads.zzug.zzc.zza> zzl(android.os.Bundle r4) {
        /*
            Method dump skipped, instructions count: 343
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzcqi.zzl(android.os.Bundle):java.util.ArrayList");
    }

    public final void zzbj(boolean z) {
        zzdzk.zza(this.zzfxf.zzali(), new zzcqh(this, z), zzazp.zzeih);
    }
}
