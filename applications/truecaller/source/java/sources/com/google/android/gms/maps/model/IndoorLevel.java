package com.google.android.gms.maps.model;

import android.os.RemoteException;
import java.util.Objects;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/maps/model/IndoorLevel.class */
public final class IndoorLevel {
    public final boolean equals(Object obj) {
        if (!(obj instanceof IndoorLevel)) {
            return false;
        }
        try {
            Objects.requireNonNull((IndoorLevel) obj);
            throw null;
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public final int hashCode() {
        throw null;
    }
}
