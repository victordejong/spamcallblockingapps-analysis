package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.dcw;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dcu.class */
final class dcu implements ded {

    /* renamed from: a */
    private static final dcu f14069a = new dcu();

    private dcu() {
    }

    /* renamed from: a */
    public static dcu m10099a() {
        return f14069a;
    }

    @Override // com.google.android.gms.internal.ads.ded
    /* renamed from: a */
    public final boolean mo9991a(Class<?> cls) {
        return dcw.class.isAssignableFrom(cls);
    }

    @Override // com.google.android.gms.internal.ads.ded
    /* renamed from: b */
    public final dee mo9990b(Class<?> cls) {
        if (!dcw.class.isAssignableFrom(cls)) {
            String valueOf = String.valueOf(cls.getName());
            throw new IllegalArgumentException(valueOf.length() != 0 ? "Unsupported message type: ".concat(valueOf) : new String("Unsupported message type: "));
        }
        try {
            return (dee) dcw.m10084a((Class<dcw>) cls.asSubclass(dcw.class)).mo8219a(dcw.C2960f.f14078c, (Object) null, (Object) null);
        } catch (Exception e) {
            String valueOf2 = String.valueOf(cls.getName());
            throw new RuntimeException(valueOf2.length() != 0 ? "Unable to get message info for ".concat(valueOf2) : new String("Unable to get message info for "), e);
        }
    }
}
