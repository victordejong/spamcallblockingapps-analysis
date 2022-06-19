package com.google.api.client.util.p290f0;
/* renamed from: com.google.api.client.util.f0.d */
/* loaded from: classes2-dex2jar.jar:com/google/api/client/util/f0/d.class */
final class C8704d {

    /* renamed from: a */
    private static final ThreadLocal<char[]> f38505a = new C8705a();

    /* renamed from: com.google.api.client.util.f0.d$a */
    /* loaded from: classes2-dex2jar.jar:com/google/api/client/util/f0/d$a.class */
    static final class C8705a extends ThreadLocal<char[]> {
        C8705a() {
        }

        /* renamed from: a */
        public char[] initialValue() {
            return new char[1024];
        }
    }

    /* renamed from: a */
    public static char[] m2900a() {
        return f38505a.get();
    }
}
