package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dle.class */
final class dle implements Parcelable.Creator<dlf> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ dlf createFromParcel(Parcel parcel) {
        return new dlf(parcel);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ dlf[] newArray(int i) {
        return new dlf[i];
    }
}
