package com.truecaller.ads.offline.dto;

import android.os.Parcel;
import android.os.Parcelable;
import s1.z.c.l;
/* loaded from: classes3-dex2jar.jar:com/truecaller/ads/offline/dto/RadioInputItemUiComponent$a.class */
public final class RadioInputItemUiComponent$a implements Parcelable.Creator<RadioInputItemUiComponent> {
    @Override // android.os.Parcelable.Creator
    public RadioInputItemUiComponent createFromParcel(Parcel parcel) {
        l.e(parcel, "in");
        return new RadioInputItemUiComponent(parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.createStringArrayList());
    }

    @Override // android.os.Parcelable.Creator
    public RadioInputItemUiComponent[] newArray(int i) {
        return new RadioInputItemUiComponent[i];
    }
}
