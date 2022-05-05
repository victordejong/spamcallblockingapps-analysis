package com.google.android.gms.gcm;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.ReflectedParcelable;
import p081h.p203i.p204a.p224e.p254g.C7139h;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/gcm/PendingCallback.class */
public class PendingCallback implements Parcelable, ReflectedParcelable {
    public static final Parcelable.Creator<PendingCallback> CREATOR = new C7139h();

    /* renamed from: a */
    public final IBinder f6705a;

    public PendingCallback(Parcel parcel) {
        this.f6705a = parcel.readStrongBinder();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeStrongBinder(this.f6705a);
    }
}
