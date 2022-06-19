package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import com.google.android.gms.ads.internal.C5667s;
import com.google.android.gms.ads.internal.util.C5722o1;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/c30.class */
public final class c30 implements n20<Object> {

    /* renamed from: a */
    private final Object f21085a = new Object();

    /* renamed from: b */
    private final Map<String, b30> f21086b = new HashMap();

    @Override // com.google.android.gms.internal.ads.n20
    /* renamed from: a */
    public final void mo8404a(Object obj, Map<String, String> map) {
        String str;
        String str2 = map.get("id");
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
        synchronized (this.f21085a) {
            b30 remove = this.f21086b.remove(str2);
            if (remove == null) {
                String valueOf2 = String.valueOf(str2);
                ei0.m15464f(valueOf2.length() != 0 ? "Received result for unexpected method invocation: ".concat(valueOf2) : new String("Received result for unexpected method invocation: "));
            } else if (!TextUtils.isEmpty(str3)) {
                String valueOf3 = String.valueOf(str7);
                String valueOf4 = String.valueOf(str);
                remove.mo10397r(valueOf4.length() != 0 ? valueOf3.concat(valueOf4) : new String(valueOf3));
            } else if (str6 == null) {
                remove.mo10396s(null);
            } else {
                try {
                    JSONObject jSONObject = new JSONObject(str6);
                    if (C5722o1.m17988m()) {
                        String valueOf5 = String.valueOf(jSONObject.toString(2));
                        C5722o1.m17990k(valueOf5.length() != 0 ? "Result GMSG: ".concat(valueOf5) : new String("Result GMSG: "));
                    }
                    remove.mo10396s(jSONObject);
                } catch (JSONException e) {
                    remove.mo10397r(e.getMessage());
                }
            }
        }
    }

    /* renamed from: b */
    public final void m16124b(String str, b30 b30Var) {
        synchronized (this.f21085a) {
            this.f21086b.put(str, b30Var);
        }
    }

    /* renamed from: c */
    public final <EngineT extends g50> r03<JSONObject> m16123c(EngineT enginet, String str, JSONObject jSONObject) {
        vi0 vi0Var = new vi0();
        C5667s.m18160d();
        String uuid = UUID.randomUUID().toString();
        m16124b(uuid, new a30(this, vi0Var));
        try {
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("id", uuid);
            jSONObject2.put("args", jSONObject);
            enginet.mo7957E0(str, jSONObject2);
        } catch (Exception e) {
            vi0Var.m10014f(e);
        }
        return vi0Var;
    }
}
