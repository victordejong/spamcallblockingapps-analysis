package com.facebook.share.model;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes3-dex2jar.jar:com/facebook/share/model/ShareHashtag.class */
public class ShareHashtag implements ShareModel {
    public static final Parcelable.Creator<ShareHashtag> CREATOR = new Parcelable.Creator<ShareHashtag>() { // from class: com.facebook.share.model.ShareHashtag.1
        @Override // android.os.Parcelable.Creator
        public final ShareHashtag createFromParcel(Parcel parcel) {
            return new ShareHashtag(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public final ShareHashtag[] newArray(int i) {
            return new ShareHashtag[i];
        }
    };
    private final String hashtag;

    /* loaded from: classes3-dex2jar.jar:com/facebook/share/model/ShareHashtag$Builder.class */
    public static class Builder implements ShareModelBuilder<ShareHashtag, Builder> {
        private String hashtag;

        public ShareHashtag build() {
            return new ShareHashtag(this);
        }

        public String getHashtag() {
            return this.hashtag;
        }

        public Builder readFrom(Parcel parcel) {
            return readFrom((ShareHashtag) parcel.readParcelable(ShareHashtag.class.getClassLoader()));
        }

        public Builder readFrom(ShareHashtag shareHashtag) {
            return shareHashtag == null ? this : setHashtag(shareHashtag.getHashtag());
        }

        public Builder setHashtag(String str) {
            this.hashtag = str;
            return this;
        }
    }

    ShareHashtag(Parcel parcel) {
        this.hashtag = parcel.readString();
    }

    private ShareHashtag(Builder builder) {
        this.hashtag = builder.hashtag;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String getHashtag() {
        return this.hashtag;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.hashtag);
    }
}
