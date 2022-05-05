package com.google.android.gms.internal.measurement;

import com.google.android.gms.internal.measurement.zzhz;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzhx.class */
final class zzhx implements zzji {

    /* renamed from: a */
    private static final zzhx f8515a = new zzhx();

    private zzhx() {
    }

    /* renamed from: c */
    public static zzhx m12437c() {
        return f8515a;
    }

    @Override // com.google.android.gms.internal.measurement.zzji
    /* renamed from: a */
    public final boolean mo12329a(Class<?> cls) {
        return zzhz.class.isAssignableFrom(cls);
    }

    @Override // com.google.android.gms.internal.measurement.zzji
    /* renamed from: b */
    public final zzjf mo12328b(Class<?> cls) {
        if (!zzhz.class.isAssignableFrom(cls)) {
            String valueOf = String.valueOf(cls.getName());
            throw new IllegalArgumentException(valueOf.length() != 0 ? "Unsupported message type: ".concat(valueOf) : new String("Unsupported message type: "));
        }
        try {
            return (zzjf) zzhz.m12432l(cls.asSubclass(zzhz.class)).mo12429o(zzhz.zzf.f8523c, null, null);
        } catch (Exception e) {
            String valueOf2 = String.valueOf(cls.getName());
            throw new RuntimeException(valueOf2.length() != 0 ? "Unable to get message info for ".concat(valueOf2) : new String("Unable to get message info for "), e);
        }
    }
}
