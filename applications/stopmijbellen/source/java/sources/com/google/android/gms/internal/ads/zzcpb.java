package com.google.android.gms.internal.ads;

import android.content.Context;
import android.net.TrafficStats;
import android.os.StrictMode;
import com.google.android.gms.ads.internal.zza;
import com.google.android.gms.ads.internal.zzl;
import com.google.android.gms.ads.internal.zzt;
import javax.annotation.ParametersAreNonnullByDefault;
@ParametersAreNonnullByDefault
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcpb.class */
public final class zzcpb {
    /* JADX WARN: Type inference failed for: r0v12, types: [com.google.android.gms.internal.ads.zzcop, java.lang.Object] */
    public static final zzcop zza(Context context, zzcqe zzcqeVar, String str, boolean z, boolean z2, zzalt zzaltVar, zzbmi zzbmiVar, zzcjf zzcjfVar, zzbly zzblyVar, zzl zzlVar, zza zzaVar, zzbay zzbayVar, zzfdn zzfdnVar, zzfdq zzfdqVar) throws zzcpa {
        zzblj.zzc(context);
        try {
            zzfqs zzfqsVar = new zzfqs(context, zzcqeVar, str, z, z2, zzaltVar, zzbmiVar, zzcjfVar, null, zzlVar, zzaVar, zzbayVar, zzfdnVar, zzfdqVar) { // from class: com.google.android.gms.internal.ads.zzcoy
                public final /* synthetic */ Context zza;
                public final /* synthetic */ zzcqe zzb;
                public final /* synthetic */ String zzc;
                public final /* synthetic */ boolean zzd;
                public final /* synthetic */ boolean zze;
                public final /* synthetic */ zzalt zzf;
                public final /* synthetic */ zzbmi zzg;
                public final /* synthetic */ zzcjf zzh;
                public final /* synthetic */ zzl zzi;
                public final /* synthetic */ zza zzj;
                public final /* synthetic */ zzbay zzk;
                public final /* synthetic */ zzfdn zzl;
                public final /* synthetic */ zzfdq zzm;

                {
                    this.zzi = zzlVar;
                    this.zzj = zzaVar;
                    this.zzk = zzbayVar;
                    this.zzl = zzfdnVar;
                    this.zzm = zzfdqVar;
                }

                @Override // com.google.android.gms.internal.ads.zzfqs
                public final Object zza() {
                    Context context2 = this.zza;
                    zzcqe zzcqeVar2 = this.zzb;
                    String str2 = this.zzc;
                    boolean z3 = this.zzd;
                    boolean z4 = this.zze;
                    zzalt zzaltVar2 = this.zzf;
                    zzbmi zzbmiVar2 = this.zzg;
                    zzcjf zzcjfVar2 = this.zzh;
                    zzl zzlVar2 = this.zzi;
                    zza zzaVar2 = this.zzj;
                    zzbay zzbayVar2 = this.zzk;
                    zzfdn zzfdnVar2 = this.zzl;
                    zzfdq zzfdqVar2 = this.zzm;
                    try {
                        TrafficStats.setThreadStatsTag(264);
                        int i = zzcpi.zza;
                        zzcpe zzcpeVar = new zzcpe(new zzcpi(new zzcqd(context2), zzcqeVar2, str2, z3, z4, zzaltVar2, zzbmiVar2, zzcjfVar2, null, zzlVar2, zzaVar2, zzbayVar2, zzfdnVar2, zzfdqVar2));
                        zzcpeVar.setWebViewClient(zzt.zzq().zzn(zzcpeVar, zzbayVar2, z4));
                        zzcpeVar.setWebChromeClient(new zzcoo(zzcpeVar));
                        TrafficStats.clearThreadStatsTag();
                        return zzcpeVar;
                    } catch (Throwable th) {
                        TrafficStats.clearThreadStatsTag();
                        throw th;
                    }
                }
            };
            StrictMode.ThreadPolicy threadPolicy = StrictMode.getThreadPolicy();
            StrictMode.setThreadPolicy(new StrictMode.ThreadPolicy.Builder(threadPolicy).permitDiskReads().permitDiskWrites().build());
            ?? zza = zzfqsVar.zza();
            StrictMode.setThreadPolicy(threadPolicy);
            return zza;
        } catch (Throwable th) {
            throw new zzcpa("Webview initialization failed.", th);
        }
    }
}
