package com.google.android.gms.internal.icing;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/icing/zzdp.class */
final class zzdp {

    /* renamed from: a */
    private static final zzdn<?> f7984a = new zzdq();

    /* renamed from: b */
    private static final zzdn<?> f7985b = m13865a();

    /* renamed from: a */
    private static zzdn<?> m13865a() {
        try {
            return (zzdn) Class.forName("com.google.protobuf.ExtensionSchemaFull").getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Exception e) {
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public static zzdn<?> m13864b() {
        return f7984a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: c */
    public static zzdn<?> m13863c() {
        zzdn<?> zzdnVar = f7985b;
        if (zzdnVar != null) {
            return zzdnVar;
        }
        throw new IllegalStateException("Protobuf runtime is not correctly loaded.");
    }
}
