package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.util.zze;
import com.google.android.gms.common.util.Clock;
import java.util.concurrent.Executor;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcxp.class */
public final class zzcxp implements zzaya {
    private zzcop zza;
    private final Executor zzb;
    private final zzcxb zzc;
    private final Clock zzd;
    private boolean zze = false;
    private boolean zzf = false;
    private final zzcxe zzg = new zzcxe();

    public zzcxp(Executor executor, zzcxb zzcxbVar, Clock clock) {
        this.zzb = executor;
        this.zzc = zzcxbVar;
        this.zzd = clock;
    }

    private final void zzg() {
        try {
            final JSONObject zzb = this.zzc.zzb(this.zzg);
            if (this.zza == null) {
                return;
            }
            this.zzb.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcxo
                @Override // java.lang.Runnable
                public final void run() {
                    zzcxp.this.zzd(zzb);
                }
            });
        } catch (JSONException e) {
            zze.zzb("Failed to call video active view js", e);
        }
    }

    public final void zza() {
        this.zze = false;
    }

    public final void zzb() {
        this.zze = true;
        zzg();
    }

    @Override // com.google.android.gms.internal.ads.zzaya
    public final void zzc(zzaxz zzaxzVar) {
        zzcxe zzcxeVar = this.zzg;
        zzcxeVar.zza = this.zzf ? false : zzaxzVar.zzj;
        zzcxeVar.zzd = this.zzd.elapsedRealtime();
        this.zzg.zzf = zzaxzVar;
        if (this.zze) {
            zzg();
        }
    }

    public final /* synthetic */ void zzd(JSONObject jSONObject) {
        this.zza.zzl("AFMA_updateActiveView", jSONObject);
    }

    public final void zze(boolean z) {
        this.zzf = z;
    }

    public final void zzf(zzcop zzcopVar) {
        this.zza = zzcopVar;
    }
}
