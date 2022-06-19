package com.google.android.gms.internal.ads;

import java.io.IOException;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dol.class */
public final class dol<K, V> {
    /* renamed from: a */
    public static <K, V> int m16280a(dok<K, V> dokVar, K k, V v) {
        return dmz.m16377a(dokVar.f47319a, 1, k) + dmz.m16377a(dokVar.f47321c, 2, v);
    }

    /* renamed from: a */
    public static <K, V> void m16279a(zzemk zzemkVar, dok<K, V> dokVar, K k, V v) throws IOException {
        dmz.m16375a(zzemkVar, dokVar.f47319a, 1, k);
        dmz.m16375a(zzemkVar, dokVar.f47321c, 2, v);
    }
}
