package com.google.android.gms.internal.location;

import android.location.Location;
import com.google.android.gms.common.api.internal.ListenerHolder;
import com.google.android.gms.location.LocationListener;
import com.google.android.gms.location.zzbc;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/location/zzau.class */
final class zzau extends zzbc {
    private final ListenerHolder<LocationListener> zza;

    public zzau(ListenerHolder<LocationListener> listenerHolder) {
        this.zza = listenerHolder;
    }

    public final void zzc() {
        synchronized (this) {
            this.zza.clear();
        }
    }

    @Override // com.google.android.gms.location.zzbd
    public final void zzd(Location location) {
        synchronized (this) {
            this.zza.notifyListener(new zzat(this, location));
        }
    }
}
