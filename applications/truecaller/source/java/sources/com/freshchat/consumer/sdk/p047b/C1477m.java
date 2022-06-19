package com.freshchat.consumer.sdk.p047b;

import android.content.Context;
import com.freshchat.consumer.sdk.p057j.C1626as;
import com.freshchat.consumer.sdk.p057j.C1723q;
import com.freshchat.consumer.sdk.service.p068e.C1890am;
import com.tenor.android.core.constant.StringConstant;
import org.json.JSONException;
import org.json.JSONObject;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: com.freshchat.consumer.sdk.b.m */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/b/m.class */
public class C1477m {

    /* renamed from: cL */
    private final C1466e f4094cL;

    public C1477m(Context context) {
        this.f4094cL = C1466e.m40905i(context.getApplicationContext());
    }

    /* renamed from: bx */
    private String m40830bx(String str) {
        return str.split(StringConstant.DASH)[0];
    }

    /* renamed from: by */
    private String m40829by(String str) {
        return str.split(StringConstant.DASH)[1];
    }

    /* renamed from: j */
    private String m40825j(String str, String str2) {
        if (C1626as.isEmpty(str2) || C1626as.isEmpty(str)) {
            return null;
        }
        return C22128a.m8725C2(str, StringConstant.DASH, str2);
    }

    /* renamed from: k */
    private String m40824k(String str, String str2) {
        return C22128a.m8725C2(str, StringConstant.DASH, str2);
    }

    /* renamed from: c */
    public void m40827c(String str, String str2, String str3, String str4) {
        String m40825j;
        if (C1626as.isEmpty(str2) || C1626as.isEmpty(str) || C1626as.isEmpty(str3)) {
            return;
        }
        JSONObject m40903iK = this.f4094cL.m40903iK();
        try {
            m40825j = m40825j(str, str2);
        } catch (JSONException e) {
            C1723q.m39823a(e);
        }
        if (C1626as.isEmpty(m40825j)) {
            return;
        }
        m40903iK.put(m40825j, m40824k(str3, str4));
        this.f4094cL.m40997a(m40903iK);
    }

    /* renamed from: c */
    public boolean m40828c(String str, String str2, String str3) {
        if (C1626as.isEmpty(str2) || C1626as.isEmpty(str)) {
            return false;
        }
        try {
            String m40825j = m40825j(str, str2);
            if (C1626as.isEmpty(m40825j)) {
                return false;
            }
            String string = this.f4094cL.m40903iK().getString(m40825j);
            if (C1626as.m40222p(str3, m40829by(string))) {
                return false;
            }
            return C1626as.m40223o(C1890am.EnumC1891a.THUMBS_DOWN.getValue(), m40830bx(string));
        } catch (JSONException e) {
            C1723q.m39823a(e);
            return false;
        }
    }

    /* renamed from: d */
    public boolean m40826d(String str, String str2, String str3) {
        if (C1626as.isEmpty(str2) || C1626as.isEmpty(str)) {
            return false;
        }
        try {
            String m40825j = m40825j(str, str2);
            if (C1626as.isEmpty(m40825j) || !this.f4094cL.m40903iK().has(m40825j)) {
                return false;
            }
            return C1626as.m40223o(str3, m40829by(this.f4094cL.m40903iK().getString(m40825j)));
        } catch (Exception e) {
            C1723q.m39823a(e);
            return false;
        }
    }
}
