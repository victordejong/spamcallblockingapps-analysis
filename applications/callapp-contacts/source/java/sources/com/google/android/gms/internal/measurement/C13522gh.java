package com.google.android.gms.internal.measurement;
/* renamed from: com.google.android.gms.internal.measurement.gh */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/gh.class */
final class C13522gh implements AbstractC13554hm {

    /* renamed from: a */
    private static final C13522gh f50758a = new C13522gh();

    private C13522gh() {
    }

    /* renamed from: a */
    public static C13522gh m12780a() {
        return f50758a;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC13554hm
    /* renamed from: a */
    public final boolean mo12715a(Class<?> cls) {
        return AbstractC13526gl.class.isAssignableFrom(cls);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC13554hm
    /* renamed from: b */
    public final AbstractC13553hl mo12714b(Class<?> cls) {
        if (!AbstractC13526gl.class.isAssignableFrom(cls)) {
            String valueOf = String.valueOf(cls.getName());
            throw new IllegalArgumentException(valueOf.length() != 0 ? "Unsupported message type: ".concat(valueOf) : new String("Unsupported message type: "));
        }
        try {
            return (AbstractC13553hl) AbstractC13526gl.m12764a((Class<AbstractC13526gl>) cls.asSubclass(AbstractC13526gl.class)).mo12768a(3);
        } catch (Exception e) {
            String valueOf2 = String.valueOf(cls.getName());
            throw new RuntimeException(valueOf2.length() != 0 ? "Unable to get message info for ".concat(valueOf2) : new String("Unable to get message info for "), e);
        }
    }
}
