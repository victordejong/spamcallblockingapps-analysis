package com.truecaller.ads.offline.dto;

import android.os.Parcel;
import android.os.Parcelable;
import s1.z.c.l;
/* loaded from: classes3-dex2jar.jar:com/truecaller/ads/offline/dto/TextInputItemUiComponent$a.class */
public final class TextInputItemUiComponent$a implements Parcelable.Creator<TextInputItemUiComponent> {
    @Override // android.os.Parcelable.Creator
    public TextInputItemUiComponent createFromParcel(Parcel parcel) {
        l.e(parcel, "in");
        return new TextInputItemUiComponent(parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString());
    }

    @Override // android.os.Parcelable.Creator
    public TextInputItemUiComponent[] newArray(int i) {
        return new TextInputItemUiComponent[i];
    }
}
