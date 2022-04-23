package com.google.android.gms.internal.ads;

import java.util.Iterator;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdxe.class */
public final class zzdxe {
    /* renamed from: a */
    public static int m13074a(Set<?> set) {
        Iterator<?> it = set.iterator();
        int i = 0;
        while (it.hasNext()) {
            Object next = it.next();
            i = ((i + (next != null ? next.hashCode() : 0)) ^ (-1)) ^ (-1);
        }
        return i;
    }

    /* renamed from: a */
    public static boolean m13073a(Set<?> set, Object obj) {
        if (set == obj) {
            return true;
        }
        if (!(obj instanceof Set)) {
            return false;
        }
        Set set2 = (Set) obj;
        try {
            if (set.size() == set2.size()) {
                return set.containsAll(set2);
            }
            return false;
        } catch (ClassCastException | NullPointerException e) {
            return false;
        }
    }
}
