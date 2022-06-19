package com.google.android.gms.internal.location;

import com.google.android.gms.common.api.internal.ListenerHolder;
import com.google.android.gms.location.LocationAvailability;
import com.google.android.gms.location.LocationCallback;
import com.google.android.gms.location.LocationResult;
import com.google.android.gms.location.zzaz;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/location/zzar.class */
final class zzar extends zzaz {
    private final ListenerHolder<LocationCallback> zza;

    public zzar(ListenerHolder<LocationCallback> listenerHolder) {
        this.zza = listenerHolder;
    }

    public final void zzc() {
        synchronized (this) {
            this.zza.clear();
        }
    }

    @Override // com.google.android.gms.location.zzba
    public final void zzd(LocationResult locationResult) {
        this.zza.notifyListener(new zzap(this, locationResult));
    }

    @Override // com.google.android.gms.location.zzba
    public final void zze(LocationAvailability locationAvailability) {
        this.zza.notifyListener(new zzaq(this, locationAvailability));
    }
}
