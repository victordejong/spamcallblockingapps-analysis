package com.google.android.gms.common.api.internal;

import android.os.DeadObjectException;
import android.os.RemoteException;
import com.google.android.gms.common.api.Status;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/api/internal/bq.class */
public abstract class bq {

    /* renamed from: c  reason: collision with root package name */
    public final int f22699c;

    public bq(int i) {
        this.f22699c = i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ Status a(RemoteException remoteException) {
        return new Status(19, remoteException.getClass().getSimpleName() + ": " + remoteException.getLocalizedMessage());
    }

    public abstract void a(Status status);

    public abstract void a(v vVar, boolean z);

    public abstract void a(Exception exc);

    public abstract void c(af<?> afVar) throws DeadObjectException;
}
