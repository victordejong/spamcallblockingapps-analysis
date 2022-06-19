package com.google.android.libraries.places.internal;

import android.content.Context;
import android.content.pm.PackageManager;
/* loaded from: classes3-dex2jar.jar:com/google/android/libraries/places/internal/zzdd.class */
public final class zzdd {
    private final String zza;
    private final int zzb;

    public zzdd(Context context) {
        this.zza = context.getPackageName();
        this.zzb = zza(context);
    }

    private final int zza(Context context) {
        try {
            return context.getPackageManager().getPackageInfo(this.zza, 0).versionCode;
        } catch (PackageManager.NameNotFoundException e) {
            return 0;
        }
    }

    public final String zza() {
        return this.zza;
    }

    public final int zzb() {
        return this.zzb;
    }
}
