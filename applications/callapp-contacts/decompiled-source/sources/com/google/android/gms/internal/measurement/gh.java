package com.google.android.gms.internal.measurement;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/gh.class */
final class gh implements hm {

    /* renamed from: a  reason: collision with root package name */
    private static final gh f29058a = new gh();

    private gh() {
    }

    public static gh a() {
        return f29058a;
    }

    @Override // com.google.android.gms.internal.measurement.hm
    public final boolean a(Class<?> cls) {
        return gl.class.isAssignableFrom(cls);
    }

    @Override // com.google.android.gms.internal.measurement.hm
    public final hl b(Class<?> cls) {
        if (!gl.class.isAssignableFrom(cls)) {
            String valueOf = String.valueOf(cls.getName());
            throw new IllegalArgumentException(valueOf.length() != 0 ? "Unsupported message type: ".concat(valueOf) : new String("Unsupported message type: "));
        }
        try {
            return (hl) gl.a((Class<gl>) cls.asSubclass(gl.class)).a(3);
        } catch (Exception e) {
            String valueOf2 = String.valueOf(cls.getName());
            throw new RuntimeException(valueOf2.length() != 0 ? "Unable to get message info for ".concat(valueOf2) : new String("Unable to get message info for "), e);
        }
    }
}
