package com.google.api.client.p379a.p380a;
/* renamed from: com.google.api.client.a.a.d */
/* loaded from: classes4-dex2jar.jar:com/google/api/client/a/a/d.class */
final class C15204d {

    /* renamed from: a */
    private static final ThreadLocal<char[]> f55051a = new ThreadLocal<char[]>() { // from class: com.google.api.client.a.a.d.1
        @Override // java.lang.ThreadLocal
        protected final /* bridge */ /* synthetic */ char[] initialValue() {
            return new char[1024];
        }
    };

    private C15204d() {
    }

    /* renamed from: a */
    public static char[] m9288a() {
        return f55051a.get();
    }
}
