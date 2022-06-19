package com.google.android.gms.ads;

import android.os.RemoteException;
import com.google.android.gms.internal.ads.zzabp;
import com.google.android.gms.internal.ads.zzazk;
import com.google.android.gms.internal.ads.zzvw;
import com.google.android.gms.internal.ads.zzwr;
import com.google.android.gms.internal.ads.zzyx;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/ResponseInfo.class */
public final class ResponseInfo {
    private final zzyx zzadv;
    private final List<AdapterResponseInfo> zzadw = new ArrayList();

    private ResponseInfo(zzyx zzyxVar) {
        this.zzadv = zzyxVar;
        if (((Boolean) zzwr.zzqr().zzd(zzabp.zzdab)).booleanValue()) {
            try {
                List<zzvw> adapterResponses = zzyxVar.getAdapterResponses();
                if (adapterResponses == null) {
                    return;
                }
                for (zzvw zzvwVar : adapterResponses) {
                    this.zzadw.add(AdapterResponseInfo.zza(zzvwVar));
                }
            } catch (RemoteException e) {
                zzazk.zzc("Could not forward getAdapterResponseInfo to ResponseInfo.", e);
            }
        }
    }

    public static ResponseInfo zza(zzyx zzyxVar) {
        if (zzyxVar != null) {
            return new ResponseInfo(zzyxVar);
        }
        return null;
    }

    public final List<AdapterResponseInfo> getAdapterResponses() {
        return this.zzadw;
    }

    public final String getMediationAdapterClassName() {
        try {
            return this.zzadv.getMediationAdapterClassName();
        } catch (RemoteException e) {
            zzazk.zzc("Could not forward getMediationAdapterClassName to ResponseInfo.", e);
            return null;
        }
    }

    public final String getResponseId() {
        try {
            return this.zzadv.getResponseId();
        } catch (RemoteException e) {
            zzazk.zzc("Could not forward getResponseId to ResponseInfo.", e);
            return null;
        }
    }

    public final String toString() {
        String str;
        try {
            str = zzdr().toString(2);
        } catch (JSONException e) {
            str = "Error forming toString output.";
        }
        return str;
    }

    public final JSONObject zzdr() {
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
        for (AdapterResponseInfo adapterResponseInfo : this.zzadw) {
            jSONArray.put(adapterResponseInfo.zzdr());
        }
        jSONObject.put("Adapter Responses", jSONArray);
        return jSONObject;
    }
}
