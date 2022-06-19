package com.google.android.gms.maps.p362a;

import android.graphics.Bitmap;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.AbstractC12126b;
import com.google.android.gms.internal.p359e.BinderC13287f;
import com.google.android.gms.internal.p359e.C13288g;
/* renamed from: com.google.android.gms.maps.a.v */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/maps/a/v.class */
public abstract class AbstractBinderC13815v extends BinderC13287f implements AbstractC13814u {
    public AbstractBinderC13815v() {
        super("com.google.android.gms.maps.internal.ISnapshotReadyCallback");
    }

    @Override // com.google.android.gms.internal.p359e.BinderC13287f
    public final boolean dispatchTransaction(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (i == 1) {
            mo12141a((Bitmap) C13288g.m13490a(parcel, Bitmap.CREATOR));
        } else if (i != 2) {
            return false;
        } else {
            mo12140a(AbstractC12126b.AbstractBinderC12127a.m18981a(parcel.readStrongBinder()));
        }
        parcel2.writeNoException();
        return true;
    }
}
