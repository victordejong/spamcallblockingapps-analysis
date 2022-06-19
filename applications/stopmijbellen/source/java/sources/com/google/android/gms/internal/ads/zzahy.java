package com.google.android.gms.internal.ads;

import android.content.Context;
import java.io.File;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzahy.class */
final class zzahy implements zzahn {
    public final /* synthetic */ Context zza;
    private File zzb = null;

    public zzahy(Context context) {
        this.zza = context;
    }

    @Override // com.google.android.gms.internal.ads.zzahn
    public final File zza() {
        if (this.zzb == null) {
            this.zzb = new File(this.zza.getCacheDir(), "volley");
        }
        return this.zzb;
    }
}
