package com.bytedance.sdk.openadsdk.d;

import com.bytedance.sdk.openadsdk.core.h.d;
import com.bytedance.sdk.openadsdk.core.n;
import com.bytedance.sdk.openadsdk.core.o;
import com.bytedance.sdk.openadsdk.d.h;
import com.bytedance.sdk.openadsdk.i.b.c;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/d/p.class */
public class p extends h<c.a> {
    private o<a> l = n.f();

    public p(String str, String str2, f fVar, o oVar, h.b bVar, h.a aVar) {
        super(str, str2, fVar, oVar, bVar, aVar);
    }

    @Override // com.bytedance.sdk.openadsdk.d.h
    public i a(List<c.a> list) {
        if (this.l == null) {
            this.l = n.f();
        }
        if (list == null || list.size() == 0 || !d.a()) {
            return null;
        }
        JSONObject jSONObject = new JSONObject();
        try {
            JSONArray jSONArray = new JSONArray();
            for (c.a aVar : list) {
                jSONArray.put(aVar.f9610b);
            }
            jSONObject.put("stats_list", jSONArray);
        } catch (Exception e) {
        }
        return this.l.b(jSONObject);
    }
}
