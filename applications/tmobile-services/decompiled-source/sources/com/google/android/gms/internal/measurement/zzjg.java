package com.google.android.gms.internal.measurement;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzjg.class */
final class zzjg {

    /* renamed from: a */
    private static final zzje f8556a = m12335c();

    /* renamed from: b */
    private static final zzje f8557b = new zzjd();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static zzje m12337a() {
        return f8556a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public static zzje m12336b() {
        return f8557b;
    }

    /* renamed from: c */
    private static zzje m12335c() {
        try {
            return (zzje) Class.forName("com.google.protobuf.MapFieldSchemaFull").getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Exception e) {
            return null;
        }
    }
}
