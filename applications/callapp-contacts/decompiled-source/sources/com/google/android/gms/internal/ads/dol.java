package com.google.android.gms.internal.ads;

import java.io.IOException;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dol.class */
public final class dol<K, V> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static <K, V> int a(dok<K, V> dokVar, K k, V v) {
        return dmz.a(dokVar.f27033a, 1, k) + dmz.a(dokVar.f27035c, 2, v);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <K, V> void a(zzemk zzemkVar, dok<K, V> dokVar, K k, V v) throws IOException {
        dmz.a(zzemkVar, dokVar.f27033a, 1, k);
        dmz.a(zzemkVar, dokVar.f27035c, 2, v);
    }
}
