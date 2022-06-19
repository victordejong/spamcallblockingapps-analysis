package com.google.android.gms.internal.ads;

import android.os.Bundle;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzeuo.class */
public final class zzeuo implements zzevm<Bundle> {
    private final String zza;

    public zzeuo(String str) {
        this.zza = str;
    }

    @Override // com.google.android.gms.internal.ads.zzevm
    public final /* bridge */ /* synthetic */ void zza(Bundle bundle) {
        bundle.putString("rtb", this.zza);
    }
}
