package com.google.android.gms.internal.clearcut;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/clearcut/zzdy.class */
public final class zzdy {
    private static final zzdw zzna = zzcl();
    private static final zzdw zznb = new zzdx();

    public static zzdw zzcj() {
        return zzna;
    }

    public static zzdw zzck() {
        return zznb;
    }

    private static zzdw zzcl() {
        try {
            return (zzdw) Class.forName("com.google.protobuf.NewInstanceSchemaFull").getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Exception e) {
            return null;
        }
    }
}
