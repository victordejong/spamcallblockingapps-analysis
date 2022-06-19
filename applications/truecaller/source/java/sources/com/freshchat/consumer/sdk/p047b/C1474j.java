package com.freshchat.consumer.sdk.p047b;

import android.content.Context;
import com.freshchat.consumer.sdk.p057j.C1613ai;
import com.freshchat.consumer.sdk.p057j.C1626as;
import com.freshchat.consumer.sdk.service.p068e.C1910n;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: com.freshchat.consumer.sdk.b.j */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/b/j.class */
public class C1474j {

    /* renamed from: cL */
    private final C1466e f4087cL;

    public C1474j(Context context) {
        this.f4087cL = C1466e.m40905i(context.getApplicationContext());
    }

    /* renamed from: P */
    public boolean m40833P(String str) {
        return this.f4087cL.m40903iK().has(str);
    }

    /* renamed from: a */
    public void m40832a(String str, C1910n.EnumC1911a enumC1911a) {
        JSONObject m40903iK = this.f4087cL.m40903iK();
        try {
            m40903iK.put(str, enumC1911a.toString());
        } catch (JSONException e) {
            C1613ai.m40282e("FRESHCHAT", "Exception occured", e);
        }
        this.f4087cL.m40997a(m40903iK);
    }

    /* renamed from: bj */
    public boolean m40831bj(String str) {
        if (C1626as.isEmpty(str)) {
            return false;
        }
        try {
            return C1626as.m40223o(C1910n.EnumC1911a.Downvote.toString(), this.f4087cL.m40903iK().getString(str));
        } catch (JSONException e) {
            C1613ai.m40282e("FRESHCHAT", "Exception occured", e);
            return false;
        }
    }
}
