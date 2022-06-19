package com.facebook.share.model;

import android.os.Parcel;
import android.os.Parcelable;
import com.facebook.share.model.ShareContent;
import com.facebook.share.model.ShareOpenGraphAction;
/* loaded from: classes3-dex2jar.jar:com/facebook/share/model/ShareOpenGraphContent.class */
public final class ShareOpenGraphContent extends ShareContent<ShareOpenGraphContent, Builder> {
    public static final Parcelable.Creator<ShareOpenGraphContent> CREATOR = new Parcelable.Creator<ShareOpenGraphContent>() { // from class: com.facebook.share.model.ShareOpenGraphContent.1
        @Override // android.os.Parcelable.Creator
        public final ShareOpenGraphContent createFromParcel(Parcel parcel) {
            return new ShareOpenGraphContent(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public final ShareOpenGraphContent[] newArray(int i) {
            return new ShareOpenGraphContent[i];
        }
    };
    private final ShareOpenGraphAction action;
    private final String previewPropertyName;

    /* loaded from: classes3-dex2jar.jar:com/facebook/share/model/ShareOpenGraphContent$Builder.class */
    public static final class Builder extends ShareContent.Builder<ShareOpenGraphContent, Builder> {
        private ShareOpenGraphAction action;
        private String previewPropertyName;

        public final ShareOpenGraphContent build() {
            return new ShareOpenGraphContent(this);
        }

        public final Builder readFrom(ShareOpenGraphContent shareOpenGraphContent) {
            return shareOpenGraphContent == null ? this : ((Builder) super.readFrom((Builder) shareOpenGraphContent)).setAction(shareOpenGraphContent.getAction()).setPreviewPropertyName(shareOpenGraphContent.getPreviewPropertyName());
        }

        public final Builder setAction(ShareOpenGraphAction shareOpenGraphAction) {
            this.action = shareOpenGraphAction == null ? null : new ShareOpenGraphAction.Builder().readFrom(shareOpenGraphAction).build();
            return this;
        }

        public final Builder setPreviewPropertyName(String str) {
            this.previewPropertyName = str;
            return this;
        }
    }

    ShareOpenGraphContent(Parcel parcel) {
        super(parcel);
        this.action = new ShareOpenGraphAction.Builder().readFrom(parcel).build();
        this.previewPropertyName = parcel.readString();
    }

    private ShareOpenGraphContent(Builder builder) {
        super(builder);
        this.action = builder.action;
        this.previewPropertyName = builder.previewPropertyName;
    }

    @Override // com.facebook.share.model.ShareContent, android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final ShareOpenGraphAction getAction() {
        return this.action;
    }

    public final String getPreviewPropertyName() {
        return this.previewPropertyName;
    }

    @Override // com.facebook.share.model.ShareContent, android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        parcel.writeParcelable(this.action, 0);
        parcel.writeString(this.previewPropertyName);
    }
}
