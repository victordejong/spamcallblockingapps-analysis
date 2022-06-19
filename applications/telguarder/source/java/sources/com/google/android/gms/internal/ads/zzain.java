package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import com.google.android.gms.ads.internal.util.zzd;
import com.google.android.gms.ads.internal.util.zzj;
import com.google.android.gms.ads.internal.zzr;
import java.util.HashMap;
import java.util.Map;
import javax.annotation.ParametersAreNonnullByDefault;
import org.json.JSONException;
import org.json.JSONObject;
@ParametersAreNonnullByDefault
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzain.class */
public final class zzain implements zzaif<Object> {
    private final Object lock = new Object();
    private final Map<String, zzaip> zzdil = new HashMap();

    public final <EngineT extends zzakw> zzdzw<JSONObject> zza(EngineT enginet, String str, JSONObject jSONObject) {
        zzbaa zzbaaVar = new zzbaa();
        zzr.zzkr();
        String zzyy = zzj.zzyy();
        zza(zzyy, new zzaim(this, zzbaaVar));
        try {
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("id", zzyy);
            jSONObject2.put("args", jSONObject);
            enginet.zzb(str, jSONObject2);
        } catch (Exception e) {
            zzbaaVar.setException(e);
        }
        return zzbaaVar;
    }

    @Override // com.google.android.gms.internal.ads.zzaif
    public final void zza(Object obj, Map<String, String> map) {
        String str;
        String str2 = map.get("id");
        String str3 = map.get("fail");
        String str4 = map.get("fail_reason");
        String str5 = map.get("fail_stack");
        String str6 = map.get("result");
        String str7 = str4;
        if (TextUtils.isEmpty(str5)) {
            str7 = "Unknown Fail Reason.";
        }
        if (TextUtils.isEmpty(str5)) {
            str = "";
        } else {
            String valueOf = String.valueOf(str5);
            str = valueOf.length() != 0 ? "\n".concat(valueOf) : new String("\n");
        }
        synchronized (this.lock) {
            zzaip remove = this.zzdil.remove(str2);
            if (remove == null) {
                String valueOf2 = String.valueOf(str2);
                zzd.zzex(valueOf2.length() != 0 ? "Received result for unexpected method invocation: ".concat(valueOf2) : new String("Received result for unexpected method invocation: "));
            } else if (!TextUtils.isEmpty(str3)) {
                String valueOf3 = String.valueOf(str7);
                String valueOf4 = String.valueOf(str);
                remove.onFailure(valueOf4.length() != 0 ? valueOf3.concat(valueOf4) : new String(valueOf3));
            } else if (str6 == null) {
                remove.zzc(null);
            } else {
                try {
                    JSONObject jSONObject = new JSONObject(str6);
                    if (zzd.zzyg()) {
                        String valueOf5 = String.valueOf(jSONObject.toString(2));
                        zzd.zzeb(valueOf5.length() != 0 ? "Result GMSG: ".concat(valueOf5) : new String("Result GMSG: "));
                    }
                    remove.zzc(jSONObject);
                } catch (JSONException e) {
                    remove.onFailure(e.getMessage());
                }
            }
        }
    }

    public final void zza(String str, zzaip zzaipVar) {
        synchronized (this.lock) {
            this.zzdil.put(str, zzaipVar);
        }
    }
}
