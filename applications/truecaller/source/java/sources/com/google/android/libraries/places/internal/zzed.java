package com.google.android.libraries.places.internal;

import android.os.Parcelable;
import com.google.android.libraries.places.api.model.LocationBias;
import com.google.android.libraries.places.api.model.LocationRestriction;
import com.google.android.libraries.places.api.model.Place;
import com.google.android.libraries.places.api.model.TypeFilter;
import com.google.android.libraries.places.widget.model.AutocompleteActivityMode;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes3-dex2jar.jar:com/google/android/libraries/places/internal/zzed.class */
public abstract class zzed implements Parcelable {

    /* loaded from: classes3-dex2jar.jar:com/google/android/libraries/places/internal/zzed$zza.class */
    public static abstract class zza {
        public abstract zza zza(int i);

        public abstract zza zza(LocationBias locationBias);

        public abstract zza zza(LocationRestriction locationRestriction);

        public abstract zza zza(TypeFilter typeFilter);

        public abstract zza zza(zzec zzecVar);

        public abstract zza zza(AutocompleteActivityMode autocompleteActivityMode);

        public abstract zza zza(String str);

        public abstract zza zza(List<Place.Field> list);

        public abstract zzed zza();

        public abstract zza zzb(int i);

        public abstract zza zzb(String str);

        public abstract zza zzb(List<String> list);

        public final zza zzc(String str) {
            return zzb(str == null ? zzgi.zza() : zzgi.zza(str));
        }
    }

    public static zza zza(AutocompleteActivityMode autocompleteActivityMode, List<Place.Field> list, zzec zzecVar) {
        return new zzdw().zzb(new ArrayList()).zza(autocompleteActivityMode).zza(list).zza(zzecVar).zza(0).zzb(0);
    }

    public abstract AutocompleteActivityMode zza();

    public abstract zzgi<Place.Field> zzb();

    public abstract zzec zzc();

    public abstract String zzd();

    public abstract String zze();

    public abstract LocationBias zzf();

    public abstract LocationRestriction zzg();

    public abstract zzgi<String> zzh();

    public abstract TypeFilter zzi();

    public abstract int zzj();

    public abstract int zzk();

    public abstract zza zzl();
}
