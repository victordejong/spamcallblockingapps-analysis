package com.google.android.gms.internal.ads;

import android.os.Bundle;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdey.class */
public final class zzdey implements zzdfi<zzdfj<Bundle>> {
    private final boolean zzhdd;

    public zzdey(zzdkv zzdkvVar) {
        if (zzdkvVar != null) {
            this.zzhdd = true;
        } else {
            this.zzhdd = false;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdfi
    public final zzdzw<zzdfj<Bundle>> zzasy() {
        return zzdzk.zzag(this.zzhdd ? zzdfb.zzhde : null);
    }
}
