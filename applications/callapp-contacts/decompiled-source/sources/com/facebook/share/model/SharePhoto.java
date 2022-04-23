package com.facebook.share.model;

import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import com.facebook.share.model.ShareMedia;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes3-dex2jar.jar:com/facebook/share/model/SharePhoto.class */
public final class SharePhoto extends ShareMedia {
    public static final Parcelable.Creator<SharePhoto> CREATOR = new Parcelable.Creator<SharePhoto>() { // from class: com.facebook.share.model.SharePhoto.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public final SharePhoto createFromParcel(Parcel parcel) {
            return new SharePhoto(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public final SharePhoto[] newArray(int i) {
            return new SharePhoto[i];
        }
    };
    private final Bitmap bitmap;
    private final String caption;
    private final Uri imageUrl;
    private final boolean userGenerated;

    /* loaded from: classes3-dex2jar.jar:com/facebook/share/model/SharePhoto$Builder.class */
    public static final class Builder extends ShareMedia.Builder<SharePhoto, Builder> {
        private Bitmap bitmap;
        private String caption;
        private Uri imageUrl;
        private boolean userGenerated;

        /* JADX INFO: Access modifiers changed from: package-private */
        public static List<SharePhoto> readPhotoListFrom(Parcel parcel) {
            List<ShareMedia> readListFrom = readListFrom(parcel);
            ArrayList arrayList = new ArrayList();
            for (ShareMedia shareMedia : readListFrom) {
                if (shareMedia instanceof SharePhoto) {
                    arrayList.add((SharePhoto) shareMedia);
                }
            }
            return arrayList;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public static void writePhotoListTo(Parcel parcel, int i, List<SharePhoto> list) {
            ShareMedia[] shareMediaArr = new ShareMedia[list.size()];
            for (int i2 = 0; i2 < list.size(); i2++) {
                shareMediaArr[i2] = list.get(i2);
            }
            parcel.writeParcelableArray(shareMediaArr, i);
        }

        public final SharePhoto build() {
            return new SharePhoto(this);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public final Bitmap getBitmap() {
            return this.bitmap;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public final Uri getImageUrl() {
            return this.imageUrl;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public final Builder readFrom(Parcel parcel) {
            return readFrom((SharePhoto) parcel.readParcelable(SharePhoto.class.getClassLoader()));
        }

        public final Builder readFrom(SharePhoto sharePhoto) {
            return sharePhoto == null ? this : ((Builder) super.readFrom((Builder) sharePhoto)).setBitmap(sharePhoto.getBitmap()).setImageUrl(sharePhoto.getImageUrl()).setUserGenerated(sharePhoto.getUserGenerated()).setCaption(sharePhoto.getCaption());
        }

        public final Builder setBitmap(Bitmap bitmap) {
            this.bitmap = bitmap;
            return this;
        }

        public final Builder setCaption(String str) {
            this.caption = str;
            return this;
        }

        public final Builder setImageUrl(Uri uri) {
            this.imageUrl = uri;
            return this;
        }

        public final Builder setUserGenerated(boolean z) {
            this.userGenerated = z;
            return this;
        }
    }

    SharePhoto(Parcel parcel) {
        super(parcel);
        this.bitmap = (Bitmap) parcel.readParcelable(Bitmap.class.getClassLoader());
        this.imageUrl = (Uri) parcel.readParcelable(Uri.class.getClassLoader());
        this.userGenerated = parcel.readByte() != 0;
        this.caption = parcel.readString();
    }

    private SharePhoto(Builder builder) {
        super(builder);
        this.bitmap = builder.bitmap;
        this.imageUrl = builder.imageUrl;
        this.userGenerated = builder.userGenerated;
        this.caption = builder.caption;
    }

    @Override // com.facebook.share.model.ShareMedia, android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final Bitmap getBitmap() {
        return this.bitmap;
    }

    public final String getCaption() {
        return this.caption;
    }

    public final Uri getImageUrl() {
        return this.imageUrl;
    }

    @Override // com.facebook.share.model.ShareMedia
    public final ShareMedia.Type getMediaType() {
        return ShareMedia.Type.PHOTO;
    }

    public final boolean getUserGenerated() {
        return this.userGenerated;
    }

    @Override // com.facebook.share.model.ShareMedia, android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        parcel.writeParcelable(this.bitmap, 0);
        parcel.writeParcelable(this.imageUrl, 0);
        parcel.writeByte(this.userGenerated ? (byte) 1 : (byte) 0);
        parcel.writeString(this.caption);
    }
}
