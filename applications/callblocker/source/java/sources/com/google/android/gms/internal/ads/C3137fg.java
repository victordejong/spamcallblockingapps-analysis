package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import com.google.android.gms.ads.internal.C2341q;
import java.util.HashMap;
import java.util.Map;
import javax.annotation.ParametersAreNonnullByDefault;
import javax.annotation.concurrent.GuardedBy;
import org.json.JSONException;
import org.json.JSONObject;
@ParametersAreNonnullByDefault
/* renamed from: com.google.android.gms.internal.ads.fg */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/fg.class */
public final class C3137fg implements AbstractC3131fa<Object> {

    /* renamed from: a */
    private final Object f16659a = new Object();
    @GuardedBy("lock")

    /* renamed from: b */
    private final Map<String, AbstractC3139fi> f16660b = new HashMap();

    /* renamed from: a */
    public final <EngineT extends AbstractC3212ia> crt<JSONObject> m7837a(EngineT enginet, String str, JSONObject jSONObject) {
        C3658yo c3658yo = new C3658yo();
        C2341q.m14744c();
        String m7011a = C3567ve.m7011a();
        m7836a(m7011a, new C3140fj(this, c3658yo));
        try {
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("id", m7011a);
            jSONObject2.put("args", jSONObject);
            enginet.mo7736a(str, jSONObject2);
        } catch (Exception e) {
            c3658yo.m6733a(e);
        }
        return c3658yo;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3131fa
    /* renamed from: a */
    public final void mo7414a(Object obj, Map<String, String> map) {
        String concat;
        String str = map.get("id");
        String str2 = map.get("fail");
        String str3 = map.get("fail_reason");
        String str4 = map.get("fail_stack");
        String str5 = map.get("result");
        String str6 = TextUtils.isEmpty(str4) ? "Unknown Fail Reason." : str3;
        if (TextUtils.isEmpty(str4)) {
            concat = "";
        } else {
            String valueOf = String.valueOf(str4);
            concat = valueOf.length() != 0 ? "\n".concat(valueOf) : new String("\n");
        }
        synchronized (this.f16659a) {
            AbstractC3139fi remove = this.f16660b.remove(str);
            if (remove == null) {
                String valueOf2 = String.valueOf(str);
                C3556uu.m6745e(valueOf2.length() != 0 ? "Received result for unexpected method invocation: ".concat(valueOf2) : new String("Received result for unexpected method invocation: "));
            } else if (!TextUtils.isEmpty(str2)) {
                String valueOf3 = String.valueOf(str6);
                String valueOf4 = String.valueOf(concat);
                remove.mo7696a(valueOf4.length() != 0 ? valueOf3.concat(valueOf4) : new String(valueOf3));
            } else if (str5 == null) {
                remove.mo7695a((JSONObject) null);
            } else {
                try {
                    JSONObject jSONObject = new JSONObject(str5);
                    if (C3556uu.m7053a()) {
                        String valueOf5 = String.valueOf(jSONObject.toString(2));
                        C3556uu.m7052a(valueOf5.length() != 0 ? "Result GMSG: ".concat(valueOf5) : new String("Result GMSG: "));
                    }
                    remove.mo7695a(jSONObject);
                } catch (JSONException e) {
                    remove.mo7696a(e.getMessage());
                }
            }
        }
    }

    /* renamed from: a */
    public final void m7836a(String str, AbstractC3139fi abstractC3139fi) {
        synchronized (this.f16659a) {
            this.f16660b.put(str, abstractC3139fi);
        }
    }
}
