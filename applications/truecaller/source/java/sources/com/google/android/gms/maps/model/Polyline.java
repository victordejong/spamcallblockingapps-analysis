package com.google.android.gms.maps.model;

import android.os.RemoteException;
import java.util.Objects;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/maps/model/Polyline.class */
public final class Polyline {
    public final boolean equals(Object obj) {
        if (!(obj instanceof Polyline)) {
            return false;
        }
        try {
            Objects.requireNonNull((Polyline) obj);
            throw null;
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public final int hashCode() {
        throw null;
    }
}
