package com.google.android.libraries.places.api.model;

import android.os.Parcelable;
import android.text.TextUtils;
import com.google.android.libraries.places.internal.zzft;
import com.google.android.libraries.places.internal.zzgi;
import java.util.List;
/* loaded from: classes3-dex2jar.jar:com/google/android/libraries/places/api/model/AddressComponent.class */
public abstract class AddressComponent implements Parcelable {

    /* loaded from: classes3-dex2jar.jar:com/google/android/libraries/places/api/model/AddressComponent$Builder.class */
    public static abstract class Builder {
        public AddressComponent build() {
            AddressComponent zza = zza();
            zzft.zzb(!zza.getName().isEmpty(), "Name must not be empty.");
            List<String> types = zza.getTypes();
            for (String str : types) {
                zzft.zzb(!TextUtils.isEmpty(str), "Types must not contain null or empty values.");
            }
            zza((List<String>) zzgi.zza(types));
            return zza();
        }

        public abstract String getShortName();

        public abstract Builder setShortName(String str);

        public abstract Builder zza(String str);

        public abstract Builder zza(List<String> list);

        public abstract AddressComponent zza();
    }

    public static Builder builder(String str, List<String> list) {
        return new zzc().zza(str).zza(list);
    }

    public abstract String getName();

    public abstract String getShortName();

    public abstract List<String> getTypes();
}
