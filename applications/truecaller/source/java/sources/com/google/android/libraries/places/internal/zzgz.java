package com.google.android.libraries.places.internal;

import java.util.Iterator;
import java.util.Set;
/* loaded from: classes3-dex2jar.jar:com/google/android/libraries/places/internal/zzgz.class */
public final class zzgz {
    public static int zza(Set<?> set) {
        Iterator<?> it = set.iterator();
        int i = 0;
        while (true) {
            int i2 = i;
            if (it.hasNext()) {
                Object next = it.next();
                i = ((i2 + (next != null ? next.hashCode() : 0)) ^ (-1)) ^ (-1);
            } else {
                return i2;
            }
        }
    }

    public static boolean zza(Set<?> set, Object obj) {
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
