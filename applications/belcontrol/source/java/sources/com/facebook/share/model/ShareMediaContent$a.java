package com.facebook.share.model;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes-dex2jar.jar:com/facebook/share/model/ShareMediaContent$a.class */
public final class ShareMediaContent$a implements Parcelable.Creator<ShareMediaContent> {
    /* renamed from: a */
    public ShareMediaContent createFromParcel(Parcel parcel) {
        return new ShareMediaContent(parcel);
    }

    /* renamed from: b */
    public ShareMediaContent[] newArray(int i) {
        return new ShareMediaContent[i];
    }
}
