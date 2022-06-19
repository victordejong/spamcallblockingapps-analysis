package com.facebook.share.model;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes-dex2jar.jar:com/facebook/share/model/ShareLinkContent$a.class */
public final class ShareLinkContent$a implements Parcelable.Creator<ShareLinkContent> {
    /* renamed from: a */
    public ShareLinkContent createFromParcel(Parcel parcel) {
        return new ShareLinkContent(parcel);
    }

    /* renamed from: b */
    public ShareLinkContent[] newArray(int i) {
        return new ShareLinkContent[i];
    }
}
