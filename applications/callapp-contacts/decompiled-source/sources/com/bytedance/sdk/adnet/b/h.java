package com.bytedance.sdk.adnet.b;

import com.bytedance.sdk.adnet.core.i;
import com.bytedance.sdk.adnet.core.m;
import com.bytedance.sdk.adnet.d.c;
import com.bytedance.sdk.adnet.err.e;
import java.io.UnsupportedEncodingException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/adnet/b/h.class */
public class h extends g<String> {
    public h(int i, String str, JSONObject jSONObject, m.a<String> aVar) {
        super(i, str, jSONObject == null ? null : jSONObject.toString(), aVar);
    }

    @Override // com.bytedance.sdk.adnet.b.g, com.bytedance.sdk.adnet.core.Request
    public m<String> a(i iVar) {
        try {
            return m.a(new String(iVar.f8323b, c.a(iVar.f8324c, "utf-8")), c.a(iVar));
        } catch (UnsupportedEncodingException e) {
            return m.a(new e(e, 604));
        }
    }
}
