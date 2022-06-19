package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.dnh;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dni.class */
final class dni implements doq {

    /* renamed from: a */
    private static final dni f47285a = new dni();

    private dni() {
    }

    /* renamed from: a */
    public static dni m16320a() {
        return f47285a;
    }

    @Override // com.google.android.gms.internal.ads.doq
    /* renamed from: a */
    public final boolean mo16263a(Class<?> cls) {
        return dnh.class.isAssignableFrom(cls);
    }

    @Override // com.google.android.gms.internal.ads.doq
    /* renamed from: b */
    public final dor mo16262b(Class<?> cls) {
        if (!dnh.class.isAssignableFrom(cls)) {
            String valueOf = String.valueOf(cls.getName());
            throw new IllegalArgumentException(valueOf.length() != 0 ? "Unsupported message type: ".concat(valueOf) : new String("Unsupported message type: "));
        }
        try {
            return (dor) dnh.m16340a((Class<dnh>) cls.asSubclass(dnh.class)).mo14895a(dnh.C12385d.f47279c, (Object) null);
        } catch (Exception e) {
            String valueOf2 = String.valueOf(cls.getName());
            throw new RuntimeException(valueOf2.length() != 0 ? "Unable to get message info for ".concat(valueOf2) : new String("Unable to get message info for "), e);
        }
    }
}
