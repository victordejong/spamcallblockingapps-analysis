package com.truecaller.ads.offline.dto;

import android.os.Parcel;
import android.os.Parcelable;
import s1.z.c.l;
/* loaded from: classes3-dex2jar.jar:com/truecaller/ads/offline/dto/ButtonItemUiComponent$a.class */
public final class ButtonItemUiComponent$a implements Parcelable.Creator<ButtonItemUiComponent> {
    @Override // android.os.Parcelable.Creator
    public ButtonItemUiComponent createFromParcel(Parcel parcel) {
        l.e(parcel, "in");
        return new ButtonItemUiComponent(parcel.readString(), parcel.readString(), ButtonItemUiComponent$OnClick.CREATOR.createFromParcel(parcel), parcel.readString());
    }

    @Override // android.os.Parcelable.Creator
    public ButtonItemUiComponent[] newArray(int i) {
        return new ButtonItemUiComponent[i];
    }
}
