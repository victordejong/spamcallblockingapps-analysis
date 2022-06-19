package com.google.android.libraries.places.internal;

import android.content.Intent;
import com.google.android.gms.common.api.Status;
import com.google.android.libraries.places.api.model.Place;
/* loaded from: classes3-dex2jar.jar:com/google/android/libraries/places/internal/zzeg.class */
public final class zzeg {
    public static Place zza(Intent intent) {
        try {
            zzft.zza(intent, "Intent must not be null.");
            Place place = (Place) intent.getParcelableExtra("places/selected_place");
            zzft.zza(place != null, "Intent expected to contain a Place, but doesn't.");
            return place;
        } catch (Error | RuntimeException e) {
            zzdk.zza(e);
            throw e;
        }
    }

    public static Status zzb(Intent intent) {
        try {
            zzft.zza(intent, "Intent must not be null.");
            Status status = (Status) intent.getParcelableExtra("places/status");
            zzft.zza(status != null, "Intent expected to contain a Status, but doesn't.");
            return status;
        } catch (Error | RuntimeException e) {
            zzdk.zza(e);
            throw e;
        }
    }
}
