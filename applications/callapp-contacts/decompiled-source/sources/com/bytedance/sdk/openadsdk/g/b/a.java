package com.bytedance.sdk.openadsdk.g.b;

import android.util.Log;
import com.bytedance.sdk.openadsdk.core.e.i;
import com.bytedance.sdk.openadsdk.core.g;
import com.bytedance.sdk.openadsdk.core.w;
import com.bytedance.sdk.openadsdk.g.a.d;
import com.bytedance.sdk.openadsdk.g.a.f;
import com.bytedance.sdk.openadsdk.g.a.q;
import com.bytedance.sdk.openadsdk.h.c;
import java.lang.ref.WeakReference;
import java.util.List;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/g/b/a.class */
public class a extends d<JSONObject, JSONObject> {

    /* renamed from: a  reason: collision with root package name */
    private WeakReference<w> f9582a;

    public a(w wVar) {
        this.f9582a = new WeakReference<>(wVar);
    }

    public static void a(q qVar, final w wVar) {
        qVar.a("getNetworkData", new d.b() { // from class: com.bytedance.sdk.openadsdk.g.b.a.1
            @Override // com.bytedance.sdk.openadsdk.g.a.d.b
            public final d a() {
                return new a(w.this);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void a(JSONObject jSONObject, f fVar) throws Exception {
        if (g.b().s()) {
            new StringBuilder("[JSB-REQ] version: 3 data=").append(jSONObject != null ? jSONObject.toString() : "");
        }
        w wVar = this.f9582a.get();
        if (wVar == null) {
            Log.e("DoGetAdsFromNetwork", "invoke error");
            c();
            return;
        }
        wVar.a(jSONObject, new c() { // from class: com.bytedance.sdk.openadsdk.g.b.a.2
            @Override // com.bytedance.sdk.openadsdk.h.c
            public void a(boolean z, List<i> list) {
                try {
                    JSONObject jSONObject2 = new JSONObject();
                    if (z) {
                        jSONObject2.put("creatives", w.a(list));
                        a.this.a((a) jSONObject2);
                    } else {
                        a.this.a((a) jSONObject2);
                    }
                    if (g.b().s()) {
                        new StringBuilder("[JSB-RSP] version: 3 data=").append(jSONObject2.toString());
                    }
                } catch (Throwable th) {
                    Log.e("DoGetAdsFromNetwork", "onAdLoaded error", th);
                }
            }
        });
    }
}
