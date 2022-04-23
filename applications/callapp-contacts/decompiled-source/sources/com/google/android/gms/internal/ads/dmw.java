package com.google.android.gms.internal.ads;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dmw.class */
final class dmw {

    /* renamed from: a  reason: collision with root package name */
    private static final dmv<?> f26975a = new dmx();

    /* renamed from: b  reason: collision with root package name */
    private static final dmv<?> f26976b = c();

    /* JADX INFO: Access modifiers changed from: package-private */
    public static dmv<?> a() {
        return f26975a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static dmv<?> b() {
        dmv<?> dmvVar = f26976b;
        if (dmvVar != null) {
            return dmvVar;
        }
        throw new IllegalStateException("Protobuf runtime is not correctly loaded.");
    }

    private static dmv<?> c() {
        try {
            return (dmv) Class.forName("com.google.protobuf.ExtensionSchemaFull").getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Exception e) {
            return null;
        }
    }
}
