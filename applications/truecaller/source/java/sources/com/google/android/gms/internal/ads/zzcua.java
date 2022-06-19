package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.util.zze;
import com.google.android.gms.common.util.Clock;
import java.util.concurrent.Executor;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcua.class */
public final class zzcua implements zzawd {
    private zzcml zza;
    private final Executor zzb;
    private final zzctm zzc;
    private final Clock zzd;
    private boolean zze = false;
    private boolean zzf = false;
    private final zzctp zzg = new zzctp();

    public zzcua(Executor executor, zzctm zzctmVar, Clock clock) {
        this.zzb = executor;
        this.zzc = zzctmVar;
        this.zzd = clock;
    }

    private final void zzg() {
        try {
            JSONObject zzb = this.zzc.zzb(this.zzg);
            if (this.zza == null) {
                return;
            }
            this.zzb.execute(new Runnable(this, zzb) { // from class: com.google.android.gms.internal.ads.zzctz
                private final zzcua zza;
                private final JSONObject zzb;

                {
                    this.zza = this;
                    this.zzb = zzb;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.zza.zzf(this.zzb);
                }
            });
        } catch (JSONException e) {
            zze.zzb("Failed to call video active view js", e);
        }
    }

    public final void zza(zzcml zzcmlVar) {
        this.zza = zzcmlVar;
    }

    public final void zzb() {
        this.zze = false;
    }

    @Override // com.google.android.gms.internal.ads.zzawd
    public final void zzc(zzawc zzawcVar) {
        zzctp zzctpVar = this.zzg;
        zzctpVar.zza = this.zzf ? false : zzawcVar.zzj;
        zzctpVar.zzd = this.zzd.mo38789a();
        this.zzg.zzf = zzawcVar;
        if (this.zze) {
            zzg();
        }
    }

    public final void zzd() {
        this.zze = true;
        zzg();
    }

    public final void zze(boolean z) {
        this.zzf = z;
    }

    public final /* synthetic */ void zzf(JSONObject jSONObject) {
        this.zza.zzr("AFMA_updateActiveView", jSONObject);
    }
}
