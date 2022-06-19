package com.bytedance.sdk.p127a.p129b.p130a.p133c;
/* renamed from: com.bytedance.sdk.a.b.a.c.f */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/a/b/a/c/f.class */
public final class C4025f {
    /* renamed from: a */
    public static boolean m36874a(String str) {
        return str.equals("POST") || str.equals("PATCH") || str.equals("PUT") || str.equals("DELETE") || str.equals("MOVE");
    }

    /* renamed from: b */
    public static boolean m36873b(String str) {
        return str.equals("POST") || str.equals("PUT") || str.equals("PATCH") || str.equals("PROPPATCH") || str.equals("REPORT");
    }

    /* renamed from: c */
    public static boolean m36872c(String str) {
        return m36873b(str) || str.equals("OPTIONS") || str.equals("DELETE") || str.equals("PROPFIND") || str.equals("MKCOL") || str.equals("LOCK");
    }

    /* renamed from: d */
    public static boolean m36871d(String str) {
        return str.equals("PROPFIND");
    }

    /* renamed from: e */
    public static boolean m36870e(String str) {
        return !str.equals("PROPFIND");
    }
}
