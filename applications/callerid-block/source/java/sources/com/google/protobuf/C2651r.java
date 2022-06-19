package com.google.protobuf;
/* renamed from: com.google.protobuf.r */
/* loaded from: classes2-dex2jar.jar:com/google/protobuf/r.class */
final class C2651r {

    /* renamed from: a */
    private static final AbstractC2646p<?> f11205a = new C2648q();

    /* renamed from: b */
    private static final AbstractC2646p<?> f11206b = m2321c();

    /* renamed from: a */
    public static AbstractC2646p<?> m2323a() {
        AbstractC2646p<?> abstractC2646p = f11206b;
        if (abstractC2646p != null) {
            return abstractC2646p;
        }
        throw new IllegalStateException("Protobuf runtime is not correctly loaded.");
    }

    /* renamed from: b */
    public static AbstractC2646p<?> m2322b() {
        return f11205a;
    }

    /* renamed from: c */
    private static AbstractC2646p<?> m2321c() {
        try {
            return (AbstractC2646p) Class.forName("com.google.protobuf.ExtensionSchemaFull").getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Exception e) {
            return null;
        }
    }
}
