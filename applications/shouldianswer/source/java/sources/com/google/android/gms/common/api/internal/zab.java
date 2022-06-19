package com.google.android.gms.common.api.internal;

import android.os.RemoteException;
import android.os.TransactionTooLargeException;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.GoogleApiManager;
import com.google.android.gms.common.util.PlatformVersion;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/zab.class */
public abstract class zab {
    private final int type;

    public zab(int i) {
        this.type = i;
    }

    public static Status zaa(RemoteException remoteException) {
        StringBuilder sb = new StringBuilder();
        if (PlatformVersion.isAtLeastIceCreamSandwichMR1() && (remoteException instanceof TransactionTooLargeException)) {
            sb.append("TransactionTooLargeException: ");
        }
        sb.append(remoteException.getLocalizedMessage());
        return new Status(8, sb.toString());
    }

    public abstract void zaa(Status status);

    public abstract void zaa(GoogleApiManager.zaa<?> zaaVar);

    public abstract void zaa(zaab zaabVar, boolean z);

    public abstract void zaa(RuntimeException runtimeException);
}
