package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/deq.class */
final class deq {

    /* renamed from: a */
    private static final deo f14163a = m9929c();

    /* renamed from: b */
    private static final deo f14164b = new den();

    /* renamed from: a */
    public static deo m9931a() {
        return f14163a;
    }

    /* renamed from: b */
    public static deo m9930b() {
        return f14164b;
    }

    /* renamed from: c */
    private static deo m9929c() {
        deo deoVar;
        try {
            deoVar = (deo) Class.forName("com.google.protobuf.NewInstanceSchemaFull").getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Exception e) {
            deoVar = null;
        }
        return deoVar;
    }
}
