package com.google.android.gms.internal.ads;

import android.os.Bundle;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzesp.class */
public final class zzesp implements zzevm<Bundle> {
    public final String zza;
    public final boolean zzb;

    public zzesp(String str, boolean z) {
        this.zza = str;
        this.zzb = z;
    }

    @Override // com.google.android.gms.internal.ads.zzevm
    public final /* bridge */ /* synthetic */ void zza(Bundle bundle) {
        Bundle bundle2 = bundle;
        bundle2.putString("gct", this.zza);
        if (this.zzb) {
            bundle2.putString("de", "1");
        }
    }
}
