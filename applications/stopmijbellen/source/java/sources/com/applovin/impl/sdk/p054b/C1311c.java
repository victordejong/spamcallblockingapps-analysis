package com.applovin.impl.sdk.p054b;

import android.support.p012v4.media.C0082b;
import java.util.Map;
import p007a6.C0033h;
/* renamed from: com.applovin.impl.sdk.b.c */
/* loaded from: classes-dex2jar.jar:com/applovin/impl/sdk/b/c.class */
public class C1311c {

    /* renamed from: a */
    private final String f4659a;

    /* renamed from: b */
    private Map<String, String> f4660b;

    private C1311c(String str, Map<String, String> map) {
        this.f4659a = str;
        this.f4660b = map;
    }

    /* renamed from: a */
    public static C1311c m5842a(String str) {
        return m5841a(str, null);
    }

    /* renamed from: a */
    public static C1311c m5841a(String str, Map<String, String> map) {
        return new C1311c(str, map);
    }

    /* renamed from: a */
    public Map<String, String> m5843a() {
        return this.f4660b;
    }

    /* renamed from: b */
    public String m5840b() {
        return this.f4659a;
    }

    public String toString() {
        StringBuilder m8752j = C0082b.m8752j("PendingReward{result='");
        C0033h.m8882o(m8752j, this.f4659a, '\'', "params='");
        m8752j.append(this.f4660b);
        m8752j.append('\'');
        m8752j.append('}');
        return m8752j.toString();
    }
}
