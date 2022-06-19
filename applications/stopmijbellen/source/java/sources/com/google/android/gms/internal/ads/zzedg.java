package com.google.android.gms.internal.ads;

import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.regex.Pattern;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzedg.class */
public final class zzedg implements zzeef {
    private static final Pattern zza = Pattern.compile("Received error HTTP response code: (.*)");
    private final zzech zzb;
    private final zzfxb zzc;
    private final zzfef zzd;
    private final ScheduledExecutorService zze;
    private final zzegl zzf;

    public zzedg(zzfef zzfefVar, zzech zzechVar, zzfxb zzfxbVar, ScheduledExecutorService scheduledExecutorService, zzegl zzeglVar) {
        this.zzd = zzfefVar;
        this.zzb = zzechVar;
        this.zzc = zzfxbVar;
        this.zze = scheduledExecutorService;
        this.zzf = zzeglVar;
    }

    @Override // com.google.android.gms.internal.ads.zzeef
    public final zzfxa<zzfdz> zzb(zzcdq zzcdqVar) {
        zzfxa<zzfdz> zzn = zzfwq.zzn(this.zzb.zzb(zzcdqVar), new zzfvx() { // from class: com.google.android.gms.internal.ads.zzedd
            @Override // com.google.android.gms.internal.ads.zzfvx
            public final zzfxa zza(Object obj) {
                return zzedg.this.zzc((InputStream) obj);
            }
        }, this.zzc);
        zzfxa<zzfdz> zzfxaVar = zzn;
        if (((Boolean) zzbgq.zzc().zzb(zzblj.zzdV)).booleanValue()) {
            zzfxaVar = zzfwq.zzg(zzfwq.zzo(zzn, ((Integer) zzbgq.zzc().zzb(zzblj.zzdW)).intValue(), TimeUnit.SECONDS, this.zze), TimeoutException.class, zzede.zza, zzcjm.zzf);
        }
        zzfwq.zzr(zzfxaVar, new zzedf(this), zzcjm.zzf);
        return zzfxaVar;
    }

    public final /* synthetic */ zzfxa zzc(InputStream inputStream) throws Exception {
        return zzfwq.zzi(new zzfdz(new zzfdw(this.zzd), zzfdy.zza(new InputStreamReader(inputStream))));
    }
}
