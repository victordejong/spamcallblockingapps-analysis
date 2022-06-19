package com.truecaller.ads.offline.dto;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;
import s1.z.c.l;
/* loaded from: classes3-dex2jar.jar:com/truecaller/ads/offline/dto/CTAUiComponent$a.class */
public final class CTAUiComponent$a implements Parcelable.Creator<CTAUiComponent> {
    @Override // android.os.Parcelable.Creator
    public CTAUiComponent createFromParcel(Parcel parcel) {
        l.e(parcel, "in");
        String readString = parcel.readString();
        int readInt = parcel.readInt();
        ArrayList arrayList = new ArrayList(readInt);
        while (readInt != 0) {
            arrayList.add((UiComponent) parcel.readParcelable(CTAUiComponent.class.getClassLoader()));
            readInt--;
        }
        return new CTAUiComponent(readString, arrayList);
    }

    @Override // android.os.Parcelable.Creator
    public CTAUiComponent[] newArray(int i) {
        return new CTAUiComponent[i];
    }
}
