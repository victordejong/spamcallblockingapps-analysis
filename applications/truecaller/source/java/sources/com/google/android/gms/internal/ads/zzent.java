package com.google.android.gms.internal.ads;

import android.os.Bundle;
import com.google.android.gms.ads.internal.util.zzg;
import com.google.android.gms.ads.internal.zzt;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzent.class */
public final class zzent implements zzery {
    private static final Object zzf = new Object();
    private final String zza;
    private final String zzb;
    private final zzcyt zzc;
    private final zzfbr zzd;
    private final zzfar zze;
    private final zzg zzg = zzt.zzg().zzp();

    public zzent(String str, String str2, zzcyt zzcytVar, zzfbr zzfbrVar, zzfar zzfarVar) {
        this.zza = str;
        this.zzb = str2;
        this.zzc = zzcytVar;
        this.zzd = zzfbrVar;
        this.zze = zzfarVar;
    }

    @Override // com.google.android.gms.internal.ads.zzery
    public final zzfsm zza() {
        Bundle bundle = new Bundle();
        if (((Boolean) zzbet.zzc().zzc(zzbjl.zzdS)).booleanValue()) {
            this.zzc.zza(this.zze.zzd);
            bundle.putAll(this.zzd.zzc());
        }
        return zzfsd.zza(new zzerx(this, bundle) { // from class: com.google.android.gms.internal.ads.zzens
            private final zzent zza;
            private final Bundle zzb;

            {
                this.zza = this;
                this.zzb = bundle;
            }

            @Override // com.google.android.gms.internal.ads.zzerx
            public final void zzf(Object obj) {
                this.zza.zzb(this.zzb, (Bundle) obj);
            }
        });
    }

    public final /* synthetic */ void zzb(Bundle bundle, Bundle bundle2) {
        if (((Boolean) zzbet.zzc().zzc(zzbjl.zzdS)).booleanValue()) {
            bundle2.putBundle("quality_signals", bundle);
        } else {
            if (((Boolean) zzbet.zzc().zzc(zzbjl.zzdR)).booleanValue()) {
                synchronized (zzf) {
                    this.zzc.zza(this.zze.zzd);
                    bundle2.putBundle("quality_signals", this.zzd.zzc());
                }
            } else {
                this.zzc.zza(this.zze.zzd);
                bundle2.putBundle("quality_signals", this.zzd.zzc());
            }
        }
        bundle2.putString("seq_num", this.zza);
        bundle2.putString("session_id", this.zzg.zzC() ? "" : this.zzb);
    }
}
