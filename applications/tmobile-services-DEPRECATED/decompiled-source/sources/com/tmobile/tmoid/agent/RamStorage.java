package com.tmobile.tmoid.agent;

import java.util.concurrent.ConcurrentHashMap;
/* loaded from: classes-dex2jar.jar:com/tmobile/tmoid/agent/RamStorage.class */
public class RamStorage {

    /* renamed from: a */
    public static ConcurrentHashMap<String, String> f14688a;

    public RamStorage() {
        f14688a = new ConcurrentHashMap<>();
    }

    /* renamed from: a */
    public void m5106a() {
        m5099h("service_fingerprint", "");
        m5099h("msisdn", "");
        m5099h("aka_token", "");
    }

    /* renamed from: b */
    public String m5105b(String str) {
        return f14688a.get(str);
    }

    /* renamed from: c */
    public String m5104c() {
        return m5105b("aka_token");
    }

    /* renamed from: d */
    public String m5103d() {
        return m5105b("service_fingerprint");
    }

    /* renamed from: e */
    public String m5102e() {
        return m5105b("msisdn");
    }

    /* renamed from: f */
    public boolean m5101f(String str, String str2) {
        return f14688a.remove(str, str2);
    }

    /* renamed from: g */
    public boolean m5100g(String str) {
        return m5101f("aka_token", str);
    }

    /* renamed from: h */
    public String m5099h(String str, String str2) {
        return f14688a.put(str, str2);
    }

    /* renamed from: i */
    public void m5098i(String str) {
        m5099h("aka_token", str);
    }

    /* renamed from: j */
    public void m5097j(String str) {
        m5099h("service_fingerprint", str);
    }

    /* renamed from: k */
    public void m5096k(String str) {
        m5099h("msisdn", str);
    }
}
