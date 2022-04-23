package com.bytedance.sdk.openadsdk.f;

import android.content.Context;
import android.text.TextUtils;
import com.a.a.a.a.a.c;
import com.a.a.a.a.a.d;
import com.bytedance.sdk.openadsdk.core.e.i;
import com.bytedance.sdk.openadsdk.core.video.c.b;
import com.bytedance.sdk.openadsdk.utils.af;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/f/a.class */
public class a implements c {

    /* renamed from: a  reason: collision with root package name */
    private final i f9502a;

    /* renamed from: b  reason: collision with root package name */
    private final b f9503b;

    /* renamed from: c  reason: collision with root package name */
    private final Map<String, c> f9504c = new HashMap();

    private a(b bVar, i iVar) {
        this.f9503b = bVar;
        this.f9502a = iVar;
    }

    private c a(Context context, i iVar, JSONObject jSONObject, String str, boolean z) {
        c a2 = d.a(context, iVar, str);
        a2.c();
        return a2;
    }

    private i a(JSONObject jSONObject, String str) {
        String str2 = null;
        if (jSONObject == null) {
            return null;
        }
        i iVar = new i();
        iVar.b(jSONObject);
        if (!TextUtils.isEmpty(str)) {
            iVar.k(str);
        }
        if (this.f9502a == null) {
            return iVar;
        }
        if (iVar.Q() != null) {
            str2 = iVar.Q().a();
        }
        return TextUtils.isEmpty(str2) ? this.f9502a : (this.f9502a.Q() == null || !str2.equals(this.f9502a.Q().a())) ? iVar : this.f9502a;
    }

    public static a a(b bVar, i iVar) {
        return new a(bVar, iVar);
    }

    private void a(Context context, i iVar, String str) {
        if (context != null && iVar != null) {
            if (iVar.Q() == null) {
                d.a(context, iVar, str).e();
                return;
            }
            c cVar = this.f9504c.get(iVar.Q().a());
            if (cVar != null) {
                cVar.e();
            }
            if (context instanceof b) {
                ((b) context).T();
            }
        }
    }

    private void a(Context context, i iVar, JSONObject jSONObject, int i, boolean z) {
        if (context != null && iVar != null && iVar.Q() != null && jSONObject != null && this.f9503b != null && this.f9504c.get(iVar.Q().a()) == null) {
            String a2 = af.a(i);
            if (!TextUtils.isEmpty(a2)) {
                this.f9504c.put(iVar.Q().a(), a(context, iVar, jSONObject, a2, z));
            }
        }
    }

    private void a(i iVar, JSONObject jSONObject) {
        if (this.f9503b != null && iVar != null && iVar.Q() != null) {
            String a2 = iVar.Q().a();
            if (this.f9504c.containsKey(a2)) {
                this.f9504c.remove(a2);
                try {
                    JSONObject jSONObject2 = new JSONObject();
                    jSONObject2.put("message", "success");
                    jSONObject2.put("status", "unsubscribed");
                    jSONObject2.put("appad", jSONObject);
                    this.f9503b.a("app_ad_event", jSONObject2);
                } catch (JSONException e) {
                    e.printStackTrace();
                }
            }
        }
    }

    @Override // com.bytedance.sdk.openadsdk.f.c
    public void a() {
    }

    @Override // com.bytedance.sdk.openadsdk.f.c
    public void a(Context context, JSONObject jSONObject, String str) {
        JSONObject optJSONObject;
        if (context != null && jSONObject != null && (optJSONObject = jSONObject.optJSONObject("data")) != null) {
            a(context, a(optJSONObject, (String) null), str);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.f.c
    public void a(Context context, JSONObject jSONObject, String str, int i, boolean z) {
        JSONObject optJSONObject;
        if (context != null && jSONObject != null && (optJSONObject = jSONObject.optJSONObject("data")) != null) {
            a(context, a(optJSONObject, str), optJSONObject, i, z);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.f.c
    public void a(JSONObject jSONObject) {
        JSONObject optJSONObject;
        if (jSONObject != null && (optJSONObject = jSONObject.optJSONObject("data")) != null) {
            a(a(optJSONObject, (String) null), optJSONObject);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.f.c
    public void b() {
    }

    @Override // com.bytedance.sdk.openadsdk.f.c
    public void b(JSONObject jSONObject) {
    }

    @Override // com.bytedance.sdk.openadsdk.f.c
    public void c() {
        this.f9504c.clear();
    }
}
