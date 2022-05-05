package com.facebook.share.model;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes-dex2jar.jar:com/facebook/share/model/ShareOpenGraphObject.class */
public final class ShareOpenGraphObject extends ShareOpenGraphValueContainer<ShareOpenGraphObject, Object> {
    public static final Parcelable.Creator<ShareOpenGraphObject> CREATOR = new C2702a();

    /* renamed from: com.facebook.share.model.ShareOpenGraphObject$a */
    /* loaded from: classes-dex2jar.jar:com/facebook/share/model/ShareOpenGraphObject$a.class */
    public static final class C2702a implements Parcelable.Creator<ShareOpenGraphObject> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ShareOpenGraphObject createFromParcel(Parcel parcel) {
            return new ShareOpenGraphObject(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ShareOpenGraphObject[] newArray(int i) {
            return new ShareOpenGraphObject[i];
        }
    }

    public ShareOpenGraphObject(Parcel parcel) {
        super(parcel);
    }
}
