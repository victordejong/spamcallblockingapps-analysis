package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.text.TextUtils;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzeuv.class */
public final class zzeuv implements zzevm<Bundle> {
    private final String zza;

    public zzeuv(String str) {
        this.zza = str;
    }

    @Override // com.google.android.gms.internal.ads.zzevm
    public final /* bridge */ /* synthetic */ void zza(Bundle bundle) {
        Bundle bundle2 = bundle;
        if (TextUtils.isEmpty(this.zza)) {
            return;
        }
        bundle2.putString("query_info", this.zza);
    }
}
