package com.google.android.libraries.places.api.model;

import android.os.Parcelable;
import com.google.android.libraries.places.internal.zzft;
import com.google.android.libraries.places.internal.zzgr;
/* loaded from: classes3-dex2jar.jar:com/google/android/libraries/places/api/model/LocalTime.class */
public abstract class LocalTime implements Parcelable, Comparable<LocalTime> {

    /* loaded from: classes3-dex2jar.jar:com/google/android/libraries/places/api/model/LocalTime$zza.class */
    public static abstract class zza {
        public abstract zza zza(int i);

        public abstract LocalTime zza();

        public abstract zza zzb(int i);
    }

    public static LocalTime newInstance(int i, int i2) {
        try {
            LocalTime zza2 = new zzk().zza(i).zzb(i2).zza();
            int hours = zza2.getHours();
            zzft.zza(zzgr.zza(0, 23).zzb(Integer.valueOf(hours)), "Hours must not be out-of-range: 0 to 23, but was: %s.", hours);
            int minutes = zza2.getMinutes();
            zzft.zza(zzgr.zza(0, 59).zzb(Integer.valueOf(minutes)), "Minutes must not be out-of-range: 0 to 59, but was: %s.", minutes);
            return zza2;
        } catch (IllegalStateException e) {
            throw new IllegalArgumentException(e);
        }
    }

    public int compareTo(LocalTime localTime) {
        int hours;
        int hours2;
        if (this == localTime) {
            return 0;
        }
        if (getHours() == localTime.getHours()) {
            hours = getMinutes();
            hours2 = localTime.getMinutes();
        } else {
            hours = getHours();
            hours2 = localTime.getHours();
        }
        return hours - hours2;
    }

    public abstract int getHours();

    public abstract int getMinutes();
}
