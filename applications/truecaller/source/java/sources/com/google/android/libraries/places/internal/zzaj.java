package com.google.android.libraries.places.internal;

import com.google.android.gms.tasks.CancellationToken;
import com.google.android.libraries.places.internal.zzdc;
import java.util.Map;
/* loaded from: classes3-dex2jar.jar:com/google/android/libraries/places/internal/zzaj.class */
public abstract class zzaj<TypeT, RequestT extends zzdc> {
    private final RequestT zza;

    public zzaj(RequestT requestt) {
        this.zza = requestt;
    }

    public final RequestT zza() {
        return this.zza;
    }

    public final CancellationToken zzb() {
        return this.zza.getCancellationToken();
    }

    public abstract Map<String, String> zzc();

    public abstract String zzd();
}
