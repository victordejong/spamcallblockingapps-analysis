package com.google.android.libraries.places.api.model;

import android.os.Parcelable;
/* loaded from: classes3-dex2jar.jar:com/google/android/libraries/places/api/model/PlusCode.class */
public abstract class PlusCode implements Parcelable {

    /* loaded from: classes3-dex2jar.jar:com/google/android/libraries/places/api/model/PlusCode$Builder.class */
    public static abstract class Builder {
        public abstract PlusCode build();

        public abstract String getCompoundCode();

        public abstract String getGlobalCode();

        public abstract Builder setCompoundCode(String str);

        public abstract Builder setGlobalCode(String str);
    }

    public static Builder builder() {
        return new zzt();
    }

    public abstract String getCompoundCode();

    public abstract String getGlobalCode();
}
