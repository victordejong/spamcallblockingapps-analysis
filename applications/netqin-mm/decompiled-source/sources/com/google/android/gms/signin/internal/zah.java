package com.google.android.gms.signin.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.common.internal.IAccountAccessor;
import com.google.android.gms.internal.base.zab;
import com.google.android.gms.internal.base.zad;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/signin/internal/zah.class */
public final class zah extends zab implements zae {
    public zah(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.signin.internal.ISignInService");
    }

    @Override // com.google.android.gms.signin.internal.zae
    /* renamed from: a */
    public final void mo8631a(IAccountAccessor iAccountAccessor, int i, boolean z) throws RemoteException {
        Parcel W = m10891W();
        zad.m10887a(W, iAccountAccessor);
        W.writeInt(i);
        zad.m10884a(W, z);
        m10889b(9, W);
    }

    @Override // com.google.android.gms.signin.internal.zae
    /* renamed from: a */
    public final void mo8630a(zak zakVar, zac zacVar) throws RemoteException {
        Parcel W = m10891W();
        zad.m10885a(W, zakVar);
        zad.m10887a(W, zacVar);
        m10889b(12, W);
    }

    @Override // com.google.android.gms.signin.internal.zae
    /* renamed from: b */
    public final void mo8629b(int i) throws RemoteException {
        Parcel W = m10891W();
        W.writeInt(i);
        m10889b(7, W);
    }
}
