package com.facebook.share.model;

import android.os.Parcel;
import android.os.Parcelable;
import com.facebook.share.model.ShareContent;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/facebook/share/model/ShareStoryContent.class */
public final class ShareStoryContent extends ShareContent<ShareStoryContent, Builder> {
    public static final Parcelable.Creator<ShareStoryContent> CREATOR = new Parcelable.Creator<ShareStoryContent>() { // from class: com.facebook.share.model.ShareStoryContent.1
        @Override // android.os.Parcelable.Creator
        public ShareStoryContent createFromParcel(Parcel parcel) {
            return new ShareStoryContent(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public ShareStoryContent[] newArray(int i) {
            return new ShareStoryContent[i];
        }
    };
    private final String mAttributionLink;
    private final ShareMedia mBackgroundAsset;
    private final List<String> mBackgroundColorList;
    private final SharePhoto mStickerAsset;

    /* loaded from: classes-dex2jar.jar:com/facebook/share/model/ShareStoryContent$Builder.class */
    public static final class Builder extends ShareContent.Builder<ShareStoryContent, Builder> {
        static final String TAG = "Builder";
        private String mAttributionLink;
        private ShareMedia mBackgroundAsset;
        private List<String> mBackgroundColorList;
        private SharePhoto mStickerAsset;

        @Override // com.facebook.share.ShareBuilder
        public ShareStoryContent build() {
            return new ShareStoryContent(this);
        }

        public Builder readFrom(ShareStoryContent shareStoryContent) {
            return shareStoryContent == null ? this : ((Builder) super.readFrom((Builder) shareStoryContent)).setBackgroundAsset(shareStoryContent.getBackgroundAsset()).setStickerAsset(shareStoryContent.getStickerAsset()).setBackgroundColorList(shareStoryContent.getBackgroundColorList()).setAttributionLink(shareStoryContent.getAttributionLink());
        }

        public Builder setAttributionLink(String str) {
            this.mAttributionLink = str;
            return this;
        }

        public Builder setBackgroundAsset(ShareMedia shareMedia) {
            this.mBackgroundAsset = shareMedia;
            return this;
        }

        public Builder setBackgroundColorList(List<String> list) {
            this.mBackgroundColorList = list;
            return this;
        }

        public Builder setStickerAsset(SharePhoto sharePhoto) {
            this.mStickerAsset = sharePhoto;
            return this;
        }
    }

    ShareStoryContent(Parcel parcel) {
        super(parcel);
        this.mBackgroundAsset = (ShareMedia) parcel.readParcelable(ShareMedia.class.getClassLoader());
        this.mStickerAsset = (SharePhoto) parcel.readParcelable(SharePhoto.class.getClassLoader());
        this.mBackgroundColorList = readUnmodifiableStringList(parcel);
        this.mAttributionLink = parcel.readString();
    }

    private ShareStoryContent(Builder builder) {
        super(builder);
        this.mBackgroundAsset = builder.mBackgroundAsset;
        this.mStickerAsset = builder.mStickerAsset;
        this.mBackgroundColorList = builder.mBackgroundColorList;
        this.mAttributionLink = builder.mAttributionLink;
    }

    private List<String> readUnmodifiableStringList(Parcel parcel) {
        ArrayList arrayList = new ArrayList();
        parcel.readStringList(arrayList);
        return arrayList.isEmpty() ? null : Collections.unmodifiableList(arrayList);
    }

    @Override // com.facebook.share.model.ShareContent, android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String getAttributionLink() {
        return this.mAttributionLink;
    }

    public ShareMedia getBackgroundAsset() {
        return this.mBackgroundAsset;
    }

    public List<String> getBackgroundColorList() {
        List<String> list = this.mBackgroundColorList;
        return list == null ? null : Collections.unmodifiableList(list);
    }

    public SharePhoto getStickerAsset() {
        return this.mStickerAsset;
    }

    @Override // com.facebook.share.model.ShareContent, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        parcel.writeParcelable(this.mBackgroundAsset, 0);
        parcel.writeParcelable(this.mStickerAsset, 0);
        parcel.writeStringList(this.mBackgroundColorList);
        parcel.writeString(this.mAttributionLink);
    }
}
