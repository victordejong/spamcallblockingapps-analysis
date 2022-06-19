package com.facebook.share.model;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes-dex2jar.jar:com/facebook/share/model/ShareVideoContent$a.class */
public final class ShareVideoContent$a implements Parcelable.Creator<ShareVideoContent> {
    /* renamed from: a */
    public ShareVideoContent createFromParcel(Parcel parcel) {
        return new ShareVideoContent(parcel);
    }

    /* renamed from: b */
    public ShareVideoContent[] newArray(int i) {
        return new ShareVideoContent[i];
    }
}
