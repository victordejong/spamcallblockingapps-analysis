package com.google.android.gms.internal.ads;

import java.util.Collection;
import java.util.Iterator;
import java.util.Objects;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzfuq.class */
public final class zzfuq {
    public static int zza(Set<?> set) {
        Iterator<?> it2 = set.iterator();
        int i = 0;
        while (true) {
            int i2 = i;
            if (it2.hasNext()) {
                Object next = it2.next();
                i = i2 + (next != null ? next.hashCode() : 0);
            } else {
                return i2;
            }
        }
    }

    public static boolean zzb(Set<?> set, Collection<?> collection) {
        Objects.requireNonNull(collection);
        Set set2 = collection;
        if (collection instanceof zzfuc) {
            set2 = ((zzfuc) collection).zza();
        }
        if (!(set2 instanceof Set) || set2.size() <= set.size()) {
            return zzc(set, set2.iterator());
        }
        Iterator<?> it2 = set.iterator();
        boolean z = false;
        while (it2.hasNext()) {
            if (set2.contains(it2.next())) {
                it2.remove();
                z = true;
            }
        }
        return z;
    }

    public static boolean zzc(Set<?> set, Iterator<?> it2) {
        boolean z = false;
        while (true) {
            boolean z2 = z;
            if (it2.hasNext()) {
                z = z2 | set.remove(it2.next());
            } else {
                return z2;
            }
        }
    }
}
