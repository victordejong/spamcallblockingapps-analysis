package com.google.android.gms.internal.icing;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/icing/zzby.class */
final class zzby {
    private static final Class<?> zzek = zzaf();

    private static Class<?> zzaf() {
        try {
            return Class.forName("com.google.protobuf.ExtensionRegistry");
        } catch (ClassNotFoundException e) {
            return null;
        }
    }

    public static zzbz zzag() {
        if (zzek != null) {
            try {
                return (zzbz) zzek.getDeclaredMethod("getEmptyRegistry", new Class[0]).invoke(null, new Object[0]);
            } catch (Exception e) {
            }
        }
        return zzbz.zzen;
    }
}
