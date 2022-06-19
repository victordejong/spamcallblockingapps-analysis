package com.google.android.gms.internal.clearcut;

import com.google.protobuf.ExtensionRegistryFactory;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/clearcut/zzbs.class */
public final class zzbs {
    private static final Class<?> zzgl = zzak();

    private static Class<?> zzak() {
        try {
            return Class.forName(ExtensionRegistryFactory.FULL_REGISTRY_CLASS_NAME);
        } catch (ClassNotFoundException e) {
            return null;
        }
    }

    public static zzbt zzal() {
        Class<?> cls = zzgl;
        if (cls != null) {
            try {
                return (zzbt) cls.getDeclaredMethod("getEmptyRegistry", new Class[0]).invoke(null, new Object[0]);
            } catch (Exception e) {
            }
        }
        return zzbt.zzgo;
    }
}
