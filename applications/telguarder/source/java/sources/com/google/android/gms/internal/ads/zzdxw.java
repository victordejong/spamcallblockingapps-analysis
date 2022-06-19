package com.google.android.gms.internal.ads;

import java.util.Iterator;
import java.util.Set;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdxw.class */
public final class zzdxw {
    public static boolean zza(Set<?> set, @NullableDecl Object obj) {
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

    public static int zzg(Set<?> set) {
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
}
