package com.bytedance.sdk.adnet.b;

import com.bytedance.sdk.adnet.core.i;
import com.bytedance.sdk.adnet.core.m;
import com.bytedance.sdk.adnet.d.c;
import com.bytedance.sdk.adnet.err.e;
import java.io.UnsupportedEncodingException;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/adnet/b/f.class */
public class f extends g<JSONObject> {
    public f(int i, String str, String str2, m.a<JSONObject> aVar) {
        super(i, str, str2, aVar);
    }

    public f(int i, String str, JSONObject jSONObject, m.a<JSONObject> aVar) {
        this(i, str, jSONObject == null ? null : jSONObject.toString(), aVar);
    }

    @Override // com.bytedance.sdk.adnet.b.g, com.bytedance.sdk.adnet.core.Request
    public m<JSONObject> a(i iVar) {
        try {
            return m.a(new JSONObject(new String(iVar.f8323b, c.a(iVar.f8324c, "utf-8"))), c.a(iVar));
        } catch (UnsupportedEncodingException e) {
            return m.a(new e(e, 604));
        } catch (JSONException e2) {
            return m.a(new e(e2, 605));
        }
    }
}
