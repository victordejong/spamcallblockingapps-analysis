package com.google.android.play.core.internal;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/internal/bp.class */
public final class bp extends bm implements bs {
    /* JADX INFO: Access modifiers changed from: package-private */
    public bp(IBinder iBinder) {
        super(iBinder, "com.google.android.play.core.appupdate.protocol.IAppUpdateService");
    }

    @Override // com.google.android.play.core.internal.bs
    public final void a(String str, Bundle bundle, bu buVar) throws RemoteException {
        Parcel a2 = a();
        a2.writeString(str);
        bo.a(a2, bundle);
        bo.a(a2, buVar);
        a(2, a2);
    }

    @Override // com.google.android.play.core.internal.bs
    public final void b(String str, Bundle bundle, bu buVar) throws RemoteException {
        Parcel a2 = a();
        a2.writeString(str);
        bo.a(a2, bundle);
        bo.a(a2, buVar);
        a(3, a2);
    }
}
