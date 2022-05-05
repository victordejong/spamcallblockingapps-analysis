package com.google.android.gms.internal.measurement;

import java.io.IOException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zziz.class */
public final class zziz<K, V> {
    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static <K, V> int m12354a(zzjc<K, V> zzjcVar, K k, V v) {
        return zzhp.m12461b(zzjcVar.f8552a, 1, k) + zzhp.m12461b(zzjcVar.f8554c, 2, v);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public static <K, V> void m12353b(zzhg zzhgVar, zzjc<K, V> zzjcVar, K k, V v) throws IOException {
        zzhp.m12457f(zzhgVar, zzjcVar.f8552a, 1, k);
        zzhp.m12457f(zzhgVar, zzjcVar.f8554c, 2, v);
    }
}
