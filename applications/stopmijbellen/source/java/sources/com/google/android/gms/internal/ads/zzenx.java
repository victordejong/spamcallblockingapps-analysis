package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import javax.annotation.concurrent.GuardedBy;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzenx.class */
public final class zzenx extends zzbzq {
    private final String zza;
    private final zzbzo zzb;
    private final zzcjr<JSONObject> zzc;
    private final JSONObject zzd;
    @GuardedBy("this")
    private boolean zze = false;

    public zzenx(String str, zzbzo zzbzoVar, zzcjr<JSONObject> zzcjrVar) {
        JSONObject jSONObject = new JSONObject();
        this.zzd = jSONObject;
        this.zzc = zzcjrVar;
        this.zza = str;
        this.zzb = zzbzoVar;
        try {
            jSONObject.put("adapter_version", zzbzoVar.zzf().toString());
            jSONObject.put("sdk_version", zzbzoVar.zzg().toString());
            jSONObject.put(AppMeasurementSdk.ConditionalUserProperty.NAME, str);
        } catch (RemoteException | NullPointerException | JSONException e) {
        }
    }

    public final void zzb() {
        synchronized (this) {
            if (this.zze) {
                return;
            }
            this.zzc.zzd(this.zzd);
            this.zze = true;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbzr
    public final void zze(String str) throws RemoteException {
        synchronized (this) {
            if (this.zze) {
                return;
            }
            if (str == null) {
                zzf("Adapter returned null signals");
                return;
            }
            try {
                this.zzd.put("signals", str);
            } catch (JSONException e) {
            }
            this.zzc.zzd(this.zzd);
            this.zze = true;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbzr
    public final void zzf(String str) throws RemoteException {
        synchronized (this) {
            if (this.zze) {
                return;
            }
            try {
                this.zzd.put("signal_error", str);
            } catch (JSONException e) {
            }
            this.zzc.zzd(this.zzd);
            this.zze = true;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbzr
    public final void zzg(zzbew zzbewVar) throws RemoteException {
        synchronized (this) {
            if (this.zze) {
                return;
            }
            try {
                this.zzd.put("signal_error", zzbewVar.zzb);
            } catch (JSONException e) {
            }
            this.zzc.zzd(this.zzd);
            this.zze = true;
        }
    }
}
