package com.google.android.gms.internal.ads;

import android.content.Context;
import java.io.File;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzxi.class */
public final class zzxi implements zzwx {
    public final /* synthetic */ Context zza;
    private File zzb = null;

    public zzxi(Context context) {
        this.zza = context;
    }

    @Override // com.google.android.gms.internal.ads.zzwx
    public final File zza() {
        if (this.zzb == null) {
            this.zzb = new File(this.zza.getCacheDir(), "volley");
        }
        return this.zzb;
    }
}
