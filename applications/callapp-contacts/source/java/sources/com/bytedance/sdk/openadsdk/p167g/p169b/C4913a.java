package com.bytedance.sdk.openadsdk.p167g.p169b;

import android.util.Log;
import com.bytedance.sdk.openadsdk.core.C4570g;
import com.bytedance.sdk.openadsdk.core.C4754w;
import com.bytedance.sdk.openadsdk.core.p154e.C4557i;
import com.bytedance.sdk.openadsdk.p167g.p168a.AbstractC4874d;
import com.bytedance.sdk.openadsdk.p167g.p168a.C4878f;
import com.bytedance.sdk.openadsdk.p167g.p168a.C4897q;
import com.bytedance.sdk.openadsdk.p170h.AbstractC4920c;
import java.lang.ref.WeakReference;
import java.util.List;
import org.json.JSONObject;
/* renamed from: com.bytedance.sdk.openadsdk.g.b.a */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/g/b/a.class */
public class C4913a extends AbstractC4874d<JSONObject, JSONObject> {

    /* renamed from: a */
    private WeakReference<C4754w> f17924a;

    public C4913a(C4754w c4754w) {
        this.f17924a = new WeakReference<>(c4754w);
    }

    /* renamed from: a */
    public static void m33580a(C4897q c4897q, final C4754w c4754w) {
        c4897q.m33613a("getNetworkData", new AbstractC4874d.AbstractC4876b() { // from class: com.bytedance.sdk.openadsdk.g.b.a.1
            @Override // com.bytedance.sdk.openadsdk.p167g.p168a.AbstractC4874d.AbstractC4876b
            /* renamed from: a */
            public final AbstractC4874d mo33575a() {
                return new C4913a(c4754w);
            }
        });
    }

    /* renamed from: a */
    public void mo33578a(JSONObject jSONObject, C4878f c4878f) throws Exception {
        if (C4570g.m35020b().m34989s()) {
            new StringBuilder("[JSB-REQ] version: 3 data=").append(jSONObject != null ? jSONObject.toString() : "");
        }
        C4754w c4754w = this.f17924a.get();
        if (c4754w != null) {
            c4754w.m34134a(jSONObject, new AbstractC4920c() { // from class: com.bytedance.sdk.openadsdk.g.b.a.2
                @Override // com.bytedance.sdk.openadsdk.p170h.AbstractC4920c
                /* renamed from: a */
                public void mo33568a(boolean z, List<C4557i> list) {
                    try {
                        JSONObject jSONObject2 = new JSONObject();
                        if (z) {
                            jSONObject2.put("creatives", C4754w.m34138a(list));
                            C4913a.this.m33683a((C4913a) jSONObject2);
                        } else {
                            C4913a.this.m33683a((C4913a) jSONObject2);
                        }
                        if (!C4570g.m35020b().m34989s()) {
                            return;
                        }
                        new StringBuilder("[JSB-RSP] version: 3 data=").append(jSONObject2.toString());
                    } catch (Throwable th) {
                        Log.e("DoGetAdsFromNetwork", "onAdLoaded error", th);
                    }
                }
            });
            return;
        }
        Log.e("DoGetAdsFromNetwork", "invoke error");
        m33680c();
    }
}
