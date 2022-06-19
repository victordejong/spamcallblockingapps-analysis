package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import com.google.android.gms.ads.internal.util.zze;
import com.google.android.gms.ads.internal.zzt;
import com.razorpay.AnalyticsConstants;
import com.tenor.android.core.constant.StringConstant;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbqf.class */
public final class zzbqf implements zzbpr<Object> {
    private final Object zza = new Object();
    private final Map<String, zzbqe> zzb = new HashMap();

    @Override // com.google.android.gms.internal.ads.zzbpr
    public final void zza(Object obj, Map<String, String> map) {
        String str;
        String str2 = map.get("id");
        String str3 = map.get(AnalyticsConstants.FAIL);
        String str4 = map.get("fail_reason");
        String str5 = map.get("fail_stack");
        String str6 = map.get("result");
        String str7 = str4;
        if (true == TextUtils.isEmpty(str5)) {
            str7 = "Unknown Fail Reason.";
        }
        if (TextUtils.isEmpty(str5)) {
            str = "";
        } else {
            String valueOf = String.valueOf(str5);
            str = valueOf.length() != 0 ? StringConstant.NEW_LINE.concat(valueOf) : new String(StringConstant.NEW_LINE);
        }
        synchronized (this.zza) {
            zzbqe remove = this.zzb.remove(str2);
            if (remove == null) {
                String valueOf2 = String.valueOf(str2);
                zzcgt.zzi(valueOf2.length() != 0 ? "Received result for unexpected method invocation: ".concat(valueOf2) : new String("Received result for unexpected method invocation: "));
            } else if (!TextUtils.isEmpty(str3)) {
                String valueOf3 = String.valueOf(str7);
                String valueOf4 = String.valueOf(str);
                remove.zzb(valueOf4.length() != 0 ? valueOf3.concat(valueOf4) : new String(valueOf3));
            } else if (str6 == null) {
                remove.zza(null);
            } else {
                try {
                    JSONObject jSONObject = new JSONObject(str6);
                    if (zze.zzc()) {
                        String valueOf5 = String.valueOf(jSONObject.toString(2));
                        zze.zza(valueOf5.length() != 0 ? "Result GMSG: ".concat(valueOf5) : new String("Result GMSG: "));
                    }
                    remove.zza(jSONObject);
                } catch (JSONException e) {
                    remove.zzb(e.getMessage());
                }
            }
        }
    }

    public final void zzb(String str, zzbqe zzbqeVar) {
        synchronized (this.zza) {
            this.zzb.put(str, zzbqeVar);
        }
    }

    public final <EngineT extends zzbsw> zzfsm<JSONObject> zzc(EngineT enginet, String str, JSONObject jSONObject) {
        zzchl zzchlVar = new zzchl();
        zzt.zzc();
        String uuid = UUID.randomUUID().toString();
        zzb(uuid, new zzbqd(this, zzchlVar));
        try {
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("id", uuid);
            jSONObject2.put("args", jSONObject);
            enginet.zzr(str, jSONObject2);
        } catch (Exception e) {
            zzchlVar.zzd(e);
        }
        return zzchlVar;
    }
}
