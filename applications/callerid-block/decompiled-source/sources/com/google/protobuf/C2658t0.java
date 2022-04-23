package com.google.protobuf;
/* renamed from: com.google.protobuf.t0 */
/* loaded from: classes2-dex2jar.jar:com/google/protobuf/t0.class */
final class C2658t0 {

    /* renamed from: a */
    private static final AbstractC2652r0 f11213a = m2284c();

    /* renamed from: b */
    private static final AbstractC2652r0 f11214b = new C2654s0();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static AbstractC2652r0 m2286a() {
        return f11213a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public static AbstractC2652r0 m2285b() {
        return f11214b;
    }

    /* renamed from: c */
    private static AbstractC2652r0 m2284c() {
        try {
            return (AbstractC2652r0) Class.forName("com.google.protobuf.NewInstanceSchemaFull").getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Exception e) {
            return null;
        }
    }
}
