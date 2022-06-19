package com.google.android.gms.internal.play_billing;

import java.util.Iterator;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/play_billing/zzag.class */
public final class zzag {
    public static int zza(Set set) {
        Iterator it2 = set.iterator();
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
}
