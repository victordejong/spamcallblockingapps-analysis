package com.google.android.gms.internal.ads;

import android.content.Context;
import android.net.TrafficStats;
import com.google.android.gms.ads.internal.util.zzbr;
import com.google.android.gms.ads.internal.zzb;
import com.google.android.gms.ads.internal.zzm;
import com.google.android.gms.ads.internal.zzr;
import javax.annotation.ParametersAreNonnullByDefault;
@ParametersAreNonnullByDefault
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbej.class */
public final class zzbej {
    public static zzbeb zza(Context context, zzbft zzbftVar, String str, boolean z, boolean z2, zzei zzeiVar, zzacq zzacqVar, zzazn zzaznVar, zzacc zzaccVar, zzm zzmVar, zzb zzbVar, zztu zztuVar, zzdmw zzdmwVar, zzdnb zzdnbVar) {
        zzabp.initialize(context);
        try {
            return (zzbeb) zzbr.zza((zzdws<Object>) new zzbel(context, zzbftVar, str, z, z2, zzeiVar, zzacqVar, zzaznVar, (zzacc) null, zzmVar, zzbVar, zztuVar, zzdmwVar, zzdnbVar));
        } catch (Throwable th) {
            throw new zzben("Webview initialization failed.", th);
        }
    }

    public static zzdzw<zzbeb> zza(Context context, zzazn zzaznVar, String str, zzei zzeiVar, zzb zzbVar) {
        return zzdzk.zzb(zzdzk.zzag((Object) null), new zzbem(context, zzeiVar, zzaznVar, zzbVar, str), zzazp.zzeig);
    }

    public static final /* synthetic */ zzbeb zzb(Context context, zzbft zzbftVar, String str, boolean z, boolean z2, zzei zzeiVar, zzacq zzacqVar, zzazn zzaznVar, zzacc zzaccVar, zzm zzmVar, zzb zzbVar, zztu zztuVar, zzdmw zzdmwVar, zzdnb zzdnbVar) {
        try {
            TrafficStats.setThreadStatsTag(264);
            zzbeb zzbeqVar = new zzbeq(zzber.zzc(context, zzbftVar, str, z, z2, zzeiVar, zzacqVar, zzaznVar, zzaccVar, zzmVar, zzbVar, zztuVar, zzdmwVar, zzdnbVar));
            zzbeqVar.setWebViewClient(zzr.zzkt().zza(zzbeqVar, zztuVar, z2));
            zzbeqVar.setWebChromeClient(new zzbdt(zzbeqVar));
            TrafficStats.clearThreadStatsTag();
            return zzbeqVar;
        } catch (Throwable th) {
            TrafficStats.clearThreadStatsTag();
            throw th;
        }
    }
}
