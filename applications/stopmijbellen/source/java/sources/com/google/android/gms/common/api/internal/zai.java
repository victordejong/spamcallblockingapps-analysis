package com.google.android.gms.common.api.internal;

import android.os.DeadObjectException;
import android.os.RemoteException;
import com.google.android.gms.common.api.Status;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/zai.class */
public abstract class zai {
    public final int zac;

    public zai(int i) {
        this.zac = i;
    }

    public static /* synthetic */ Status zah(RemoteException remoteException) {
        return new Status(19, remoteException.getClass().getSimpleName() + ": " + remoteException.getLocalizedMessage());
    }

    public abstract void zac(Status status);

    public abstract void zad(Exception exc);

    public abstract void zae(zaaa zaaaVar, boolean z);

    public abstract void zaf(zabl<?> zablVar) throws DeadObjectException;
}
