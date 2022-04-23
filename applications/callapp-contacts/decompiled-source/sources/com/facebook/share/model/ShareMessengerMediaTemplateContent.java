package com.facebook.share.model;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import com.facebook.share.model.ShareContent;
@Deprecated
/* loaded from: classes3-dex2jar.jar:com/facebook/share/model/ShareMessengerMediaTemplateContent.class */
public final class ShareMessengerMediaTemplateContent extends ShareContent<ShareMessengerMediaTemplateContent, Builder> {
    public static final Parcelable.Creator<ShareMessengerMediaTemplateContent> CREATOR = new Parcelable.Creator<ShareMessengerMediaTemplateContent>() { // from class: com.facebook.share.model.ShareMessengerMediaTemplateContent.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public final ShareMessengerMediaTemplateContent createFromParcel(Parcel parcel) {
            return new ShareMessengerMediaTemplateContent(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public final ShareMessengerMediaTemplateContent[] newArray(int i) {
            return new ShareMessengerMediaTemplateContent[i];
        }
    };
    private final String attachmentId;
    private final ShareMessengerActionButton button;
    private final MediaType mediaType;
    private final Uri mediaUrl;

    /* loaded from: classes3-dex2jar.jar:com/facebook/share/model/ShareMessengerMediaTemplateContent$Builder.class */
    public static class Builder extends ShareContent.Builder<ShareMessengerMediaTemplateContent, Builder> {
        private String attachmentId;
        private ShareMessengerActionButton button;
        private MediaType mediaType;
        private Uri mediaUrl;

        public ShareMessengerMediaTemplateContent build() {
            return new ShareMessengerMediaTemplateContent(this);
        }

        public Builder readFrom(ShareMessengerMediaTemplateContent shareMessengerMediaTemplateContent) {
            return shareMessengerMediaTemplateContent == null ? this : ((Builder) super.readFrom((Builder) shareMessengerMediaTemplateContent)).setMediaType(shareMessengerMediaTemplateContent.getMediaType()).setAttachmentId(shareMessengerMediaTemplateContent.getAttachmentId()).setMediaUrl(shareMessengerMediaTemplateContent.getMediaUrl()).setButton(shareMessengerMediaTemplateContent.getButton());
        }

        public Builder setAttachmentId(String str) {
            this.attachmentId = str;
            return this;
        }

        public Builder setButton(ShareMessengerActionButton shareMessengerActionButton) {
            this.button = shareMessengerActionButton;
            return this;
        }

        public Builder setMediaType(MediaType mediaType) {
            this.mediaType = mediaType;
            return this;
        }

        public Builder setMediaUrl(Uri uri) {
            this.mediaUrl = uri;
            return this;
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/facebook/share/model/ShareMessengerMediaTemplateContent$MediaType.class */
    public enum MediaType {
        IMAGE,
        VIDEO
    }

    ShareMessengerMediaTemplateContent(Parcel parcel) {
        super(parcel);
        this.mediaType = (MediaType) parcel.readSerializable();
        this.attachmentId = parcel.readString();
        this.mediaUrl = (Uri) parcel.readParcelable(Uri.class.getClassLoader());
        this.button = (ShareMessengerActionButton) parcel.readParcelable(ShareMessengerActionButton.class.getClassLoader());
    }

    private ShareMessengerMediaTemplateContent(Builder builder) {
        super(builder);
        this.mediaType = builder.mediaType;
        this.attachmentId = builder.attachmentId;
        this.mediaUrl = builder.mediaUrl;
        this.button = builder.button;
    }

    @Override // com.facebook.share.model.ShareContent, android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final String getAttachmentId() {
        return this.attachmentId;
    }

    public final ShareMessengerActionButton getButton() {
        return this.button;
    }

    public final MediaType getMediaType() {
        return this.mediaType;
    }

    public final Uri getMediaUrl() {
        return this.mediaUrl;
    }

    @Override // com.facebook.share.model.ShareContent, android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeSerializable(this.mediaType);
        parcel.writeString(this.attachmentId);
        parcel.writeParcelable(this.mediaUrl, i);
        parcel.writeParcelable(this.button, i);
    }
}
