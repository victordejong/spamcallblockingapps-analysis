package com.google.android.gms.internal.icing;

import com.google.android.gms.internal.icing.zzdx;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/icing/zzdy.class */
final class zzdy implements zzfe {

    /* renamed from: a */
    private static final zzdy f8010a = new zzdy();

    private zzdy() {
    }

    /* renamed from: a */
    public static zzdy m13810a() {
        return f8010a;
    }

    @Override // com.google.android.gms.internal.icing.zzfe
    /* renamed from: b */
    public final boolean mo13759b(Class<?> cls) {
        return zzdx.class.isAssignableFrom(cls);
    }

    @Override // com.google.android.gms.internal.icing.zzfe
    /* renamed from: c */
    public final zzff mo13758c(Class<?> cls) {
        if (!zzdx.class.isAssignableFrom(cls)) {
            String valueOf = String.valueOf(cls.getName());
            throw new IllegalArgumentException(valueOf.length() != 0 ? "Unsupported message type: ".concat(valueOf) : new String("Unsupported message type: "));
        }
        try {
            return (zzff) zzdx.m13834f(cls.asSubclass(zzdx.class)).mo13474g(zzdx.zze.f8000c, null, null);
        } catch (Exception e) {
            String valueOf2 = String.valueOf(cls.getName());
            throw new RuntimeException(valueOf2.length() != 0 ? "Unable to get message info for ".concat(valueOf2) : new String("Unable to get message info for "), e);
        }
    }
}
