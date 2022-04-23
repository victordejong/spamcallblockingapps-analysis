package com.google.android.gms.internal.measurement;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/gb.class */
final class gb {

    /* renamed from: a  reason: collision with root package name */
    private static final fz<?> f29047a = new ga();

    /* renamed from: b  reason: collision with root package name */
    private static final fz<?> f29048b;

    static {
        fz<?> fzVar;
        try {
            fzVar = (fz) Class.forName("com.google.protobuf.ExtensionSchemaFull").getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Exception e) {
            fzVar = null;
        }
        f29048b = fzVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static fz<?> a() {
        return f29047a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static fz<?> b() {
        fz<?> fzVar = f29048b;
        if (fzVar != null) {
            return fzVar;
        }
        throw new IllegalStateException("Protobuf runtime is not correctly loaded.");
    }
}
