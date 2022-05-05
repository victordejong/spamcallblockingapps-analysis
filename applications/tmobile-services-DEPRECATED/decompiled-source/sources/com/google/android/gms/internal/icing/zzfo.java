package com.google.android.gms.internal.icing;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/icing/zzfo.class */
final class zzfo {

    /* renamed from: a */
    private static final zzfm f8055a = m13714c();

    /* renamed from: b */
    private static final zzfm f8056b = new zzfp();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static zzfm m13716a() {
        return f8055a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public static zzfm m13715b() {
        return f8056b;
    }

    /* renamed from: c */
    private static zzfm m13714c() {
        try {
            return (zzfm) Class.forName("com.google.protobuf.NewInstanceSchemaFull").getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Exception e) {
            return null;
        }
    }
}
