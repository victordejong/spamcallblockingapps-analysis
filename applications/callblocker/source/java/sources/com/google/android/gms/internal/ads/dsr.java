package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dsr.class */
final class dsr implements Parcelable.Creator<dss> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ dss createFromParcel(Parcel parcel) {
        return new dss(parcel);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ dss[] newArray(int i) {
        return new dss[0];
    }
}
