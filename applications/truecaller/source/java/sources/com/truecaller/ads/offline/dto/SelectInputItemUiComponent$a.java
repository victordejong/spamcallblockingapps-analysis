package com.truecaller.ads.offline.dto;

import android.os.Parcel;
import android.os.Parcelable;
import s1.z.c.l;
/* loaded from: classes3-dex2jar.jar:com/truecaller/ads/offline/dto/SelectInputItemUiComponent$a.class */
public final class SelectInputItemUiComponent$a implements Parcelable.Creator<SelectInputItemUiComponent> {
    @Override // android.os.Parcelable.Creator
    public SelectInputItemUiComponent createFromParcel(Parcel parcel) {
        l.e(parcel, "in");
        return new SelectInputItemUiComponent(parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.createStringArrayList(), parcel.readString());
    }

    @Override // android.os.Parcelable.Creator
    public SelectInputItemUiComponent[] newArray(int i) {
        return new SelectInputItemUiComponent[i];
    }
}
