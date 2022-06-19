package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.util.zzg;
import com.google.android.gms.ads.internal.zzt;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzecc.class */
public final class zzecc implements zzdhv {
    private final String zzc;
    private final zzffc zzd;
    private boolean zza = false;
    private boolean zzb = false;
    private final zzg zze = zzt.zzg().zzp();

    public zzecc(String str, zzffc zzffcVar) {
        this.zzc = str;
        this.zzd = zzffcVar;
    }

    private final zzffb zzf(String str) {
        String str2 = this.zze.zzC() ? "" : this.zzc;
        zzffb zza = zzffb.zza(str);
        zza.zzc("tms", Long.toString(zzt.zzj().mo38789a(), 10));
        zza.zzc("tid", str2);
        return zza;
    }

    @Override // com.google.android.gms.internal.ads.zzdhv
    public final void zza(String str) {
        zzffc zzffcVar = this.zzd;
        zzffb zzf = zzf("adapter_init_started");
        zzf.zzc("ancn", str);
        zzffcVar.zza(zzf);
    }

    @Override // com.google.android.gms.internal.ads.zzdhv
    public final void zzb(String str) {
        zzffc zzffcVar = this.zzd;
        zzffb zzf = zzf("adapter_init_finished");
        zzf.zzc("ancn", str);
        zzffcVar.zza(zzf);
    }

    @Override // com.google.android.gms.internal.ads.zzdhv
    public final void zzc(String str, String str2) {
        zzffc zzffcVar = this.zzd;
        zzffb zzf = zzf("adapter_init_finished");
        zzf.zzc("ancn", str);
        zzf.zzc("rqe", str2);
        zzffcVar.zza(zzf);
    }

    @Override // com.google.android.gms.internal.ads.zzdhv
    public final void zzd() {
        synchronized (this) {
            if (!this.zza) {
                this.zzd.zza(zzf("init_started"));
                this.zza = true;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdhv
    public final void zze() {
        synchronized (this) {
            if (!this.zzb) {
                this.zzd.zza(zzf("init_finished"));
                this.zzb = true;
            }
        }
    }
}
