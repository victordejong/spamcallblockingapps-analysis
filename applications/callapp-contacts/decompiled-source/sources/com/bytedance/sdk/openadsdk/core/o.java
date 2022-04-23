package com.bytedance.sdk.openadsdk.core;

import com.bytedance.sdk.openadsdk.AdSlot;
import com.bytedance.sdk.openadsdk.FilterWord;
import com.bytedance.sdk.openadsdk.core.e.j;
import com.bytedance.sdk.openadsdk.core.e.l;
import com.bytedance.sdk.openadsdk.core.p;
import com.bytedance.sdk.openadsdk.d.i;
import java.util.List;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/core/o.class */
public interface o<T> {

    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/core/o$a.class */
    public interface a {
        void a(int i, String str);

        void a(com.bytedance.sdk.openadsdk.core.e.a aVar);
    }

    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/core/o$b.class */
    public interface b {
        void a(int i, String str);

        void a(p.b bVar);
    }

    l a();

    i a(List<T> list);

    JSONObject a(JSONObject jSONObject);

    void a(AdSlot adSlot, j jVar, int i, a aVar);

    void a(com.bytedance.sdk.openadsdk.core.e.i iVar, List<FilterWord> list);

    void a(JSONObject jSONObject, b bVar);

    i b(JSONObject jSONObject);
}
