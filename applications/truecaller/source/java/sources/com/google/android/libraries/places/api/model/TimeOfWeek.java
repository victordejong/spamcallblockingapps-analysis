package com.google.android.libraries.places.api.model;

import android.os.Parcelable;
/* loaded from: classes3-dex2jar.jar:com/google/android/libraries/places/api/model/TimeOfWeek.class */
public abstract class TimeOfWeek implements Parcelable {
    public static TimeOfWeek newInstance(DayOfWeek dayOfWeek, LocalTime localTime) {
        return new zzaz(dayOfWeek, localTime);
    }

    public abstract DayOfWeek getDay();

    public abstract LocalTime getTime();
}
