package com.google.android.gms.common.internal.service;

import android.os.RemoteException;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.BaseImplementation;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/service/zag.class */
final class zag extends zaa {

    /* renamed from: a */
    private final BaseImplementation.ResultHolder<Status> f7537a;

    public zag(BaseImplementation.ResultHolder<Status> resultHolder) {
        this.f7537a = resultHolder;
    }

    @Override // com.google.android.gms.common.internal.service.zaa, com.google.android.gms.common.internal.service.zak
    /* renamed from: K */
    public final void mo14437K(int i) throws RemoteException {
        this.f7537a.setResult(new Status(i));
    }
}
