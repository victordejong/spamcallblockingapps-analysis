package com.google.android.gms.maps.model;

import android.os.RemoteException;
import java.util.Objects;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/maps/model/IndoorBuilding.class */
public final class IndoorBuilding {
    public final boolean equals(Object obj) {
        if (!(obj instanceof IndoorBuilding)) {
            return false;
        }
        try {
            Objects.requireNonNull((IndoorBuilding) obj);
            throw null;
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public final int hashCode() {
        throw null;
    }
}
