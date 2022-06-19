package com.facebook.share.model;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes-dex2jar.jar:com/facebook/share/model/SharePhoto$a.class */
public final class SharePhoto$a implements Parcelable.Creator<SharePhoto> {
    /* renamed from: a */
    public SharePhoto createFromParcel(Parcel parcel) {
        return new SharePhoto(parcel);
    }

    /* renamed from: b */
    public SharePhoto[] newArray(int i) {
        return new SharePhoto[i];
    }
}
