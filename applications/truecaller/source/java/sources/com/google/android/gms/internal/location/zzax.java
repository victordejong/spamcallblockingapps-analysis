package com.google.android.gms.internal.location;

import android.location.Location;
import com.google.android.gms.common.api.internal.ListenerHolder;
import com.google.android.gms.location.LocationListener;
import com.google.android.gms.location.zzy;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/location/zzax.class */
public final class zzax extends zzy {
    private final ListenerHolder<LocationListener> zzda;

    public zzax(ListenerHolder<LocationListener> listenerHolder) {
        this.zzda = listenerHolder;
    }

    public final void onLocationChanged(Location location) {
        synchronized (this) {
            this.zzda.m39022b(new zzay(this, location));
        }
    }

    public final void release() {
        synchronized (this) {
            this.zzda.m39023a();
        }
    }
}
