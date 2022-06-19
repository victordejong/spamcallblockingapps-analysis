package com.facebook.share.model;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes-dex2jar.jar:com/facebook/share/model/SharePhotoContent$a.class */
public final class SharePhotoContent$a implements Parcelable.Creator<SharePhotoContent> {
    /* renamed from: a */
    public SharePhotoContent createFromParcel(Parcel parcel) {
        return new SharePhotoContent(parcel);
    }

    /* renamed from: b */
    public SharePhotoContent[] newArray(int i) {
        return new SharePhotoContent[i];
    }
}
