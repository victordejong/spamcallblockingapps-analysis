package com.google.android.play.core.internal;

import android.os.Bundle;
import android.os.Parcel;
import android.os.RemoteException;
/* renamed from: com.google.android.play.core.internal.bt */
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/internal/bt.class */
public abstract class AbstractBinderC15056bt extends BinderC15050bn implements AbstractC15057bu {
    public AbstractBinderC15056bt() {
        super("com.google.android.play.core.appupdate.protocol.IAppUpdateServiceCallback");
    }

    @Override // com.google.android.play.core.internal.BinderC15050bn
    /* renamed from: a */
    protected final boolean mo9515a(int i, Parcel parcel) throws RemoteException {
        if (i == 2) {
            mo9544a((Bundle) C15051bo.m9549a(parcel, Bundle.CREATOR));
            return true;
        } else if (i != 3) {
            return false;
        } else {
            mo9543b((Bundle) C15051bo.m9549a(parcel, Bundle.CREATOR));
            return true;
        }
    }
}
