package com.google.android.gms.internal.ads;

import android.os.Bundle;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzeqz.class */
public final class zzeqz implements zzerx<Bundle> {
    private final String zza;

    public zzeqz(String str) {
        this.zza = str;
    }

    @Override // com.google.android.gms.internal.ads.zzerx
    public final /* bridge */ /* synthetic */ void zzf(Bundle bundle) {
        bundle.putString("rtb", this.zza);
    }
}
