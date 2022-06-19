package com.google.android.gms.common.internal;

import android.os.Bundle;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.internal.p357c.BinderC13162b;
import com.google.android.gms.internal.p357c.C13163c;
/* renamed from: com.google.android.gms.common.internal.ar */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/internal/ar.class */
public abstract class AbstractBinderC11992ar extends BinderC13162b implements AbstractC12039k {
    public AbstractBinderC11992ar() {
        super("com.google.android.gms.common.internal.IGmsCallbacks");
    }

    @Override // com.google.android.gms.internal.p357c.BinderC13162b
    /* renamed from: a */
    public final boolean mo13590a(int i, Parcel parcel, Parcel parcel2) throws RemoteException {
        if (i == 1) {
            mo19172a(parcel.readInt(), parcel.readStrongBinder(), (Bundle) C13163c.m13587a(parcel, Bundle.CREATOR));
        } else if (i == 2) {
            parcel.readInt();
            C13163c.m13587a(parcel, Bundle.CREATOR);
            mo19173a();
        } else if (i != 3) {
            return false;
        } else {
            mo19171a(parcel.readInt(), parcel.readStrongBinder(), (zzi) C13163c.m13587a(parcel, zzi.CREATOR));
        }
        parcel2.writeNoException();
        return true;
    }
}
