package com.google.android.libraries.places.widget;

import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.util.TypedValue;
import com.google.android.gms.common.api.Status;
import com.google.android.libraries.places.api.model.LocationBias;
import com.google.android.libraries.places.api.model.LocationRestriction;
import com.google.android.libraries.places.api.model.Place;
import com.google.android.libraries.places.api.model.TypeFilter;
import com.google.android.libraries.places.internal.zzdk;
import com.google.android.libraries.places.internal.zzec;
import com.google.android.libraries.places.internal.zzed;
import com.google.android.libraries.places.internal.zzeg;
import com.google.android.libraries.places.widget.model.AutocompleteActivityMode;
import java.util.List;
/* loaded from: classes3-dex2jar.jar:com/google/android/libraries/places/widget/Autocomplete.class */
public final class Autocomplete {

    /* loaded from: classes3-dex2jar.jar:com/google/android/libraries/places/widget/Autocomplete$IntentBuilder.class */
    public static class IntentBuilder {
        private final zzed.zza zza;

        public IntentBuilder(zzed zzedVar) {
            this.zza = zzedVar.zzl();
        }

        public IntentBuilder(AutocompleteActivityMode autocompleteActivityMode, List<Place.Field> list) {
            this.zza = zzed.zza(autocompleteActivityMode, list, zzec.INTENT);
        }

        public Intent build(Context context) {
            try {
                Intent intent = new Intent(context, AutocompleteActivity.class);
                zzed.zza zzaVar = this.zza;
                Resources.Theme theme = context.getTheme();
                TypedValue typedValue = new TypedValue();
                if (theme.resolveAttribute(16843827, typedValue, true)) {
                    zzaVar.zza(typedValue.data);
                }
                TypedValue typedValue2 = new TypedValue();
                if (theme.resolveAttribute(16843828, typedValue2, true)) {
                    zzaVar.zzb(typedValue2.data);
                }
                intent.putExtra("places/AutocompleteOptions", this.zza.zza());
                return intent;
            } catch (Error | RuntimeException e) {
                zzdk.zza(e);
                throw e;
            }
        }

        public IntentBuilder setCountries(List<String> list) {
            this.zza.zzb(list);
            return this;
        }

        public IntentBuilder setCountry(String str) {
            this.zza.zzc(str);
            return this;
        }

        public IntentBuilder setHint(String str) {
            this.zza.zzb(str);
            return this;
        }

        public IntentBuilder setInitialQuery(String str) {
            this.zza.zza(str);
            return this;
        }

        public IntentBuilder setLocationBias(LocationBias locationBias) {
            this.zza.zza(locationBias);
            return this;
        }

        public IntentBuilder setLocationRestriction(LocationRestriction locationRestriction) {
            this.zza.zza(locationRestriction);
            return this;
        }

        public IntentBuilder setTypeFilter(TypeFilter typeFilter) {
            this.zza.zza(typeFilter);
            return this;
        }

        public final IntentBuilder zza(zzec zzecVar) {
            this.zza.zza(zzecVar);
            return this;
        }
    }

    private Autocomplete() {
    }

    public static Place getPlaceFromIntent(Intent intent) {
        return zzeg.zza(intent);
    }

    public static Status getStatusFromIntent(Intent intent) {
        return zzeg.zzb(intent);
    }
}
