package com.google.android.gms.common.api.internal;

import android.os.RemoteException;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.GoogleApiManager;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/zab.class */
public abstract class zab {
    public final int zaa;

    public zab(int i) {
        this.zaa = i;
    }

    public static Status zab(RemoteException remoteException) {
        return new Status(19, remoteException.getClass().getSimpleName() + ": " + remoteException.getLocalizedMessage());
    }

    public abstract void zaa(Status status);

    public abstract void zaa(GoogleApiManager.zaa<?> zaaVar);

    public abstract void zaa(zav zavVar, boolean z);

    public abstract void zaa(Exception exc);
}
