package com.google.android.libraries.places.internal;

import java.util.Comparator;
/* loaded from: classes3-dex2jar.jar:com/google/android/libraries/places/internal/zzgo.class */
public abstract class zzgo<T> implements Comparator<T> {
    public static <T> zzgo<T> zza(Comparator<T> comparator) {
        return comparator instanceof zzgo ? (zzgo) comparator : new zzga(comparator);
    }
}
