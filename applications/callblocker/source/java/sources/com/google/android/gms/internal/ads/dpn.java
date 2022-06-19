package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dpn.class */
final class dpn implements Parcelable.Creator<dpk> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ dpk createFromParcel(Parcel parcel) {
        return new dpk(parcel);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ dpk[] newArray(int i) {
        return new dpk[i];
    }
}
