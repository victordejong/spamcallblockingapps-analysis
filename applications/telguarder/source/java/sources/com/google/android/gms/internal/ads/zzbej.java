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
    public static zzbeb zza(Context context, zzbft zzbftVar, String str, boolean z, boolean z2, zzei zzeiVar, zzacq zzacqVar, zzazn zzaznVar, zzacc zzaccVar, zzm zzmVar, zzb zzbVar, zztu zztuVar, zzdmw zzdmwVar, zzdnb zzdnbVar) throws zzben {
        zzabp.initialize(context);
        try {
            return (zzbeb) zzbr.zza(new zzdws(context, zzbftVar, str, z, z2, zzeiVar, zzacqVar, zzaznVar, null, zzmVar, zzbVar, zztuVar, zzdmwVar, zzdnbVar) { // from class: com.google.android.gms.internal.ads.zzbel
                private final Context zzcmi;
                private final String zzdlo;
                private final zzbft zzerr;
                private final boolean zzers;
                private final boolean zzert;
                private final zzei zzeru;
                private final zzacq zzerv;
                private final zzazn zzerw;
                private final zzacc zzerx = null;
                private final zzm zzery;
                private final zzb zzerz;
                private final zztu zzesa;
                private final zzdmw zzesb;
                private final zzdnb zzesc;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.zzcmi = context;
                    this.zzerr = zzbftVar;
                    this.zzdlo = str;
                    this.zzers = z;
                    this.zzert = z2;
                    this.zzeru = zzeiVar;
                    this.zzerv = zzacqVar;
                    this.zzerw = zzaznVar;
                    this.zzery = zzmVar;
                    this.zzerz = zzbVar;
                    this.zzesa = zztuVar;
                    this.zzesb = zzdmwVar;
                    this.zzesc = zzdnbVar;
                }

                @Override // com.google.android.gms.internal.ads.zzdws
                public final Object get() {
                    return zzbej.zzb(this.zzcmi, this.zzerr, this.zzdlo, this.zzers, this.zzert, this.zzeru, this.zzerv, this.zzerw, null, this.zzery, this.zzerz, this.zzesa, this.zzesb, this.zzesc);
                }
            });
        } catch (Throwable th) {
            throw new zzben("Webview initialization failed.", th);
        }
    }

    public static zzdzw<zzbeb> zza(Context context, zzazn zzaznVar, String str, zzei zzeiVar, zzb zzbVar) {
        return zzdzk.zzb(zzdzk.zzag(null), new zzdyu(context, zzeiVar, zzaznVar, zzbVar, str) { // from class: com.google.android.gms.internal.ads.zzbem
            private final Context zzcmi;
            private final zzei zzdjl;
            private final zzazn zzesd;
            private final zzb zzese;
            private final String zzesf;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.zzcmi = context;
                this.zzdjl = zzeiVar;
                this.zzesd = zzaznVar;
                this.zzese = zzbVar;
                this.zzesf = str;
            }

            @Override // com.google.android.gms.internal.ads.zzdyu
            public final zzdzw zzf(Object obj) {
                Context context2 = this.zzcmi;
                zzei zzeiVar2 = this.zzdjl;
                zzazn zzaznVar2 = this.zzesd;
                zzb zzbVar2 = this.zzese;
                String str2 = this.zzesf;
                zzr.zzks();
                zzbeb zza = zzbej.zza(context2, zzbft.zzael(), "", false, false, zzeiVar2, null, zzaznVar2, null, null, zzbVar2, zztu.zznf(), null, null);
                final zzazx zzk = zzazx.zzk(zza);
                zza.zzacx().zza(new zzbfq(zzk) { // from class: com.google.android.gms.internal.ads.zzbeo
                    private final zzazx zzesg;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.zzesg = zzk;
                    }

                    @Override // com.google.android.gms.internal.ads.zzbfq
                    public final void zzal(boolean z) {
                        this.zzesg.zzaac();
                    }
                });
                zza.loadUrl(str2);
                return zzk;
            }
        }, zzazp.zzeig);
    }

    public static final /* synthetic */ zzbeb zzb(Context context, zzbft zzbftVar, String str, boolean z, boolean z2, zzei zzeiVar, zzacq zzacqVar, zzazn zzaznVar, zzacc zzaccVar, zzm zzmVar, zzb zzbVar, zztu zztuVar, zzdmw zzdmwVar, zzdnb zzdnbVar) {
        try {
            TrafficStats.setThreadStatsTag(264);
            zzbeq zzbeqVar = new zzbeq(zzber.zzc(context, zzbftVar, str, z, z2, zzeiVar, zzacqVar, zzaznVar, zzaccVar, zzmVar, zzbVar, zztuVar, zzdmwVar, zzdnbVar));
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
