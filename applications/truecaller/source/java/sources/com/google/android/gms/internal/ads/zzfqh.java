package com.google.android.gms.internal.ads;

import java.util.Collection;
import java.util.Iterator;
import java.util.Objects;
import java.util.Set;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzfqh.class */
public final class zzfqh {
    public static int zza(Set<?> set) {
        Iterator<?> it = set.iterator();
        int i = 0;
        while (true) {
            int i2 = i;
            if (it.hasNext()) {
                Object next = it.next();
                i = i2 + (next != null ? next.hashCode() : 0);
            } else {
                return i2;
            }
        }
    }

    public static boolean zzb(Set<?> set, Iterator<?> it) {
        boolean z = false;
        while (true) {
            boolean z2 = z;
            if (it.hasNext()) {
                z = z2 | set.remove(it.next());
            } else {
                return z2;
            }
        }
    }

    public static boolean zzc(Set<?> set, Collection<?> collection) {
        Objects.requireNonNull(collection);
        Set set2 = collection;
        if (collection instanceof zzfpt) {
            set2 = ((zzfpt) collection).zza();
        }
        if (!(set2 instanceof Set) || set2.size() <= set.size()) {
            return zzb(set, set2.iterator());
        }
        Iterator<?> it = set.iterator();
        boolean z = false;
        while (it.hasNext()) {
            if (set2.contains(it.next())) {
                it.remove();
                z = true;
            }
        }
        return z;
    }
}
