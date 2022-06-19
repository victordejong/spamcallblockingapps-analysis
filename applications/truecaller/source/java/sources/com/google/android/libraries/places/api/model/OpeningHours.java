package com.google.android.libraries.places.api.model;

import android.os.Parcelable;
import android.text.TextUtils;
import com.google.android.libraries.places.internal.zzft;
import com.google.android.libraries.places.internal.zzgi;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes3-dex2jar.jar:com/google/android/libraries/places/api/model/OpeningHours.class */
public abstract class OpeningHours implements Parcelable {

    /* loaded from: classes3-dex2jar.jar:com/google/android/libraries/places/api/model/OpeningHours$Builder.class */
    public static abstract class Builder {
        public OpeningHours build() {
            OpeningHours zza = zza();
            for (String str : zza.getWeekdayText()) {
                zzft.zzb(!TextUtils.isEmpty(str), "WeekdayText must not contain null or empty values.");
            }
            setPeriods(zzgi.zza(zza.getPeriods()));
            setWeekdayText(zzgi.zza(zza.getWeekdayText()));
            return zza();
        }

        public abstract List<Period> getPeriods();

        public abstract List<String> getWeekdayText();

        public abstract Builder setPeriods(List<Period> list);

        public abstract Builder setWeekdayText(List<String> list);

        public abstract OpeningHours zza();
    }

    public static Builder builder() {
        return new zzm().setPeriods(new ArrayList()).setWeekdayText(new ArrayList());
    }

    public abstract List<Period> getPeriods();

    public abstract List<String> getWeekdayText();
}
