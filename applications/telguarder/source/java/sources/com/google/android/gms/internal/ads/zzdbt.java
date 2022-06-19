package com.google.android.gms.internal.ads;

import android.os.Bundle;
import com.facebook.gamingservices.cloudgaming.internal.SDKAnalyticsEvents;
import com.google.android.gms.ads.internal.util.zzf;
import com.google.android.gms.ads.internal.zzr;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdbt.class */
public final class zzdbt implements zzdfi<Object> {
    private static final Object lock = new Object();
    private final String zzcjn;
    private final String zzdug;
    private final zzf zzeaw = zzr.zzkv().zzxs();
    private final zzdnp zzfwy;
    private final zzbpf zzhbd;
    private final zzdop zzhbe;

    public zzdbt(String str, String str2, zzbpf zzbpfVar, zzdop zzdopVar, zzdnp zzdnpVar) {
        this.zzdug = str;
        this.zzcjn = str2;
        this.zzhbd = zzbpfVar;
        this.zzhbe = zzdopVar;
        this.zzfwy = zzdnpVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdfi
    public final zzdzw<Object> zzasy() {
        Bundle bundle = new Bundle();
        if (((Boolean) zzwr.zzqr().zzd(zzabp.zzcwq)).booleanValue()) {
            this.zzhbd.zzf(this.zzfwy.zzhkw);
            bundle.putAll(this.zzhbe.zzavn());
        }
        return zzdzk.zzag(new zzdfj(this, bundle) { // from class: com.google.android.gms.internal.ads.zzdbs
            private final Bundle zzebn;
            private final zzdbt zzhbc;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.zzhbc = this;
                this.zzebn = bundle;
            }

            @Override // com.google.android.gms.internal.ads.zzdfj
            public final void zzr(Object obj) {
                this.zzhbc.zzb(this.zzebn, (Bundle) obj);
            }
        });
    }

    public final /* synthetic */ void zzb(Bundle bundle, Bundle bundle2) {
        if (((Boolean) zzwr.zzqr().zzd(zzabp.zzcwq)).booleanValue()) {
            bundle2.putBundle("quality_signals", bundle);
        } else {
            if (((Boolean) zzwr.zzqr().zzd(zzabp.zzcwp)).booleanValue()) {
                synchronized (lock) {
                    this.zzhbd.zzf(this.zzfwy.zzhkw);
                    bundle2.putBundle("quality_signals", this.zzhbe.zzavn());
                }
            } else {
                this.zzhbd.zzf(this.zzfwy.zzhkw);
                bundle2.putBundle("quality_signals", this.zzhbe.zzavn());
            }
        }
        bundle2.putString("seq_num", this.zzdug);
        bundle2.putString(SDKAnalyticsEvents.PARAMETER_SESSION_ID, this.zzeaw.zzyu() ? "" : this.zzcjn);
    }
}
