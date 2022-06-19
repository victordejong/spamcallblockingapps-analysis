package com.google.android.gms.wearable.internal;

import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.internal.wearable.BinderC13725b;
/* renamed from: com.google.android.gms.wearable.internal.bg */
/* loaded from: classes4-dex2jar.jar:com/google/android/gms/wearable/internal/bg.class */
public abstract class AbstractBinderC14265bg extends BinderC13725b implements AbstractC14264bf {
    public AbstractBinderC14265bg() {
        super("com.google.android.gms.wearable.internal.IChannelStreamCallbacks");
    }

    @Override // com.google.android.gms.internal.wearable.BinderC13725b
    /* renamed from: a */
    public final boolean mo11417a(int i, Parcel parcel, Parcel parcel2) throws RemoteException {
        if (i == 2) {
            mo11435a(parcel.readInt(), parcel.readInt());
            parcel2.writeNoException();
            return true;
        }
        return false;
    }
}
