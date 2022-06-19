package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.huawei.hms.framework.common.hianalytics.HianalyticsBaseData;
import com.razorpay.AnalyticsConstants;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzekh.class */
public final class zzekh extends zzbxp {
    private final String zza;
    private final zzbxn zzb;
    private final zzchl<JSONObject> zzc;
    private final JSONObject zzd;
    private boolean zze = false;

    public zzekh(String str, zzbxn zzbxnVar, zzchl<JSONObject> zzchlVar) {
        JSONObject jSONObject = new JSONObject();
        this.zzd = jSONObject;
        this.zzc = zzchlVar;
        this.zza = str;
        this.zzb = zzbxnVar;
        try {
            jSONObject.put("adapter_version", zzbxnVar.zzf().toString());
            jSONObject.put(HianalyticsBaseData.SDK_VERSION, zzbxnVar.zzg().toString());
            jSONObject.put(AnalyticsConstants.NAME, str);
        } catch (RemoteException | NullPointerException | JSONException e) {
        }
    }

    public final void zzb() {
        synchronized (this) {
            if (this.zze) {
                return;
            }
            this.zzc.zzc(this.zzd);
            this.zze = true;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbxq
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
            this.zzc.zzc(this.zzd);
            this.zze = true;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbxq
    public final void zzf(String str) throws RemoteException {
        synchronized (this) {
            if (this.zze) {
                return;
            }
            try {
                this.zzd.put("signal_error", str);
            } catch (JSONException e) {
            }
            this.zzc.zzc(this.zzd);
            this.zze = true;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbxq
    public final void zzg(zzbcz zzbczVar) throws RemoteException {
        synchronized (this) {
            if (this.zze) {
                return;
            }
            try {
                this.zzd.put("signal_error", zzbczVar.zzb);
            } catch (JSONException e) {
            }
            this.zzc.zzc(this.zzd);
            this.zze = true;
        }
    }
}
