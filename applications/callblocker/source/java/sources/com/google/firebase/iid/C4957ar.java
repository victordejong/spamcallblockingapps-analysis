package com.google.firebase.iid;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
/* renamed from: com.google.firebase.iid.ar */
/* loaded from: classes-dex2jar.jar:com/google/firebase/iid/ar.class */
final class C4957ar implements Parcelable.Creator<C4958as> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ C4958as createFromParcel(Parcel parcel) {
        IBinder readStrongBinder = parcel.readStrongBinder();
        return readStrongBinder != null ? new C4958as(readStrongBinder) : null;
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ C4958as[] newArray(int i) {
        return new C4958as[i];
    }
}
