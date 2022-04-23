package com.google.android.gms.common.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.internal.base.zab;
import com.google.android.gms.internal.base.zad;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/zam.class */
public final class zam extends zab implements zak {
    public zam(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.common.internal.ISignInButtonCreator");
    }

    @Override // com.google.android.gms.common.internal.zak
    /* renamed from: a */
    public final IObjectWrapper mo17180a(IObjectWrapper iObjectWrapper, zaw zawVar) throws RemoteException {
        Parcel W = m10891W();
        zad.m10887a(W, iObjectWrapper);
        zad.m10885a(W, zawVar);
        Parcel a = m10890a(2, W);
        IObjectWrapper a2 = IObjectWrapper.Stub.m17022a(a.readStrongBinder());
        a.recycle();
        return a2;
    }
}
