package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcxp.class */
public final class zzcxp extends zzapo {
    private final String zzdit;
    private final zzapk zzgxl;
    private zzbaa<JSONObject> zzgxm;
    private final JSONObject zzgxn;
    private boolean zzgxo = false;

    public zzcxp(String str, zzapk zzapkVar, zzbaa<JSONObject> zzbaaVar) {
        JSONObject jSONObject = new JSONObject();
        this.zzgxn = jSONObject;
        this.zzgxm = zzbaaVar;
        this.zzdit = str;
        this.zzgxl = zzapkVar;
        try {
            jSONObject.put("adapter_version", zzapkVar.zzvc().toString());
            jSONObject.put("sdk_version", zzapkVar.zzvd().toString());
            jSONObject.put("name", str);
        } catch (RemoteException | NullPointerException | JSONException e) {
        }
    }

    @Override // com.google.android.gms.internal.ads.zzapp
    public final void onFailure(String str) throws RemoteException {
        synchronized (this) {
            if (this.zzgxo) {
                return;
            }
            try {
                this.zzgxn.put("signal_error", str);
            } catch (JSONException e) {
            }
            this.zzgxm.set(this.zzgxn);
            this.zzgxo = true;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzapp
    public final void zzdn(String str) throws RemoteException {
        synchronized (this) {
            if (this.zzgxo) {
                return;
            }
            if (str == null) {
                onFailure("Adapter returned null signals");
                return;
            }
            try {
                this.zzgxn.put("signals", str);
            } catch (JSONException e) {
            }
            this.zzgxm.set(this.zzgxn);
            this.zzgxo = true;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzapp
    public final void zzh(zzvg zzvgVar) throws RemoteException {
        synchronized (this) {
            if (this.zzgxo) {
                return;
            }
            try {
                this.zzgxn.put("signal_error", zzvgVar.zzchg);
            } catch (JSONException e) {
            }
            this.zzgxm.set(this.zzgxn);
            this.zzgxo = true;
        }
    }
}
