package com.google.android.gms.internal.ads;

import android.os.Bundle;
import com.google.android.gms.ads.reward.AdMetadataListener;
import java.util.Set;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbta.class */
public final class zzbta extends zzbwf<AdMetadataListener> implements zzahi {
    private Bundle zzfzm = new Bundle();

    public zzbta(Set<zzbya<AdMetadataListener>> set) {
        super(set);
    }

    public final Bundle getAdMetadata() {
        Bundle bundle;
        synchronized (this) {
            bundle = new Bundle(this.zzfzm);
        }
        return bundle;
    }

    @Override // com.google.android.gms.internal.ads.zzahi
    public final void zza(String str, Bundle bundle) {
        synchronized (this) {
            this.zzfzm.putAll(bundle);
            zza(zzbtd.zzfzg);
        }
    }
}
