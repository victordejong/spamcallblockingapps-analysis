package com.bytedance.sdk.openadsdk.p164d;

import com.bytedance.sdk.openadsdk.core.AbstractC4635o;
import com.bytedance.sdk.openadsdk.core.C4600n;
import com.bytedance.sdk.openadsdk.core.p157h.C4587d;
import com.bytedance.sdk.openadsdk.p164d.HandlerThreadC4815h;
import com.bytedance.sdk.openadsdk.p171i.p173b.C4934c;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;
/* renamed from: com.bytedance.sdk.openadsdk.d.p */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/d/p.class */
public class HandlerThreadC4832p extends HandlerThreadC4815h<C4934c.C4936a> {

    /* renamed from: l */
    private AbstractC4635o<C4805a> f17731l = C4600n.m34807f();

    public HandlerThreadC4832p(String str, String str2, AbstractC4813f abstractC4813f, AbstractC4635o abstractC4635o, HandlerThreadC4815h.C4818b c4818b, HandlerThreadC4815h.AbstractC4817a abstractC4817a) {
        super(str, str2, abstractC4813f, abstractC4635o, c4818b, abstractC4817a);
    }

    @Override // com.bytedance.sdk.openadsdk.p164d.HandlerThreadC4815h
    /* renamed from: a */
    public C4820i mo33777a(List<C4934c.C4936a> list) {
        if (this.f17731l == null) {
            this.f17731l = C4600n.m34807f();
        }
        if (list == null || list.size() == 0 || !C4587d.m34919a()) {
            return null;
        }
        JSONObject jSONObject = new JSONObject();
        try {
            JSONArray jSONArray = new JSONArray();
            for (C4934c.C4936a c4936a : list) {
                jSONArray.put(c4936a.f17966b);
            }
            jSONObject.put("stats_list", jSONArray);
        } catch (Exception e) {
        }
        return this.f17731l.mo34655b(jSONObject);
    }
}
