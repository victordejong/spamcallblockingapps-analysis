package com.google.android.gms.internal.ads;

import com.facebook.gamingservices.cloudgaming.internal.SDKConstants;
import com.facebook.share.internal.ShareConstants;
import com.google.android.gms.ads.internal.zzr;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcpc.class */
final class zzcpc implements zzamc<zzcoz> {
    @Override // com.google.android.gms.internal.ads.zzamc
    public final /* synthetic */ JSONObject zzi(zzcoz zzcozVar) throws JSONException {
        zzcoz zzcozVar2 = zzcozVar;
        JSONObject jSONObject = new JSONObject();
        JSONObject jSONObject2 = new JSONObject();
        JSONObject jSONObject3 = new JSONObject();
        jSONObject2.put("base_url", zzcozVar2.zzgpv.zzwm());
        jSONObject2.put("signals", zzcozVar2.zzgpu);
        jSONObject3.put(SDKConstants.PARAM_A2U_BODY, zzcozVar2.zzgpt.zzdvw);
        jSONObject3.put("headers", zzr.zzkr().zzj(zzcozVar2.zzgpt.zzaj));
        jSONObject3.put("response_code", zzcozVar2.zzgpt.zzgqd);
        jSONObject3.put("latency", zzcozVar2.zzgpt.zzgqe);
        jSONObject.put(ShareConstants.WEB_DIALOG_RESULT_PARAM_REQUEST_ID, jSONObject2);
        jSONObject.put("response", jSONObject3);
        jSONObject.put("flags", zzcozVar2.zzgpv.zzwq());
        return jSONObject;
    }
}
