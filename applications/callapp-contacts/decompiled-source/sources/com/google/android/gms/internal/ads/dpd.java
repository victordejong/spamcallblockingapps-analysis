package com.google.android.gms.internal.ads;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dpd.class */
final class dpd {

    /* renamed from: a  reason: collision with root package name */
    private static final dpb f27050a = c();

    /* renamed from: b  reason: collision with root package name */
    private static final dpb f27051b = new dpa();

    /* JADX INFO: Access modifiers changed from: package-private */
    public static dpb a() {
        return f27050a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static dpb b() {
        return f27051b;
    }

    private static dpb c() {
        try {
            return (dpb) Class.forName("com.google.protobuf.NewInstanceSchemaFull").getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Exception e) {
            return null;
        }
    }
}
