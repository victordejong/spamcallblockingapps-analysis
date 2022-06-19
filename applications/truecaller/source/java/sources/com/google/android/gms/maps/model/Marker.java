package com.google.android.gms.maps.model;

import android.os.RemoteException;
import com.google.android.gms.internal.maps.zzt;
import java.util.Objects;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/maps/model/Marker.class */
public final class Marker {

    /* renamed from: a */
    public final zzt f6253a;

    public Marker(zzt zztVar) {
        Objects.requireNonNull(zztVar, "null reference");
        this.f6253a = zztVar;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof Marker)) {
            return false;
        }
        try {
            return this.f6253a.zzj(((Marker) obj).f6253a);
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public final int hashCode() {
        try {
            return this.f6253a.zzj();
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }
}
