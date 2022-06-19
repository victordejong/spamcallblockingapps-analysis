package com.bytedance.sdk.openadsdk.core;

import com.bytedance.sdk.openadsdk.AdSlot;
import com.bytedance.sdk.openadsdk.FilterWord;
import com.bytedance.sdk.openadsdk.core.C4638p;
import com.bytedance.sdk.openadsdk.core.p154e.C4545a;
import com.bytedance.sdk.openadsdk.core.p154e.C4557i;
import com.bytedance.sdk.openadsdk.core.p154e.C4559j;
import com.bytedance.sdk.openadsdk.core.p154e.C4561l;
import com.bytedance.sdk.openadsdk.p164d.C4820i;
import java.util.List;
import org.json.JSONObject;
/* renamed from: com.bytedance.sdk.openadsdk.core.o */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/core/o.class */
public interface AbstractC4635o<T> {

    /* renamed from: com.bytedance.sdk.openadsdk.core.o$a */
    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/core/o$a.class */
    public interface AbstractC4636a {
        /* renamed from: a */
        void mo34084a(int i, String str);

        /* renamed from: a */
        void mo34083a(C4545a c4545a);
    }

    /* renamed from: com.bytedance.sdk.openadsdk.core.o$b */
    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/core/o$b.class */
    public interface AbstractC4637b {
        /* renamed from: a */
        void mo34687a(int i, String str);

        /* renamed from: a */
        void mo34686a(C4638p.C4646b c4646b);
    }

    /* renamed from: a */
    C4561l mo34685a();

    /* renamed from: a */
    C4820i mo34668a(List<T> list);

    /* renamed from: a */
    JSONObject mo34667a(JSONObject jSONObject);

    /* renamed from: a */
    void mo34679a(AdSlot adSlot, C4559j c4559j, int i, AbstractC4636a abstractC4636a);

    /* renamed from: a */
    void mo34678a(C4557i c4557i, List<FilterWord> list);

    /* renamed from: a */
    void mo34665a(JSONObject jSONObject, AbstractC4637b abstractC4637b);

    /* renamed from: b */
    C4820i mo34655b(JSONObject jSONObject);
}
