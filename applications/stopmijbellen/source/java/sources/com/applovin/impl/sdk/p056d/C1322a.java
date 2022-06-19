package com.applovin.impl.sdk.p056d;

import android.support.p012v4.media.C0082b;
import java.util.Map;
import p007a6.C0033h;
/* renamed from: com.applovin.impl.sdk.d.a */
/* loaded from: classes-dex2jar.jar:com/applovin/impl/sdk/d/a.class */
public class C1322a {

    /* renamed from: a */
    private final String f5025a;

    /* renamed from: b */
    private final String f5026b;

    /* renamed from: c */
    private final Map<String, String> f5027c;

    /* renamed from: d */
    private final boolean f5028d;

    public C1322a(String str, String str2) {
        this(str, str2, null, false);
    }

    public C1322a(String str, String str2, Map<String, String> map, boolean z) {
        this.f5025a = str;
        this.f5026b = str2;
        this.f5027c = map;
        this.f5028d = z;
    }

    /* renamed from: a */
    public String m5783a() {
        return this.f5025a;
    }

    /* renamed from: b */
    public String m5782b() {
        return this.f5026b;
    }

    /* renamed from: c */
    public Map<String, String> m5781c() {
        return this.f5027c;
    }

    /* renamed from: d */
    public boolean m5780d() {
        return this.f5028d;
    }

    public String toString() {
        StringBuilder m8752j = C0082b.m8752j("AdEventPostback{url='");
        C0033h.m8882o(m8752j, this.f5025a, '\'', ", backupUrl='");
        C0033h.m8882o(m8752j, this.f5026b, '\'', ", headers='");
        m8752j.append(this.f5027c);
        m8752j.append('\'');
        m8752j.append(", shouldFireInWebView='");
        m8752j.append(this.f5028d);
        m8752j.append('\'');
        m8752j.append('}');
        return m8752j.toString();
    }
}
