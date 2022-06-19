package com.google.android.gms.internal.ads;

import android.content.Context;
import android.net.TrafficStats;
import android.os.StrictMode;
import com.google.android.gms.ads.internal.zza;
import com.google.android.gms.ads.internal.zzl;
import com.google.android.gms.ads.internal.zzt;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcmx.class */
public final class zzcmx {
    /* JADX WARN: Type inference failed for: r0v12, types: [com.google.android.gms.internal.ads.zzcml, java.lang.Object] */
    public static final zzcml zza(Context context, zzcob zzcobVar, String str, boolean z, boolean z2, zzaas zzaasVar, zzbkk zzbkkVar, zzcgz zzcgzVar, zzbka zzbkaVar, zzl zzlVar, zza zzaVar, zzazb zzazbVar, zzezz zzezzVar, zzfac zzfacVar) throws zzcmw {
        zzbjl.zza(context);
        try {
            zzfmj zzfmjVar = new zzfmj(context, zzcobVar, str, z, z2, zzaasVar, zzbkkVar, zzcgzVar, null, zzlVar, zzaVar, zzazbVar, zzezzVar, zzfacVar) { // from class: com.google.android.gms.internal.ads.zzcmu
                private final Context zza;
                private final zzcob zzb;
                private final String zzc;
                private final boolean zzd;
                private final boolean zze;
                private final zzaas zzf;
                private final zzbkk zzg;
                private final zzcgz zzh;
                private final zzl zzi;
                private final zza zzj;
                private final zzazb zzk;
                private final zzezz zzl;
                private final zzfac zzm;

                {
                    this.zza = context;
                    this.zzb = zzcobVar;
                    this.zzc = str;
                    this.zzd = z;
                    this.zze = z2;
                    this.zzf = zzaasVar;
                    this.zzg = zzbkkVar;
                    this.zzh = zzcgzVar;
                    this.zzi = zzlVar;
                    this.zzj = zzaVar;
                    this.zzk = zzazbVar;
                    this.zzl = zzezzVar;
                    this.zzm = zzfacVar;
                }

                @Override // com.google.android.gms.internal.ads.zzfmj
                public final Object zza() {
                    Context context2 = this.zza;
                    zzcob zzcobVar2 = this.zzb;
                    String str2 = this.zzc;
                    boolean z3 = this.zzd;
                    boolean z4 = this.zze;
                    zzaas zzaasVar2 = this.zzf;
                    zzbkk zzbkkVar2 = this.zzg;
                    zzcgz zzcgzVar2 = this.zzh;
                    zzl zzlVar2 = this.zzi;
                    zza zzaVar2 = this.zzj;
                    zzazb zzazbVar2 = this.zzk;
                    zzezz zzezzVar2 = this.zzl;
                    zzfac zzfacVar2 = this.zzm;
                    try {
                        TrafficStats.setThreadStatsTag(264);
                        int i = zzcne.zza;
                        zzcna zzcnaVar = new zzcna(new zzcne(new zzcoa(context2), zzcobVar2, str2, z3, z4, zzaasVar2, zzbkkVar2, zzcgzVar2, null, zzlVar2, zzaVar2, zzazbVar2, zzezzVar2, zzfacVar2));
                        zzcnaVar.setWebViewClient(zzt.zze().zzl(zzcnaVar, zzazbVar2, z4));
                        zzcnaVar.setWebChromeClient(new zzcmk(zzcnaVar));
                        TrafficStats.clearThreadStatsTag();
                        return zzcnaVar;
                    } catch (Throwable th) {
                        TrafficStats.clearThreadStatsTag();
                        throw th;
                    }
                }
            };
            StrictMode.ThreadPolicy threadPolicy = StrictMode.getThreadPolicy();
            StrictMode.setThreadPolicy(new StrictMode.ThreadPolicy.Builder(threadPolicy).permitDiskReads().permitDiskWrites().build());
            ?? zza = zzfmjVar.zza();
            StrictMode.setThreadPolicy(threadPolicy);
            return zza;
        } catch (Throwable th) {
            throw new zzcmw("Webview initialization failed.", th);
        }
    }

    public static final zzfsm<zzcml> zzb(Context context, zzcgz zzcgzVar, String str, zzaas zzaasVar, zza zzaVar) {
        return zzfsd.zze(new zzfrj(context, zzaasVar, zzcgzVar, zzaVar, str) { // from class: com.google.android.gms.internal.ads.zzcmt
            private final Context zza;
            private final zzaas zzb;
            private final zzcgz zzc;
            private final zza zzd;
            private final String zze;

            {
                this.zza = context;
                this.zzb = zzaasVar;
                this.zzc = zzcgzVar;
                this.zzd = zzaVar;
                this.zze = str;
            }

            @Override // com.google.android.gms.internal.ads.zzfrj
            public final zzfsm zza() {
                Context context2 = this.zza;
                zzaas zzaasVar2 = this.zzb;
                zzcgz zzcgzVar2 = this.zzc;
                zza zzaVar2 = this.zzd;
                String str2 = this.zze;
                zzt.zzd();
                zzcml zza = zzcmx.zza(context2, zzcob.zzb(), "", false, false, zzaasVar2, null, zzcgzVar2, null, null, zzaVar2, zzazb.zza(), null, null);
                final zzchk zza2 = zzchk.zza(zza);
                zza.zzR().zzy(new zzcnx(zza2) { // from class: com.google.android.gms.internal.ads.zzcmv
                    private final zzchk zza;

                    {
                        this.zza = zza2;
                    }

                    @Override // com.google.android.gms.internal.ads.zzcnx
                    public final void zza(boolean z) {
                        this.zza.zzb();
                    }
                });
                zza.loadUrl(str2);
                return zza2;
            }
        }, zzchg.zze);
    }
}
