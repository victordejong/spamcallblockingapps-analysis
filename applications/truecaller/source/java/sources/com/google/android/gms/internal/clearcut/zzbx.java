package com.google.android.gms.internal.clearcut;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/clearcut/zzbx.class */
public final class zzbx {
    private static final zzbu<?> zzgr = new zzbv();
    private static final zzbu<?> zzgs = zzao();

    private static zzbu<?> zzao() {
        try {
            return (zzbu) Class.forName("com.google.protobuf.ExtensionSchemaFull").getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Exception e) {
            return null;
        }
    }

    public static zzbu<?> zzap() {
        return zzgr;
    }

    public static zzbu<?> zzaq() {
        zzbu<?> zzbuVar = zzgs;
        if (zzbuVar != null) {
            return zzbuVar;
        }
        throw new IllegalStateException("Protobuf runtime is not correctly loaded.");
    }
}
