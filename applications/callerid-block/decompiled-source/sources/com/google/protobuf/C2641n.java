package com.google.protobuf;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.protobuf.n */
/* loaded from: classes2-dex2jar.jar:com/google/protobuf/n.class */
public final class C2641n {

    /* renamed from: a */
    static final Class<?> f11174a = m2415c();

    /* renamed from: a */
    public static C2643o m2417a() {
        C2643o b = m2416b("getEmptyRegistry");
        if (b == null) {
            b = C2643o.f11177d;
        }
        return b;
    }

    /* renamed from: b */
    private static final C2643o m2416b(String str) {
        Class<?> cls = f11174a;
        if (cls == null) {
            return null;
        }
        try {
            return (C2643o) cls.getDeclaredMethod(str, new Class[0]).invoke(null, new Object[0]);
        } catch (Exception e) {
            return null;
        }
    }

    /* renamed from: c */
    static Class<?> m2415c() {
        try {
            return Class.forName("com.google.protobuf.ExtensionRegistry");
        } catch (ClassNotFoundException e) {
            return null;
        }
    }
}
