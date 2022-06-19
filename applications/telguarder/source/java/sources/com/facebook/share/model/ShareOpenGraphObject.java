package com.facebook.share.model;

import android.os.Parcel;
import android.os.Parcelable;
import com.facebook.internal.NativeProtocol;
import com.facebook.share.model.ShareOpenGraphValueContainer;
/* loaded from: classes-dex2jar.jar:com/facebook/share/model/ShareOpenGraphObject.class */
public final class ShareOpenGraphObject extends ShareOpenGraphValueContainer<ShareOpenGraphObject, Builder> {
    public static final Parcelable.Creator<ShareOpenGraphObject> CREATOR = new Parcelable.Creator<ShareOpenGraphObject>() { // from class: com.facebook.share.model.ShareOpenGraphObject.1
        @Override // android.os.Parcelable.Creator
        public ShareOpenGraphObject createFromParcel(Parcel parcel) {
            return new ShareOpenGraphObject(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public ShareOpenGraphObject[] newArray(int i) {
            return new ShareOpenGraphObject[i];
        }
    };

    /* loaded from: classes-dex2jar.jar:com/facebook/share/model/ShareOpenGraphObject$Builder.class */
    public static final class Builder extends ShareOpenGraphValueContainer.Builder<ShareOpenGraphObject, Builder> {
        public Builder() {
            putBoolean(NativeProtocol.OPEN_GRAPH_CREATE_OBJECT_KEY, true);
        }

        @Override // com.facebook.share.ShareBuilder
        public ShareOpenGraphObject build() {
            return new ShareOpenGraphObject(this);
        }

        Builder readFrom(Parcel parcel) {
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
