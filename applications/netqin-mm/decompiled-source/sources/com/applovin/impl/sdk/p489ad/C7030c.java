package com.applovin.impl.sdk.p489ad;

import android.text.TextUtils;
import android.util.Base64;
import com.android.volley.Request;
import java.io.UnsupportedEncodingException;
import org.json.JSONException;
import org.json.JSONObject;
import p131c.p135b.p136a.p148e.C2251d;
import p131c.p135b.p136a.p148e.C2341l;
import p131c.p135b.p136a.p148e.C2374t;
import p131c.p135b.p136a.p148e.p153y.C2422o;
/* renamed from: com.applovin.impl.sdk.ad.c */
/* loaded from: classes-dex2jar.jar:com/applovin/impl/sdk/ad/c.class */
public class C7030c {

    /* renamed from: a */
    public final C2341l f21658a;

    /* renamed from: b */
    public final String f21659b;

    /* renamed from: com.applovin.impl.sdk.ad.c$a */
    /* loaded from: classes-dex2jar.jar:com/applovin/impl/sdk/ad/c$a.class */
    public enum EnumC7031a {
        UNSPECIFIED("UNSPECIFIED"),
        REGULAR("REGULAR"),
        AD_RESPONSE_JSON("AD_RESPONSE_JSON");
        

        /* renamed from: d */
        public final String f21664d;

        EnumC7031a(String str) {
            this.f21664d = str;
        }

        @Override // java.lang.Enum
        public String toString() {
            return this.f21664d;
        }
    }

    public C7030c(String str, C2341l lVar) {
        if (TextUtils.isEmpty(str)) {
            throw new IllegalArgumentException("Identifier is empty");
        } else if (lVar != null) {
            this.f21659b = str;
            this.f21658a = lVar;
        } else {
            throw new IllegalArgumentException("No sdk specified");
        }
    }

    /* renamed from: a */
    public String m18992a() {
        return this.f21659b;
    }

    /* renamed from: a */
    public final String m18991a(C2251d.C2256e<String> eVar) {
        for (String str : this.f21658a.m30275b(eVar)) {
            if (this.f21659b.startsWith(str)) {
                return str;
            }
        }
        return null;
    }

    /* renamed from: b */
    public EnumC7031a m18990b() {
        return m18991a(C2251d.C2256e.f8676h0) != null ? EnumC7031a.REGULAR : m18991a(C2251d.C2256e.f8682i0) != null ? EnumC7031a.AD_RESPONSE_JSON : EnumC7031a.UNSPECIFIED;
    }

    /* renamed from: c */
    public String m18989c() {
        String a = m18991a(C2251d.C2256e.f8676h0);
        if (!TextUtils.isEmpty(a)) {
            return a;
        }
        String a2 = m18991a(C2251d.C2256e.f8682i0);
        if (!TextUtils.isEmpty(a2)) {
            return a2;
        }
        return null;
    }

    /* renamed from: d */
    public JSONObject m18988d() {
        if (m18990b() != EnumC7031a.AD_RESPONSE_JSON) {
            return null;
        }
        try {
            try {
                JSONObject jSONObject = new JSONObject(new String(Base64.decode(this.f21659b.substring(m18989c().length()), 0), Request.DEFAULT_PARAMS_ENCODING));
                C2374t d0 = this.f21658a.m30262d0();
                d0.m30044b("AdToken", "Decoded token into ad response: " + jSONObject);
                return jSONObject;
            } catch (JSONException e) {
                C2374t d02 = this.f21658a.m30262d0();
                d02.m30043b("AdToken", "Unable to decode token '" + this.f21659b + "' into JSON", e);
                return null;
            }
        } catch (UnsupportedEncodingException e2) {
            C2374t d03 = this.f21658a.m30262d0();
            d03.m30043b("AdToken", "Unable to process ad response from token '" + this.f21659b + "'", e2);
            return null;
        }
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C7030c)) {
            return false;
        }
        String str = this.f21659b;
        String str2 = ((C7030c) obj).f21659b;
        if (str != null) {
            z = str.equals(str2);
        } else if (str2 != null) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        String str = this.f21659b;
        return str != null ? str.hashCode() : 0;
    }

    public String toString() {
        String a = C2422o.m29860a(32, this.f21659b);
        return "AdToken{id=" + a + ", type=" + m18990b() + '}';
    }
}
