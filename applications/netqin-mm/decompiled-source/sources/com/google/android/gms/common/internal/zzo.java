package com.google.android.gms.common.internal;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.internal.common.zzb;
import com.google.android.gms.internal.common.zzd;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/zzo.class */
public final class zzo extends zzb implements IGmsCallbacks {
    public zzo(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.common.internal.IGmsCallbacks");
    }

    @Override // com.google.android.gms.common.internal.IGmsCallbacks
    /* renamed from: a */
    public final void mo17161a(int i, Bundle bundle) throws RemoteException {
        Parcel W = m10522W();
        W.writeInt(i);
        zzd.m10515a(W, bundle);
        m10520b(2, W);
    }

    @Override // com.google.android.gms.common.internal.IGmsCallbacks
    /* renamed from: a */
    public final void mo17160a(int i, IBinder iBinder, Bundle bundle) throws RemoteException {
        Parcel W = m10522W();
        W.writeInt(i);
        W.writeStrongBinder(iBinder);
        zzd.m10515a(W, bundle);
        m10520b(1, W);
    }

    @Override // com.google.android.gms.common.internal.IGmsCallbacks
    /* renamed from: a */
    public final void mo17159a(int i, IBinder iBinder, zzc zzcVar) throws RemoteException {
        Parcel W = m10522W();
        W.writeInt(i);
        W.writeStrongBinder(iBinder);
        zzd.m10515a(W, zzcVar);
        m10520b(3, W);
    }
}
