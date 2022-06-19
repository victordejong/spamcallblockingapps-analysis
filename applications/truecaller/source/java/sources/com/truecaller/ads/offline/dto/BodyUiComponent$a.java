package com.truecaller.ads.offline.dto;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;
import s1.z.c.l;
/* loaded from: classes3-dex2jar.jar:com/truecaller/ads/offline/dto/BodyUiComponent$a.class */
public final class BodyUiComponent$a implements Parcelable.Creator<BodyUiComponent> {
    @Override // android.os.Parcelable.Creator
    public BodyUiComponent createFromParcel(Parcel parcel) {
        l.e(parcel, "in");
        String readString = parcel.readString();
        int readInt = parcel.readInt();
        ArrayList arrayList = new ArrayList(readInt);
        while (readInt != 0) {
            arrayList.add((UiComponent) parcel.readParcelable(BodyUiComponent.class.getClassLoader()));
            readInt--;
        }
        return new BodyUiComponent(readString, arrayList);
    }

    @Override // android.os.Parcelable.Creator
    public BodyUiComponent[] newArray(int i) {
        return new BodyUiComponent[i];
    }
}
