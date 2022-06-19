package com.truecaller.ads.offline.dto;

import android.os.Parcel;
import android.os.Parcelable;
import s1.z.c.l;
/* loaded from: classes3-dex2jar.jar:com/truecaller/ads/offline/dto/AutoCompleteTextInputItemUiComponent$a.class */
public final class AutoCompleteTextInputItemUiComponent$a implements Parcelable.Creator<AutoCompleteTextInputItemUiComponent> {
    @Override // android.os.Parcelable.Creator
    public AutoCompleteTextInputItemUiComponent createFromParcel(Parcel parcel) {
        l.e(parcel, "in");
        return new AutoCompleteTextInputItemUiComponent(parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.createStringArrayList());
    }

    @Override // android.os.Parcelable.Creator
    public AutoCompleteTextInputItemUiComponent[] newArray(int i) {
        return new AutoCompleteTextInputItemUiComponent[i];
    }
}
