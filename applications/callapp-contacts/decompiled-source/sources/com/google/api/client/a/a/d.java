package com.google.api.client.a.a;
/* loaded from: classes4-dex2jar.jar:com/google/api/client/a/a/d.class */
final class d {

    /* renamed from: a  reason: collision with root package name */
    private static final ThreadLocal<char[]> f31601a = new ThreadLocal<char[]>() { // from class: com.google.api.client.a.a.d.1
        @Override // java.lang.ThreadLocal
        protected final /* bridge */ /* synthetic */ char[] initialValue() {
            return new char[1024];
        }
    };

    private d() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static char[] a() {
        return f31601a.get();
    }
}
