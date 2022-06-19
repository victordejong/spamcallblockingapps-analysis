package com.google.android.gms.internal.firebase_remote_config;

import java.lang.reflect.Type;
import java.util.Arrays;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_remote_config/zzz.class */
public final class zzz {
    final zzbn zzaw;
    final StringBuilder zzax;
    final zzbr zzay;
    final List<Type> zzaz;

    public zzz(zzw zzwVar, StringBuilder sb) {
        Class<?> cls = zzwVar.getClass();
        this.zzaz = Arrays.asList(cls);
        this.zzay = zzbr.zza(cls, true);
        this.zzax = sb;
        this.zzaw = new zzbn(zzwVar);
    }
}
