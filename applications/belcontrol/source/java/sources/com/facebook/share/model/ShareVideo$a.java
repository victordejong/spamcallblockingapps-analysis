package com.facebook.share.model;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes-dex2jar.jar:com/facebook/share/model/ShareVideo$a.class */
public final class ShareVideo$a implements Parcelable.Creator<ShareVideo> {
    /* renamed from: a */
    public ShareVideo createFromParcel(Parcel parcel) {
        return new ShareVideo(parcel);
    }

    /* renamed from: b */
    public ShareVideo[] newArray(int i) {
        return new ShareVideo[i];
    }
}
