package com.google.android.gms.internal.ads;

import android.os.Bundle;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdgl.class */
public final class zzdgl extends zzdkb<zzfmb> implements zzbqt {
    private final Bundle zzb = new Bundle();

    public zzdgl(Set<zzdlw<zzfmb>> set) {
        super(set);
    }

    @Override // com.google.android.gms.internal.ads.zzbqt
    public final void zza(String str, Bundle bundle) {
        synchronized (this) {
            this.zzb.putAll(bundle);
            zzo(zzdgk.zza);
        }
    }

    public final Bundle zzb() {
        Bundle bundle;
        synchronized (this) {
            bundle = new Bundle(this.zzb);
        }
        return bundle;
    }
}
