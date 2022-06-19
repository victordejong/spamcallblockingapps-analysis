package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import android.os.Parcel;
import android.os.RemoteException;
/* renamed from: com.google.android.gms.internal.measurement.ne */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/ne.class */
public abstract class AbstractBinderC13708ne extends BinderC13719v implements AbstractC13709nf {
    public AbstractBinderC13708ne() {
        super("com.google.android.gms.measurement.api.internal.IEventHandlerProxy");
    }

    @Override // com.google.android.gms.internal.measurement.BinderC13719v
    /* renamed from: a */
    protected final boolean mo12113a(int i, Parcel parcel, Parcel parcel2) throws RemoteException {
        if (i == 1) {
            mo12292a(parcel.readString(), parcel.readString(), (Bundle) C13371as.m13248a(parcel, Bundle.CREATOR), parcel.readLong());
            parcel2.writeNoException();
            return true;
        } else if (i != 2) {
            return false;
        } else {
            int O_ = mo12293O_();
            parcel2.writeNoException();
            parcel2.writeInt(O_);
            return true;
        }
    }
}
