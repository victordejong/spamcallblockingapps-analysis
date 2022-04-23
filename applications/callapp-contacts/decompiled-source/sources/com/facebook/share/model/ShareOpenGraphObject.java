package com.facebook.share.model;

import android.os.Parcel;
import android.os.Parcelable;
import com.facebook.share.model.ShareOpenGraphValueContainer;
/* loaded from: classes3-dex2jar.jar:com/facebook/share/model/ShareOpenGraphObject.class */
public final class ShareOpenGraphObject extends ShareOpenGraphValueContainer<ShareOpenGraphObject, Builder> {
    public static final Parcelable.Creator<ShareOpenGraphObject> CREATOR = new Parcelable.Creator<ShareOpenGraphObject>() { // from class: com.facebook.share.model.ShareOpenGraphObject.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public final ShareOpenGraphObject createFromParcel(Parcel parcel) {
            return new ShareOpenGraphObject(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public final ShareOpenGraphObject[] newArray(int i) {
            return new ShareOpenGraphObject[i];
        }
    };

    /* loaded from: classes3-dex2jar.jar:com/facebook/share/model/ShareOpenGraphObject$Builder.class */
    public static final class Builder extends ShareOpenGraphValueContainer.Builder<ShareOpenGraphObject, Builder> {
        public Builder() {
            putBoolean("fbsdk:create_object", true);
        }

        public final ShareOpenGraphObject build() {
            return new ShareOpenGraphObject(this);
        }

        final Builder readFrom(Parcel parcel) {
            return readFrom((Builder) ((ShareOpenGraphObject) parcel.readParcelable(ShareOpenGraphObject.class.getClassLoader())));
        }
    }

    ShareOpenGraphObject(Parcel parcel) {
        super(parcel);
    }

    private ShareOpenGraphObject(Builder builder) {
        super(builder);
    }
}
