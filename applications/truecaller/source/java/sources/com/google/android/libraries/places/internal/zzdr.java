package com.google.android.libraries.places.internal;

import android.content.Context;
/* loaded from: classes3-dex2jar.jar:com/google/android/libraries/places/internal/zzdr.class */
public final class zzdr {
    private final Context zza;

    public zzdr(Context context) {
        zzft.zza(context, "Context must not be null.");
        this.zza = context;
    }

    public final zzgn<String, String> zza() {
        String packageName = this.zza.getPackageName();
        String zza = zzde.zza(this.zza.getPackageManager(), packageName);
        zzgm zzgmVar = new zzgm();
        if (packageName != null) {
            zzgmVar.zza("X-Android-Package", packageName);
        }
        if (zza != null) {
            zzgmVar.zza("X-Android-Cert", zza);
        }
        return zzgmVar.zza();
    }
}
