package com.google.android.gms.common.api.internal;

import android.os.RemoteException;
import android.os.TransactionTooLargeException;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.C2548f;
import com.google.android.gms.common.util.C2716m;
/* renamed from: com.google.android.gms.common.api.internal.aj */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/aj.class */
public abstract class AbstractC2514aj {

    /* renamed from: a */
    private final int f7093a;

    public AbstractC2514aj(int i) {
        this.f7093a = i;
    }

    /* renamed from: b */
    public static Status m14392b(RemoteException remoteException) {
        StringBuilder sb = new StringBuilder();
        if (C2716m.m13841b() && (remoteException instanceof TransactionTooLargeException)) {
            sb.append("TransactionTooLargeException: ");
        }
        sb.append(remoteException.getLocalizedMessage());
        return new Status(8, sb.toString());
    }

    /* renamed from: a */
    public abstract void mo14363a(Status status);

    /* renamed from: a */
    public abstract void mo14362a(C2538bg c2538bg, boolean z);

    /* renamed from: a */
    public abstract void mo14361a(RuntimeException runtimeException);

    /* renamed from: c */
    public abstract void mo14364c(C2548f.C2549a<?> c2549a);
}
