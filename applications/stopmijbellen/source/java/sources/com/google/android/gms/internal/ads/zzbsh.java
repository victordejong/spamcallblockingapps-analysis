package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import com.google.ads.mediation.facebook.FacebookAdapter;
import com.google.android.gms.ads.internal.util.zze;
import com.google.android.gms.ads.internal.zzt;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;
import javax.annotation.ParametersAreNonnullByDefault;
import javax.annotation.concurrent.GuardedBy;
import org.json.JSONException;
import org.json.JSONObject;
@ParametersAreNonnullByDefault
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbsh.class */
public final class zzbsh implements zzbrt<Object> {
    private final Object zza = new Object();
    @GuardedBy("lock")
    private final Map<String, zzbsg> zzb = new HashMap();

    @Override // com.google.android.gms.internal.ads.zzbrt
    public final void zza(Object obj, Map<String, String> map) {
        String str;
        String str2 = map.get(FacebookAdapter.KEY_ID);
        String str3 = map.get("fail");
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
            str = valueOf.length() != 0 ? "\n".concat(valueOf) : new String("\n");
        }
        synchronized (this.zza) {
            zzbsg remove = this.zzb.remove(str2);
            if (remove == null) {
                String valueOf2 = String.valueOf(str2);
                zzciz.zzj(valueOf2.length() != 0 ? "Received result for unexpected method invocation: ".concat(valueOf2) : new String("Received result for unexpected method invocation: "));
            } else if (!TextUtils.isEmpty(str3)) {
                String valueOf3 = String.valueOf(str7);
                String valueOf4 = String.valueOf(str);
                remove.zza(valueOf4.length() != 0 ? valueOf3.concat(valueOf4) : new String(valueOf3));
            } else if (str6 == null) {
                remove.zzb(null);
            } else {
                try {
                    JSONObject jSONObject = new JSONObject(str6);
                    if (zze.zzc()) {
                        String valueOf5 = String.valueOf(jSONObject.toString(2));
                        zze.zza(valueOf5.length() != 0 ? "Result GMSG: ".concat(valueOf5) : new String("Result GMSG: "));
                    }
                    remove.zzb(jSONObject);
                } catch (JSONException e) {
                    remove.zza(e.getMessage());
                }
            }
        }
    }

    public final <EngineT extends zzbux> zzfxa<JSONObject> zzb(EngineT enginet, String str, JSONObject jSONObject) {
        zzcjr zzcjrVar = new zzcjr();
        zzt.zzp();
        String uuid = UUID.randomUUID().toString();
        zzc(uuid, new zzbsf(this, zzcjrVar));
        try {
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put(FacebookAdapter.KEY_ID, uuid);
            jSONObject2.put("args", jSONObject);
            enginet.zzl(str, jSONObject2);
        } catch (Exception e) {
            zzcjrVar.zze(e);
        }
        return zzcjrVar;
    }

    public final void zzc(String str, zzbsg zzbsgVar) {
        synchronized (this.zza) {
            this.zzb.put(str, zzbsgVar);
        }
    }
}
