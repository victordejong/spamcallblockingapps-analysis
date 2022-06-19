package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dph.class */
final class dph implements Parcelable.Creator<dpi> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ dpi createFromParcel(Parcel parcel) {
        return new dpi(parcel);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ dpi[] newArray(int i) {
        return new dpi[0];
    }
}
