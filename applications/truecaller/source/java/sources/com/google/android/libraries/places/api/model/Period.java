package com.google.android.libraries.places.api.model;

import android.os.Parcelable;
/* loaded from: classes3-dex2jar.jar:com/google/android/libraries/places/api/model/Period.class */
public abstract class Period implements Parcelable {

    /* loaded from: classes3-dex2jar.jar:com/google/android/libraries/places/api/model/Period$Builder.class */
    public static abstract class Builder {
        public abstract Period build();

        public abstract TimeOfWeek getClose();

        public abstract TimeOfWeek getOpen();

        public abstract Builder setClose(TimeOfWeek timeOfWeek);

        public abstract Builder setOpen(TimeOfWeek timeOfWeek);
    }

    public static Builder builder() {
        return new zzo();
    }

    public abstract TimeOfWeek getClose();

    public abstract TimeOfWeek getOpen();
}
