package com.google.android.gms.common.api.internal;

import android.os.DeadObjectException;
import android.os.RemoteException;
import com.google.android.gms.common.api.Status;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/common/api/internal/zai.class */
public abstract class zai {

    /* renamed from: a */
    public final int f5897a;

    public zai(int i) {
        this.f5897a = i;
    }

    /* renamed from: e */
    public static /* synthetic */ Status m38938e(RemoteException remoteException) {
        return new Status(19, remoteException.getClass().getSimpleName() + ": " + remoteException.getLocalizedMessage());
    }

    /* renamed from: a */
    public abstract void mo4286a(Status status);

    /* renamed from: b */
    public abstract void mo4285b(Exception exc);

    /* renamed from: c */
    public abstract void mo38939c(zaaa zaaaVar, boolean z);

    /* renamed from: d */
    public abstract void mo4284d(zabl<?> zablVar) throws DeadObjectException;
}
