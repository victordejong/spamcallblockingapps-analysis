package com.google.android.gms.common.api.internal;

import android.os.DeadObjectException;
import android.os.RemoteException;
import com.google.android.gms.common.api.Status;
/* renamed from: com.google.android.gms.common.api.internal.bq */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/api/internal/bq.class */
public abstract class AbstractC11876bq {

    /* renamed from: c */
    public final int f39305c;

    public AbstractC11876bq(int i) {
        this.f39305c = i;
    }

    /* renamed from: a */
    public static /* synthetic */ Status m19383a(RemoteException remoteException) {
        return new Status(19, remoteException.getClass().getSimpleName() + ": " + remoteException.getLocalizedMessage());
    }

    /* renamed from: a */
    public abstract void mo19382a(Status status);

    /* renamed from: a */
    public abstract void mo19381a(C11916v c11916v, boolean z);

    /* renamed from: a */
    public abstract void mo19380a(Exception exc);

    /* renamed from: c */
    public abstract void mo19379c(C11838af<?> c11838af) throws DeadObjectException;
}
