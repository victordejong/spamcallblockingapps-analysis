package com.google.android.gms.internal.ads;

import android.os.Bundle;
import java.util.Set;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdcw.class */
public final class zzdcw extends zzdgm<zzfid> implements zzbor {
    private final Bundle zzb = new Bundle();

    public zzdcw(Set<zzdih<zzfid>> set) {
        super(set);
    }

    @Override // com.google.android.gms.internal.ads.zzbor
    public final void zza(String str, Bundle bundle) {
        synchronized (this) {
            this.zzb.putAll(bundle);
            zzk(zzdcv.zza);
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
