package com.google.android.gms.ads;

import android.os.RemoteException;
import androidx.annotation.RecentlyNonNull;
import androidx.annotation.RecentlyNullable;
import com.google.android.gms.internal.ads.zzbfm;
import com.google.android.gms.internal.ads.zzbgq;
import com.google.android.gms.internal.ads.zzbiw;
import com.google.android.gms.internal.ads.zzblj;
import com.google.android.gms.internal.ads.zzciz;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/ResponseInfo.class */
public final class ResponseInfo {
    private final zzbiw zza;
    private final List<AdapterResponseInfo> zzb = new ArrayList();

    private ResponseInfo(zzbiw zzbiwVar) {
        this.zza = zzbiwVar;
        if (!((Boolean) zzbgq.zzc().zzb(zzblj.zzge)).booleanValue() || zzbiwVar == null) {
            return;
        }
        try {
            List<zzbfm> zzg = zzbiwVar.zzg();
            if (zzg == null) {
                return;
            }
            for (zzbfm zzbfmVar : zzg) {
                AdapterResponseInfo zza = AdapterResponseInfo.zza(zzbfmVar);
                if (zza != null) {
                    this.zzb.add(zza);
                }
            }
        } catch (RemoteException e) {
            zzciz.zzh("Could not forward getAdapterResponseInfo to ResponseInfo.", e);
        }
    }

    public static ResponseInfo zza(zzbiw zzbiwVar) {
        if (zzbiwVar != null) {
            return new ResponseInfo(zzbiwVar);
        }
        return null;
    }

    public static ResponseInfo zzb(zzbiw zzbiwVar) {
        return new ResponseInfo(zzbiwVar);
    }

    public List<AdapterResponseInfo> getAdapterResponses() {
        return this.zzb;
    }

    @RecentlyNullable
    public String getMediationAdapterClassName() {
        try {
            zzbiw zzbiwVar = this.zza;
            if (zzbiwVar == null) {
                return null;
            }
            return zzbiwVar.zze();
        } catch (RemoteException e) {
            zzciz.zzh("Could not forward getMediationAdapterClassName to ResponseInfo.", e);
            return null;
        }
    }

    @RecentlyNullable
    public String getResponseId() {
        try {
            zzbiw zzbiwVar = this.zza;
            if (zzbiwVar == null) {
                return null;
            }
            return zzbiwVar.zzf();
        } catch (RemoteException e) {
            zzciz.zzh("Could not forward getResponseId to ResponseInfo.", e);
            return null;
        }
    }

    @RecentlyNonNull
    public String toString() {
        String str;
        try {
            str = zzc().toString(2);
        } catch (JSONException e) {
            str = "Error forming toString output.";
        }
        return str;
    }

    @RecentlyNonNull
    public final JSONObject zzc() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        String responseId = getResponseId();
        if (responseId == null) {
            jSONObject.put("Response ID", "null");
        } else {
            jSONObject.put("Response ID", responseId);
        }
        String mediationAdapterClassName = getMediationAdapterClassName();
        if (mediationAdapterClassName == null) {
            jSONObject.put("Mediation Adapter Class Name", "null");
        } else {
            jSONObject.put("Mediation Adapter Class Name", mediationAdapterClassName);
        }
        JSONArray jSONArray = new JSONArray();
        for (AdapterResponseInfo adapterResponseInfo : this.zzb) {
            jSONArray.put(adapterResponseInfo.zzb());
        }
        jSONObject.put("Adapter Responses", jSONArray);
        return jSONObject;
    }
}
