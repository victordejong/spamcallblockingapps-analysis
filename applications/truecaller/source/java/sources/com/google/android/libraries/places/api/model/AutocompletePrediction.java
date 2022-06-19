package com.google.android.libraries.places.api.model;

import android.os.Parcelable;
import android.text.SpannableString;
import android.text.style.CharacterStyle;
import com.google.android.libraries.places.api.model.Place;
import com.google.android.libraries.places.internal.zzgi;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes3-dex2jar.jar:com/google/android/libraries/places/api/model/AutocompletePrediction.class */
public abstract class AutocompletePrediction implements Parcelable {

    /* loaded from: classes3-dex2jar.jar:com/google/android/libraries/places/api/model/AutocompletePrediction$Builder.class */
    public static abstract class Builder {
        public AutocompletePrediction build() {
            AutocompletePrediction zza = zza();
            setPlaceTypes(zzgi.zza(zza.getPlaceTypes()));
            List<zza> zzd = zza.zzd();
            if (zzd != null) {
                zza((List<zza>) zzgi.zza(zzd));
            }
            List<zza> zze = zza.zze();
            if (zze != null) {
                zzb(zzgi.zza(zze));
            }
            List<zza> zzf = zza.zzf();
            if (zzf != null) {
                zzc(zzgi.zza(zzf));
            }
            return zza();
        }

        public abstract Integer getDistanceMeters();

        public abstract String getFullText();

        public abstract List<Place.Type> getPlaceTypes();

        public abstract String getPrimaryText();

        public abstract String getSecondaryText();

        public abstract Builder setDistanceMeters(Integer num);

        public abstract Builder setFullText(String str);

        public abstract Builder setPlaceTypes(List<Place.Type> list);

        public abstract Builder setPrimaryText(String str);

        public abstract Builder setSecondaryText(String str);

        public abstract Builder zza(String str);

        public abstract Builder zza(List<zza> list);

        public abstract AutocompletePrediction zza();

        public abstract Builder zzb(List<zza> list);

        public abstract Builder zzc(List<zza> list);
    }

    /* loaded from: classes3-dex2jar.jar:com/google/android/libraries/places/api/model/AutocompletePrediction$zza.class */
    public static abstract class zza implements Parcelable {
        public static zzba zzc() {
            return new zzf();
        }

        public abstract int zza();

        public abstract int zzb();
    }

    public static Builder builder(String str) {
        return new zzd().zza(str).setPlaceTypes(new ArrayList()).setFullText("").setPrimaryText("").setSecondaryText("");
    }

    private static SpannableString zza(String str, List<zza> list, CharacterStyle characterStyle) {
        SpannableString spannableString = new SpannableString(str);
        if (str.length() != 0 && characterStyle != null && list != null) {
            for (zza zzaVar : list) {
                spannableString.setSpan(CharacterStyle.wrap(characterStyle), zzaVar.zza(), zzaVar.zzb() + zzaVar.zza(), 0);
            }
        }
        return spannableString;
    }

    public abstract Integer getDistanceMeters();

    public SpannableString getFullText(CharacterStyle characterStyle) {
        return zza(zza(), zzd(), characterStyle);
    }

    public abstract String getPlaceId();

    public abstract List<Place.Type> getPlaceTypes();

    public SpannableString getPrimaryText(CharacterStyle characterStyle) {
        return zza(zzb(), zze(), characterStyle);
    }

    public SpannableString getSecondaryText(CharacterStyle characterStyle) {
        return zza(zzc(), zzf(), characterStyle);
    }

    public abstract String zza();

    public abstract String zzb();

    public abstract String zzc();

    public abstract List<zza> zzd();

    public abstract List<zza> zze();

    public abstract List<zza> zzf();
}
