package com.google.android.gms.internal.measurement;
/* renamed from: com.google.android.gms.internal.measurement.u6 */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/u6.class */
final class C7571u6 {

    /* renamed from: a */
    private static final C7558t6 f34705a;

    /* renamed from: b */
    private static final C7558t6 f34706b;

    static {
        C7558t6 c7558t6;
        try {
            c7558t6 = (C7558t6) Class.forName("com.google.protobuf.MapFieldSchemaFull").getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Exception e) {
            c7558t6 = null;
        }
        f34705a = c7558t6;
        f34706b = new C7558t6();
    }

    /* renamed from: a */
    public static C7558t6 m6880a() {
        return f34705a;
    }

    /* renamed from: b */
    public static C7558t6 m6879b() {
        return f34706b;
    }
}
