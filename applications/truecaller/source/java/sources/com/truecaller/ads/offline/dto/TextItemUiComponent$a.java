package com.truecaller.ads.offline.dto;

import android.os.Parcel;
import android.os.Parcelable;
import s1.z.c.l;
/* loaded from: classes3-dex2jar.jar:com/truecaller/ads/offline/dto/TextItemUiComponent$a.class */
public final class TextItemUiComponent$a implements Parcelable.Creator<TextItemUiComponent> {
    @Override // android.os.Parcelable.Creator
    public TextItemUiComponent createFromParcel(Parcel parcel) {
        l.e(parcel, "in");
        return new TextItemUiComponent(parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString());
    }

    @Override // android.os.Parcelable.Creator
    public TextItemUiComponent[] newArray(int i) {
        return new TextItemUiComponent[i];
    }
}
