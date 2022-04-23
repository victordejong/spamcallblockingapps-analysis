package com.google.android.gms.ads;

import android.os.RemoteException;
import com.google.android.gms.internal.ads.aq;
import com.google.android.gms.internal.ads.ekb;
import com.google.android.gms.internal.ads.emj;
import com.google.android.gms.internal.ads.za;
import com.google.android.gms.internal.ads.zzvx;
import java.util.ArrayList;
import java.util.List;
import kotlinx.serialization.json.internal.JsonReaderKt;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/ads/ResponseInfo.class */
public final class ResponseInfo {
    private final emj zzaec;
    private final List<AdapterResponseInfo> zzaed = new ArrayList();

    private ResponseInfo(emj emjVar) {
        this.zzaec = emjVar;
        if (((Boolean) ekb.e().a(aq.eU)).booleanValue()) {
            try {
                List<zzvx> c2 = emjVar.c();
                if (c2 != null) {
                    for (zzvx zzvxVar : c2) {
                        this.zzaed.add(AdapterResponseInfo.zza(zzvxVar));
                    }
                }
            } catch (RemoteException e) {
                za.zzc("Could not forward getAdapterResponseInfo to ResponseInfo.", e);
            }
        }
    }

    public static ResponseInfo zza(emj emjVar) {
        if (emjVar != null) {
            return new ResponseInfo(emjVar);
        }
        return null;
    }

    public final List<AdapterResponseInfo> getAdapterResponses() {
        return this.zzaed;
    }

    public final String getMediationAdapterClassName() {
        try {
            return this.zzaec.a();
        } catch (RemoteException e) {
            za.zzc("Could not forward getMediationAdapterClassName to ResponseInfo.", e);
            return null;
        }
    }

    public final String getResponseId() {
        try {
            return this.zzaec.b();
        } catch (RemoteException e) {
            za.zzc("Could not forward getResponseId to ResponseInfo.", e);
            return null;
        }
    }

    public final String toString() {
        String str;
        try {
            str = zzds().toString(2);
        } catch (JSONException e) {
            str = "Error forming toString output.";
        }
        return str;
    }

    public final JSONObject zzds() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        String responseId = getResponseId();
        if (responseId == null) {
            jSONObject.put("Response ID", JsonReaderKt.NULL);
        } else {
            jSONObject.put("Response ID", responseId);
        }
        String mediationAdapterClassName = getMediationAdapterClassName();
        if (mediationAdapterClassName == null) {
            jSONObject.put("Mediation Adapter Class Name", JsonReaderKt.NULL);
        } else {
            jSONObject.put("Mediation Adapter Class Name", mediationAdapterClassName);
        }
        JSONArray jSONArray = new JSONArray();
        for (AdapterResponseInfo adapterResponseInfo : this.zzaed) {
            jSONArray.put(adapterResponseInfo.zzds());
        }
        jSONObject.put("Adapter Responses", jSONArray);
        return jSONObject;
    }
}
