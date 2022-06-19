package com.facebook.share.internal;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes-dex2jar.jar:com/facebook/share/internal/ShareFeedContent$a.class */
public final class ShareFeedContent$a implements Parcelable.Creator<ShareFeedContent> {
    /* renamed from: a */
    public ShareFeedContent createFromParcel(Parcel parcel) {
        return new ShareFeedContent(parcel);
    }

    /* renamed from: b */
    public ShareFeedContent[] newArray(int i) {
        return new ShareFeedContent[i];
    }
}
