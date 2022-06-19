package com.google.android.gms.internal.ads;

import java.util.Iterator;
import java.util.Set;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/czq.class */
public final class czq {
    /* renamed from: a */
    public static int m17003a(Set<?> set) {
        Iterator<?> it2 = set.iterator();
        int i = 0;
        while (true) {
            int i2 = i;
            if (it2.hasNext()) {
                Object next = it2.next();
                i = ((i2 + (next != null ? next.hashCode() : 0)) ^ (-1)) ^ (-1);
            } else {
                return i2;
            }
        }
    }

    /* renamed from: a */
    public static boolean m17002a(Set<?> set, Object obj) {
        if (set == obj) {
            return true;
        }
        if (!(obj instanceof Set)) {
            return false;
        }
        Set set2 = (Set) obj;
        try {
            if (set.size() != set2.size()) {
                return false;
            }
            return set.containsAll(set2);
        } catch (ClassCastException | NullPointerException e) {
            return false;
        }
    }
}
