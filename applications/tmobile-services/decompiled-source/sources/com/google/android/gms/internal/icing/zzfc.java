package com.google.android.gms.internal.icing;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/icing/zzfc.class */
final class zzfc {

    /* renamed from: a */
    private static final zzfa f8036a = m13765c();

    /* renamed from: b */
    private static final zzfa f8037b = new zzfd();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static zzfa m13767a() {
        return f8036a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public static zzfa m13766b() {
        return f8037b;
    }

    /* renamed from: c */
    private static zzfa m13765c() {
        try {
            return (zzfa) Class.forName("com.google.protobuf.MapFieldSchemaFull").getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Exception e) {
            return null;
        }
    }
}
