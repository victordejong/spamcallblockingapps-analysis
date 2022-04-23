package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.dnh;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dni.class */
final class dni implements doq {

    /* renamed from: a  reason: collision with root package name */
    private static final dni f27000a = new dni();

    private dni() {
    }

    public static dni a() {
        return f27000a;
    }

    @Override // com.google.android.gms.internal.ads.doq
    public final boolean a(Class<?> cls) {
        return dnh.class.isAssignableFrom(cls);
    }

    @Override // com.google.android.gms.internal.ads.doq
    public final dor b(Class<?> cls) {
        if (!dnh.class.isAssignableFrom(cls)) {
            String valueOf = String.valueOf(cls.getName());
            throw new IllegalArgumentException(valueOf.length() != 0 ? "Unsupported message type: ".concat(valueOf) : new String("Unsupported message type: "));
        }
        try {
            return (dor) dnh.a((Class<dnh>) cls.asSubclass(dnh.class)).a(dnh.d.f26998c, (Object) null);
        } catch (Exception e) {
            String valueOf2 = String.valueOf(cls.getName());
            throw new RuntimeException(valueOf2.length() != 0 ? "Unable to get message info for ".concat(valueOf2) : new String("Unable to get message info for "), e);
        }
    }
}
