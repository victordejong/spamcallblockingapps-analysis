package com.google.android.gms.internal.clearcut;

import com.google.android.gms.internal.clearcut.zzcg;
import com.google.protobuf.ExtensionRegistryLite;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/clearcut/zzbt.class */
public final class zzbt {
    private static volatile boolean zzgm = false;
    private static final Class<?> zzgn = zzam();
    public static final zzbt zzgo = new zzbt(true);
    private final Map<Object, zzcg.zzf<?, ?>> zzgp;

    public zzbt() {
        this.zzgp = new HashMap();
    }

    private zzbt(boolean z) {
        this.zzgp = Collections.emptyMap();
    }

    private static Class<?> zzam() {
        try {
            return Class.forName(ExtensionRegistryLite.EXTENSION_CLASS_NAME);
        } catch (ClassNotFoundException e) {
            return null;
        }
    }

    public static zzbt zzan() {
        return zzbs.zzal();
    }
}
