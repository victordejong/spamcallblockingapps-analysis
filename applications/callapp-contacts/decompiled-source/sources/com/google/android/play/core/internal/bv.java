package com.google.android.play.core.internal;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import java.util.List;
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/internal/bv.class */
public final class bv extends bm implements bx {
    /* JADX INFO: Access modifiers changed from: package-private */
    public bv(IBinder iBinder) {
        super(iBinder, "com.google.android.play.core.assetpacks.protocol.IAssetModuleService");
    }

    @Override // com.google.android.play.core.internal.bx
    public final void a(String str, Bundle bundle, Bundle bundle2, bz bzVar) throws RemoteException {
        Parcel a2 = a();
        a2.writeString(str);
        bo.a(a2, bundle);
        bo.a(a2, bundle2);
        bo.a(a2, bzVar);
        a(6, a2);
    }

    @Override // com.google.android.play.core.internal.bx
    public final void a(String str, Bundle bundle, bz bzVar) throws RemoteException {
        Parcel a2 = a();
        a2.writeString(str);
        bo.a(a2, bundle);
        bo.a(a2, bzVar);
        a(5, a2);
    }

    @Override // com.google.android.play.core.internal.bx
    public final void a(String str, List<Bundle> list, Bundle bundle, bz bzVar) throws RemoteException {
        Parcel a2 = a();
        a2.writeString(str);
        a2.writeTypedList(list);
        bo.a(a2, bundle);
        bo.a(a2, bzVar);
        a(14, a2);
    }

    @Override // com.google.android.play.core.internal.bx
    public final void b(String str, Bundle bundle, Bundle bundle2, bz bzVar) throws RemoteException {
        Parcel a2 = a();
        a2.writeString(str);
        bo.a(a2, bundle);
        bo.a(a2, bundle2);
        bo.a(a2, bzVar);
        a(7, a2);
    }

    @Override // com.google.android.play.core.internal.bx
    public final void b(String str, Bundle bundle, bz bzVar) throws RemoteException {
        Parcel a2 = a();
        a2.writeString(str);
        bo.a(a2, bundle);
        bo.a(a2, bzVar);
        a(10, a2);
    }

    @Override // com.google.android.play.core.internal.bx
    public final void c(String str, Bundle bundle, Bundle bundle2, bz bzVar) throws RemoteException {
        Parcel a2 = a();
        a2.writeString(str);
        bo.a(a2, bundle);
        bo.a(a2, bundle2);
        bo.a(a2, bzVar);
        a(9, a2);
    }

    @Override // com.google.android.play.core.internal.bx
    public final void d(String str, Bundle bundle, Bundle bundle2, bz bzVar) throws RemoteException {
        Parcel a2 = a();
        a2.writeString(str);
        bo.a(a2, bundle);
        bo.a(a2, bundle2);
        bo.a(a2, bzVar);
        a(11, a2);
    }
}
