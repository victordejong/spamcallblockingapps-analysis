package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import com.google.android.gms.ads.internal.util.zzd;
import com.google.android.gms.ads.internal.util.zzj;
import com.google.android.gms.ads.internal.zzr;
import java.util.HashMap;
import java.util.Map;
import org.apache.commons.lang3.StringUtils;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/hu.class */
public final class hu implements hi<Object> {

    /* renamed from: a  reason: collision with root package name */
    private final Object f28051a = new Object();

    /* renamed from: b  reason: collision with root package name */
    private final Map<String, hw> f28052b = new HashMap();

    public final <EngineT extends kf> dbt<JSONObject> a(EngineT enginet, String str, JSONObject jSONObject) {
        zp zpVar = new zp();
        zzr.zzkv();
        String zzzr = zzj.zzzr();
        a(zzzr, new hx(this, zpVar));
        try {
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("id", zzzr);
            jSONObject2.put("args", jSONObject);
            enginet.b(str, jSONObject2);
        } catch (Exception e) {
            zpVar.setException(e);
        }
        return zpVar;
    }

    @Override // com.google.android.gms.internal.ads.hi
    public final void a(Object obj, Map<String, String> map) {
        String str;
        String str2 = map.get("id");
        String str3 = map.get("fail");
        String str4 = map.get("fail_reason");
        String str5 = map.get("fail_stack");
        String str6 = map.get("result");
        if (TextUtils.isEmpty(str5)) {
            str4 = "Unknown Fail Reason.";
        }
        if (TextUtils.isEmpty(str5)) {
            str = "";
        } else {
            String valueOf = String.valueOf(str5);
            str = valueOf.length() != 0 ? StringUtils.LF.concat(valueOf) : new String(StringUtils.LF);
        }
        synchronized (this.f28051a) {
            hw remove = this.f28052b.remove(str2);
            if (remove == null) {
                String valueOf2 = String.valueOf(str2);
                zzd.zzez(valueOf2.length() != 0 ? "Received result for unexpected method invocation: ".concat(valueOf2) : new String("Received result for unexpected method invocation: "));
            } else if (!TextUtils.isEmpty(str3)) {
                String valueOf3 = String.valueOf(str4);
                String valueOf4 = String.valueOf(str);
                remove.a(valueOf4.length() != 0 ? valueOf3.concat(valueOf4) : new String(valueOf3));
            } else if (str6 == null) {
                remove.a((JSONObject) null);
            } else {
                try {
                    JSONObject jSONObject = new JSONObject(str6);
                    if (zzd.zzyz()) {
                        String valueOf5 = String.valueOf(jSONObject.toString(2));
                        zzd.zzed(valueOf5.length() != 0 ? "Result GMSG: ".concat(valueOf5) : new String("Result GMSG: "));
                    }
                    remove.a(jSONObject);
                } catch (JSONException e) {
                    remove.a(e.getMessage());
                }
            }
        }
    }

    public final void a(String str, hw hwVar) {
        synchronized (this.f28051a) {
            this.f28052b.put(str, hwVar);
        }
    }
}
