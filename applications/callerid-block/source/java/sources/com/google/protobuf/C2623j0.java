package com.google.protobuf;
/* renamed from: com.google.protobuf.j0 */
/* loaded from: classes2-dex2jar.jar:com/google/protobuf/j0.class */
final class C2623j0 {

    /* renamed from: a */
    private static final AbstractC2611h0 f11150a = m2567c();

    /* renamed from: b */
    private static final AbstractC2611h0 f11151b = new C2619i0();

    /* renamed from: a */
    public static AbstractC2611h0 m2569a() {
        return f11150a;
    }

    /* renamed from: b */
    public static AbstractC2611h0 m2568b() {
        return f11151b;
    }

    /* renamed from: c */
    private static AbstractC2611h0 m2567c() {
        try {
            return (AbstractC2611h0) Class.forName("com.google.protobuf.MapFieldSchemaFull").getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Exception e) {
            return null;
        }
    }
}
