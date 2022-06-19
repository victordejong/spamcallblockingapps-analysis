package com.truecaller.ads.offline.dto;

import android.os.Parcel;
import android.os.Parcelable;
import s1.z.c.l;
/* loaded from: classes3-dex2jar.jar:com/truecaller/ads/offline/dto/InputItemUiComponent$a.class */
public final class InputItemUiComponent$a implements Parcelable.Creator<InputItemUiComponent> {
    @Override // android.os.Parcelable.Creator
    public InputItemUiComponent createFromParcel(Parcel parcel) {
        l.e(parcel, "in");
        return new InputItemUiComponent(parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString());
    }

    @Override // android.os.Parcelable.Creator
    public InputItemUiComponent[] newArray(int i) {
        return new InputItemUiComponent[i];
    }
}
