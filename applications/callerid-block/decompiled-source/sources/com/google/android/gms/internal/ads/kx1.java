package com.google.android.gms.internal.ads;

import java.util.Iterator;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/kx1.class */
public final class kx1 {
    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static int m6746a(Set<?> set) {
        Iterator<?> it = set.iterator();
        int i = 0;
        while (it.hasNext()) {
            Object next = it.next();
            i += next != null ? next.hashCode() : 0;
        }
        return i;
    }
}
