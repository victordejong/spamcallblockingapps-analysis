package com.google.android.gms.internal.ads;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/doo.class */
final class doo {

    /* renamed from: a  reason: collision with root package name */
    private static final dom f27039a = c();

    /* renamed from: b  reason: collision with root package name */
    private static final dom f27040b = new dop();

    /* JADX INFO: Access modifiers changed from: package-private */
    public static dom a() {
        return f27039a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static dom b() {
        return f27040b;
    }

    private static dom c() {
        try {
            return (dom) Class.forName("com.google.protobuf.MapFieldSchemaFull").getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Exception e) {
            return null;
        }
    }
}
