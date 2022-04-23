package com.facebook.share.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.facebook.share.model.ShareModel;
import com.facebook.share.model.ShareModelBuilder;
@Deprecated
/* loaded from: classes3-dex2jar.jar:com/facebook/share/internal/LikeContent.class */
public class LikeContent implements ShareModel {
    @Deprecated
    public static final Parcelable.Creator<LikeContent> CREATOR = new Parcelable.Creator<LikeContent>() { // from class: com.facebook.share.internal.LikeContent.1
        @Override // android.os.Parcelable.Creator
        public final /* synthetic */ LikeContent createFromParcel(Parcel parcel) {
            return new LikeContent(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public final /* bridge */ /* synthetic */ LikeContent[] newArray(int i) {
            return new LikeContent[i];
        }
    };
    private final String objectId;
    private final String objectType;

    @Deprecated
    /* loaded from: classes3-dex2jar.jar:com/facebook/share/internal/LikeContent$Builder.class */
    public static class Builder implements ShareModelBuilder<LikeContent, Builder> {
        private String objectId;
        private String objectType;

        @Deprecated
        public LikeContent build() {
            return new LikeContent(this);
        }

        @Deprecated
        public Builder readFrom(LikeContent likeContent) {
            return likeContent == null ? this : setObjectId(likeContent.getObjectId()).setObjectType(likeContent.getObjectType());
        }

        @Deprecated
        public Builder setObjectId(String str) {
            this.objectId = str;
            return this;
        }

        @Deprecated
        public Builder setObjectType(String str) {
            this.objectType = str;
            return this;
        }
    }

    @Deprecated
    LikeContent(Parcel parcel) {
        this.objectId = parcel.readString();
        this.objectType = parcel.readString();
    }

    private LikeContent(Builder builder) {
        this.objectId = builder.objectId;
        this.objectType = builder.objectType;
    }

    @Override // android.os.Parcelable
    @Deprecated
    public int describeContents() {
        return 0;
    }

    @Deprecated
    public String getObjectId() {
        return this.objectId;
    }

    @Deprecated
    public String getObjectType() {
        return this.objectType;
    }

    @Override // android.os.Parcelable
    @Deprecated
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.objectId);
        parcel.writeString(this.objectType);
    }
}
