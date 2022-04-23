package com.facebook.share.model;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import com.facebook.share.model.ShareMedia;
/* loaded from: classes3-dex2jar.jar:com/facebook/share/model/ShareVideo.class */
public final class ShareVideo extends ShareMedia {
    public static final Parcelable.Creator<ShareVideo> CREATOR = new Parcelable.Creator<ShareVideo>() { // from class: com.facebook.share.model.ShareVideo.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public final ShareVideo createFromParcel(Parcel parcel) {
            return new ShareVideo(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public final ShareVideo[] newArray(int i) {
            return new ShareVideo[i];
        }
    };
    private final Uri localUrl;

    /* loaded from: classes3-dex2jar.jar:com/facebook/share/model/ShareVideo$Builder.class */
    public static final class Builder extends ShareMedia.Builder<ShareVideo, Builder> {
        private Uri localUrl;

        public final ShareVideo build() {
            return new ShareVideo(this);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public final Builder readFrom(Parcel parcel) {
            return readFrom((ShareVideo) parcel.readParcelable(ShareVideo.class.getClassLoader()));
        }

        public final Builder readFrom(ShareVideo shareVideo) {
            return shareVideo == null ? this : ((Builder) super.readFrom((Builder) shareVideo)).setLocalUrl(shareVideo.getLocalUrl());
        }

        public final Builder setLocalUrl(Uri uri) {
            this.localUrl = uri;
            return this;
        }
    }

    ShareVideo(Parcel parcel) {
        super(parcel);
        this.localUrl = (Uri) parcel.readParcelable(Uri.class.getClassLoader());
    }

    private ShareVideo(Builder builder) {
        super(builder);
        this.localUrl = builder.localUrl;
    }

    @Override // com.facebook.share.model.ShareMedia, android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final Uri getLocalUrl() {
        return this.localUrl;
    }

    @Override // com.facebook.share.model.ShareMedia
    public final ShareMedia.Type getMediaType() {
        return ShareMedia.Type.VIDEO;
    }

    @Override // com.facebook.share.model.ShareMedia, android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        parcel.writeParcelable(this.localUrl, 0);
    }
}
