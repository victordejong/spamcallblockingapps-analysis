package com.google.android.gms.internal.measurement;
/* renamed from: com.google.android.gms.internal.measurement.hv */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/hv.class */
final class C13563hv {

    /* renamed from: a */
    private static final C13562hu f50812a;

    /* renamed from: b */
    private static final C13562hu f50813b;

    static {
        C13562hu c13562hu;
        try {
            c13562hu = (C13562hu) Class.forName("com.google.protobuf.NewInstanceSchemaFull").getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Exception e) {
            c13562hu = null;
        }
        f50812a = c13562hu;
        f50813b = new C13562hu();
    }

    /* renamed from: a */
    public static C13562hu m12667a() {
        return f50812a;
    }

    /* renamed from: b */
    public static C13562hu m12666b() {
        return f50813b;
    }
}
