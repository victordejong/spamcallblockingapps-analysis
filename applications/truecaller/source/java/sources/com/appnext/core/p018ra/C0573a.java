package com.appnext.core.p018ra;

import android.content.Context;
import android.text.TextUtils;
import com.appnext.base.C0472a;
import com.appnext.base.p010b.C0481b;
import com.appnext.core.C0551g;
import com.appnext.core.p018ra.services.C0585a;
import org.json.JSONObject;
/* renamed from: com.appnext.core.ra.a */
/* loaded from: classes-dex2jar.jar:com/appnext/core/ra/a.class */
public class C0573a {

    /* renamed from: eK */
    private static final String f1861eK = "https://cdn.appnext.com/tools/sdk/confign/sdk_core/" + C0551g.m42382av() + "/sdk_config.json";

    /* renamed from: eL */
    private static volatile C0573a f1862eL;

    /* renamed from: aM */
    private Context f1863aM;

    /* renamed from: eM */
    private JSONObject f1864eM;

    private C0573a(Context context) {
        try {
            this.f1863aM = context;
            String m42555d = C0481b.m42559ak().m42555d("config_store", null);
            if (TextUtils.isEmpty(m42555d)) {
                return;
            }
            this.f1864eM = new JSONObject(m42555d);
        } catch (Throwable th) {
            C0472a.m42577a("RAConfigManager$RAConfigManager", th);
        }
    }

    /* renamed from: aI */
    private long m42323aI() {
        long m42319c;
        synchronized (this) {
            m42319c = m42319c("send_rc_int", 240);
        }
        return m42319c;
    }

    /* renamed from: aJ */
    private long m42322aJ() {
        long m42319c;
        synchronized (this) {
            m42319c = m42319c("config_int", 14400);
        }
        return m42319c;
    }

    /* renamed from: aK */
    private JSONObject m42321aK() {
        try {
            String m42320aL = m42320aL();
            if (TextUtils.isEmpty(m42320aL)) {
                return null;
            }
            if (!TextUtils.isEmpty(m42320aL)) {
                C0481b.m42559ak().m42554e("config_store", m42320aL);
            }
            JSONObject jSONObject = new JSONObject(m42320aL);
            this.f1864eM = jSONObject;
            return jSONObject;
        } catch (Throwable th) {
            C0472a.m42577a("RAConfigManager$downloadConfigFileAndStore", th);
            return null;
        }
    }

    /* renamed from: aL */
    private String m42320aL() {
        try {
            return C0551g.m42391a(this.f1863aM, f1861eK, null);
        } catch (Throwable th) {
            C0472a.m42577a("RAConfigManager$downloadConfigFile", th);
            return null;
        }
    }

    /* renamed from: c */
    private long m42319c(String str, int i) {
        try {
            if (this.f1864eM != null) {
                return m42318d(str, i);
            }
        } catch (Throwable th) {
            C0472a.m42577a("RAConfigManager$getLongValue", th);
        }
        return i;
    }

    /* renamed from: d */
    private long m42318d(String str, int i) {
        try {
            JSONObject jSONObject = this.f1864eM;
            if (jSONObject != null && jSONObject.has(str)) {
                return this.f1864eM.getLong(str);
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
        return i;
    }

    /* renamed from: n */
    private String m42317n(String str, String str2) {
        try {
            JSONObject jSONObject = this.f1864eM;
            if (jSONObject != null && jSONObject != null) {
                return m42316o(str, str2);
            }
        } catch (Throwable th) {
            C0472a.m42577a("RAConfigManager$getStringValue", th);
        }
        return str2;
    }

    /* renamed from: o */
    private String m42316o(String str, String str2) {
        try {
            JSONObject jSONObject = this.f1864eM;
            if (jSONObject != null && jSONObject.has(str)) {
                return this.f1864eM.getString(str);
            }
        } catch (Throwable th) {
            C0472a.m42577a("RAConfigManager$getStringValueFromLocalJson", th);
        }
        return str2;
    }

    /* renamed from: r */
    public static C0573a m42315r(Context context) {
        if (f1862eL == null) {
            synchronized (C0573a.class) {
                try {
                    if (f1862eL == null) {
                        f1862eL = new C0573a(context);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f1862eL;
    }

    /* renamed from: aG */
    public final boolean m42325aG() {
        if (this.f1864eM == null) {
            m42321aK();
        }
        String m42317n = m42317n("rc_send", "on");
        return m42317n != null && m42317n.equalsIgnoreCase("on");
    }

    /* renamed from: aH */
    public final void m42324aH() {
        try {
            m42321aK();
            C0585a.m42294s(this.f1863aM).m42297b(m42322aJ());
            if (m42325aG()) {
                C0585a.m42294s(this.f1863aM).m42296c(m42323aI());
            } else {
                C0585a.m42294s(this.f1863aM).m42298aW();
            }
        } catch (Throwable th) {
            C0472a.m42577a("RRAConfigManager$downloadConfigFileFromServer", th);
        }
    }
}
