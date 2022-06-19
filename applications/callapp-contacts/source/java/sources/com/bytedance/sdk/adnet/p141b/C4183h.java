package com.bytedance.sdk.adnet.p141b;

import com.bytedance.sdk.adnet.core.C4211i;
import com.bytedance.sdk.adnet.core.C4218m;
import com.bytedance.sdk.adnet.err.C4243e;
import com.bytedance.sdk.adnet.p143d.C4227c;
import java.io.UnsupportedEncodingException;
import org.json.JSONObject;
/* renamed from: com.bytedance.sdk.adnet.b.h */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/adnet/b/h.class */
public class C4183h extends AbstractC4182g<String> {
    public C4183h(int i, String str, JSONObject jSONObject, C4218m.AbstractC4219a<String> abstractC4219a) {
        super(i, str, jSONObject == null ? null : jSONObject.toString(), abstractC4219a);
    }

    @Override // com.bytedance.sdk.adnet.p141b.AbstractC4182g, com.bytedance.sdk.adnet.core.Request
    /* renamed from: a */
    public C4218m<String> mo33324a(C4211i c4211i) {
        try {
            return C4218m.m36112a(new String(c4211i.f15450b, C4227c.m36090a(c4211i.f15451c, "utf-8")), C4227c.m36094a(c4211i));
        } catch (UnsupportedEncodingException e) {
            return C4218m.m36113a(new C4243e(e, 604));
        }
    }
}
