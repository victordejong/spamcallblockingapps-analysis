package com.google.android.libraries.places.api.model;

import android.os.Parcelable;
import android.text.TextUtils;
import com.google.android.libraries.places.internal.zzft;
/* loaded from: classes3-dex2jar.jar:com/google/android/libraries/places/api/model/PhotoMetadata.class */
public abstract class PhotoMetadata implements Parcelable {

    /* loaded from: classes3-dex2jar.jar:com/google/android/libraries/places/api/model/PhotoMetadata$Builder.class */
    public static abstract class Builder {
        public PhotoMetadata build() {
            PhotoMetadata zza = zza();
            int width = zza.getWidth();
            zzft.zza(width >= 0, "Width must not be < 0, but was: %s.", width);
            int height = zza.getHeight();
            boolean z = false;
            if (height >= 0) {
                z = true;
            }
            zzft.zza(z, "Height must not be < 0, but was: %s.", height);
            zzft.zzb(!TextUtils.isEmpty(zza.zza()), "PhotoReference must not be null or empty.");
            return zza;
        }

        public abstract String getAttributions();

        public abstract int getHeight();

        public abstract int getWidth();

        public abstract Builder setAttributions(String str);

        public abstract Builder setHeight(int i);

        public abstract Builder setWidth(int i);

        public abstract Builder zza(String str);

        public abstract PhotoMetadata zza();
    }

    public static Builder builder(String str) {
        return new zzq().zza(str).setWidth(0).setHeight(0).setAttributions("");
    }

    public abstract String getAttributions();

    public abstract int getHeight();

    public abstract int getWidth();

    public abstract String zza();
}
