package com.facebook.share.model;

import android.os.Parcel;
import android.os.Parcelable;
import com.facebook.share.model.ShareOpenGraphValueContainer;
/* loaded from: classes-dex2jar.jar:com/facebook/share/model/ShareOpenGraphAction.class */
public final class ShareOpenGraphAction extends ShareOpenGraphValueContainer<ShareOpenGraphAction, Builder> {
    public static final Parcelable.Creator<ShareOpenGraphAction> CREATOR = new Parcelable.Creator<ShareOpenGraphAction>() { // from class: com.facebook.share.model.ShareOpenGraphAction.1
        @Override // android.os.Parcelable.Creator
        public ShareOpenGraphAction createFromParcel(Parcel parcel) {
            return new ShareOpenGraphAction(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public ShareOpenGraphAction[] newArray(int i) {
            return new ShareOpenGraphAction[i];
        }
    };

    /* loaded from: classes-dex2jar.jar:com/facebook/share/model/ShareOpenGraphAction$Builder.class */
    public static final class Builder extends ShareOpenGraphValueContainer.Builder<ShareOpenGraphAction, Builder> {
        private static final String ACTION_TYPE_KEY = "og:type";

        @Override // com.facebook.share.ShareBuilder
        public ShareOpenGraphAction build() {
            return new ShareOpenGraphAction(this);
        }

        public Builder readFrom(Parcel parcel) {
            return readFrom((ShareOpenGraphAction) parcel.readParcelable(ShareOpenGraphAction.class.getClassLoader()));
        }

        public Builder readFrom(ShareOpenGraphAction shareOpenGraphAction) {
            return shareOpenGraphAction == null ? this : ((Builder) super.readFrom((Builder) shareOpenGraphAction)).setActionType(shareOpenGraphAction.getActionType());
        }

        public Builder setActionType(String str) {
            putString(ACTION_TYPE_KEY, str);
            return this;
        }
    }

    ShareOpenGraphAction(Parcel parcel) {
        super(parcel);
    }

    private ShareOpenGraphAction(Builder builder) {
        super(builder);
    }

    public String getActionType() {
        return getString("og:type");
    }
}
