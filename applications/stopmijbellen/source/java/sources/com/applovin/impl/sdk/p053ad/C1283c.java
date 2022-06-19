package com.applovin.impl.sdk.p053ad;

import android.support.p012v4.media.C0082b;
import android.text.TextUtils;
import android.util.Base64;
import com.applovin.impl.sdk.C1408l;
import com.applovin.impl.sdk.C1479t;
import com.applovin.impl.sdk.p055c.C1314b;
import com.applovin.impl.sdk.utils.StringUtils;
import java.io.UnsupportedEncodingException;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: com.applovin.impl.sdk.ad.c */
/* loaded from: classes-dex2jar.jar:com/applovin/impl/sdk/ad/c.class */
public class C1283c {

    /* renamed from: a */
    private final C1408l f4576a;

    /* renamed from: b */
    private final String f4577b;

    /* renamed from: com.applovin.impl.sdk.ad.c$a */
    /* loaded from: classes-dex2jar.jar:com/applovin/impl/sdk/ad/c$a.class */
    public enum EnumC1284a {
        UNSPECIFIED("UNSPECIFIED"),
        REGULAR("REGULAR"),
        AD_RESPONSE_JSON("AD_RESPONSE_JSON");
        

        /* renamed from: d */
        private final String f4582d;

        EnumC1284a(String str) {
            this.f4582d = str;
        }

        @Override // java.lang.Enum
        public String toString() {
            return this.f4582d;
        }
    }

    public C1283c(String str, C1408l c1408l) {
        if (!TextUtils.isEmpty(str)) {
            if (c1408l == null) {
                throw new IllegalArgumentException("No sdk specified");
            }
            this.f4577b = str;
            this.f4576a = c1408l;
            return;
        }
        throw new IllegalArgumentException("Identifier is empty");
    }

    /* renamed from: a */
    private String m6013a(C1314b<String> c1314b) {
        for (String str : this.f4576a.m5480b(c1314b)) {
            if (this.f4577b.startsWith(str)) {
                return str;
            }
        }
        return null;
    }

    /* renamed from: a */
    public String m6014a() {
        return this.f4577b;
    }

    /* renamed from: b */
    public EnumC1284a m6012b() {
        return m6013a(C1314b.f4799bb) != null ? EnumC1284a.REGULAR : m6013a(C1314b.f4800bc) != null ? EnumC1284a.AD_RESPONSE_JSON : EnumC1284a.UNSPECIFIED;
    }

    /* renamed from: c */
    public String m6011c() {
        String m6013a = m6013a(C1314b.f4799bb);
        if (!TextUtils.isEmpty(m6013a)) {
            return m6013a;
        }
        String m6013a2 = m6013a(C1314b.f4800bc);
        if (TextUtils.isEmpty(m6013a2)) {
            return null;
        }
        return m6013a2;
    }

    /* renamed from: d */
    public JSONObject m6010d() {
        if (m6012b() == EnumC1284a.AD_RESPONSE_JSON) {
            try {
                try {
                    JSONObject jSONObject = new JSONObject(new String(Base64.decode(this.f4577b.substring(m6011c().length()), 0), "UTF-8"));
                    C1479t m5542A = this.f4576a.m5542A();
                    m5542A.m5116b("AdToken", "Decoded token into ad response: " + jSONObject);
                    return jSONObject;
                } catch (JSONException e) {
                    C1479t m5542A2 = this.f4576a.m5542A();
                    m5542A2.m5115b("AdToken", "Unable to decode token '" + this.f4577b + "' into JSON", e);
                    return null;
                }
            } catch (UnsupportedEncodingException e2) {
                this.f4576a.m5542A().m5115b("AdToken", C0082b.m8754h(C0082b.m8752j("Unable to process ad response from token '"), this.f4577b, "'"), e2);
                return null;
            }
        }
        return null;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C1283c)) {
            return false;
        }
        String str = this.f4577b;
        String str2 = ((C1283c) obj).f4577b;
        if (str != null) {
            z = str.equals(str2);
        } else if (str2 != null) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        String str = this.f4577b;
        return str != null ? str.hashCode() : 0;
    }

    public String toString() {
        String prefixToIndex = StringUtils.prefixToIndex(32, this.f4577b);
        return "AdToken{id=" + prefixToIndex + ", type=" + m6012b() + '}';
    }
}
