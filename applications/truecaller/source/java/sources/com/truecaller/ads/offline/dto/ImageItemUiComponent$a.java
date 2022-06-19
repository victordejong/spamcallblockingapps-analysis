package com.truecaller.ads.offline.dto;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import s1.z.c.l;
/* loaded from: classes3-dex2jar.jar:com/truecaller/ads/offline/dto/ImageItemUiComponent$a.class */
public final class ImageItemUiComponent$a implements Parcelable.Creator<ImageItemUiComponent> {
    @Override // android.os.Parcelable.Creator
    public ImageItemUiComponent createFromParcel(Parcel parcel) {
        l.e(parcel, "in");
        return new ImageItemUiComponent(parcel.readString(), (Uri) parcel.readParcelable(ImageItemUiComponent.class.getClassLoader()), parcel.readString());
    }

    @Override // android.os.Parcelable.Creator
    public ImageItemUiComponent[] newArray(int i) {
        return new ImageItemUiComponent[i];
    }
}
