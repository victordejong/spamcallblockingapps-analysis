package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dpr.class */
final class dpr implements Parcelable.Creator<dpo> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ dpo createFromParcel(Parcel parcel) {
        return new dpo(parcel);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ dpo[] newArray(int i) {
        return new dpo[i];
    }
}
