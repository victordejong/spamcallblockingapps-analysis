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
/* renamed from: com.google.android.gms.internal.ads.hu */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/hu.class */
public final class C12619hu implements AbstractC12607hi<Object> {

    /* renamed from: a */
    private final Object f49360a = new Object();

    /* renamed from: b */
    private final Map<String, AbstractC12621hw> f49361b = new HashMap();

    /* renamed from: a */
    public final <EngineT extends AbstractC12685kf> dbt<JSONObject> m14610a(EngineT enginet, String str, JSONObject jSONObject) {
        C13103zp c13103zp = new C13103zp();
        zzr.zzkv();
        String zzzr = zzj.zzzr();
        m14609a(zzzr, new C12622hx(this, c13103zp));
        try {
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("id", zzzr);
            jSONObject2.put("args", jSONObject);
            enginet.mo13757b(str, jSONObject2);
        } catch (Exception e) {
            c13103zp.setException(e);
        }
        return c13103zp;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12607hi
    /* renamed from: a */
    public final void mo14250a(Object obj, Map<String, String> map) {
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
            str = valueOf.length() != 0 ? StringUtils.f67179LF.concat(valueOf) : new String(StringUtils.f67179LF);
        }
        synchronized (this.f49360a) {
            AbstractC12621hw remove = this.f49361b.remove(str2);
            if (remove == null) {
                String valueOf2 = String.valueOf(str2);
                zzd.zzez(valueOf2.length() != 0 ? "Received result for unexpected method invocation: ".concat(valueOf2) : new String("Received result for unexpected method invocation: "));
            } else if (!TextUtils.isEmpty(str3)) {
                String valueOf3 = String.valueOf(str7);
                String valueOf4 = String.valueOf(str);
                remove.mo14514a(valueOf4.length() != 0 ? valueOf3.concat(valueOf4) : new String(valueOf3));
            } else if (str6 == null) {
                remove.mo14513a((JSONObject) null);
            } else {
                try {
                    JSONObject jSONObject = new JSONObject(str6);
                    if (zzd.zzyz()) {
                        String valueOf5 = String.valueOf(jSONObject.toString(2));
                        zzd.zzed(valueOf5.length() != 0 ? "Result GMSG: ".concat(valueOf5) : new String("Result GMSG: "));
                    }
                    remove.mo14513a(jSONObject);
                } catch (JSONException e) {
                    remove.mo14514a(e.getMessage());
                }
            }
        }
    }

    /* renamed from: a */
    public final void m14609a(String str, AbstractC12621hw abstractC12621hw) {
        synchronized (this.f49360a) {
            this.f49361b.put(str, abstractC12621hw);
        }
    }
}
