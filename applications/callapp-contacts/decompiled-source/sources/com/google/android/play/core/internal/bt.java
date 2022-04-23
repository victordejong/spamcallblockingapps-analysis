package com.google.android.play.core.internal;

import android.os.Bundle;
import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/internal/bt.class */
public abstract class bt extends bn implements bu {
    public bt() {
        super("com.google.android.play.core.appupdate.protocol.IAppUpdateServiceCallback");
    }

    @Override // com.google.android.play.core.internal.bn
    protected final boolean a(int i, Parcel parcel) throws RemoteException {
        if (i == 2) {
            a((Bundle) bo.a(parcel, Bundle.CREATOR));
            return true;
        } else if (i != 3) {
            return false;
        } else {
            b((Bundle) bo.a(parcel, Bundle.CREATOR));
            return true;
        }
    }
}
