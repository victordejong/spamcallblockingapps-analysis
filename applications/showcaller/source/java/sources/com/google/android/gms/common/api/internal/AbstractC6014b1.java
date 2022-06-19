package com.google.android.gms.common.api.internal;

import android.os.RemoteException;
import com.google.android.gms.common.api.Status;
/* renamed from: com.google.android.gms.common.api.internal.b1 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/b1.class */
public abstract class AbstractC6014b1 {

    /* renamed from: a */
    public final int f19224a;

    public AbstractC6014b1(int i) {
        this.f19224a = i;
    }

    /* renamed from: e */
    public static /* synthetic */ Status m17434e(RemoteException remoteException) {
        return new Status(19, remoteException.getClass().getSimpleName() + ": " + remoteException.getLocalizedMessage());
    }

    /* renamed from: a */
    public abstract void mo17255a(Status status);

    /* renamed from: b */
    public abstract void mo17254b(Exception exc);

    /* renamed from: c */
    public abstract void mo17253c(C6061s c6061s, boolean z);

    /* renamed from: d */
    public abstract void mo17252d(C6017c0<?> c6017c0);
}
