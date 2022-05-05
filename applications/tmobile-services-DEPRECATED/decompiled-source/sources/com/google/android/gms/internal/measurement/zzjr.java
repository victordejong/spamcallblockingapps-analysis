package com.google.android.gms.internal.measurement;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzjr.class */
final class zzjr {

    /* renamed from: a */
    private static final zzjp f8581a = m12273c();

    /* renamed from: b */
    private static final zzjp f8582b = new zzjs();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static zzjp m12275a() {
        return f8581a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public static zzjp m12274b() {
        return f8582b;
    }

    /* renamed from: c */
    private static zzjp m12273c() {
        try {
            return (zzjp) Class.forName("com.google.protobuf.NewInstanceSchemaFull").getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Exception e) {
            return null;
        }
    }
}
