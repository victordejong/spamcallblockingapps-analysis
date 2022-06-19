package com.facebook.share.model;

import android.os.Parcel;
import android.os.Parcelable;
import com.facebook.share.model.CameraEffectArguments;
import com.facebook.share.model.CameraEffectTextures;
import com.facebook.share.model.ShareContent;
/* loaded from: classes3-dex2jar.jar:com/facebook/share/model/ShareCameraEffectContent.class */
public class ShareCameraEffectContent extends ShareContent<ShareCameraEffectContent, Builder> {
    public static final Parcelable.Creator<ShareCameraEffectContent> CREATOR = new Parcelable.Creator<ShareCameraEffectContent>() { // from class: com.facebook.share.model.ShareCameraEffectContent.1
        @Override // android.os.Parcelable.Creator
        public final ShareCameraEffectContent createFromParcel(Parcel parcel) {
            return new ShareCameraEffectContent(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public final ShareCameraEffectContent[] newArray(int i) {
            return new ShareCameraEffectContent[i];
        }
    };
    private CameraEffectArguments arguments;
    private String effectId;
    private CameraEffectTextures textures;

    /* loaded from: classes3-dex2jar.jar:com/facebook/share/model/ShareCameraEffectContent$Builder.class */
    public static final class Builder extends ShareContent.Builder<ShareCameraEffectContent, Builder> {
        private CameraEffectArguments arguments;
        private String effectId;
        private CameraEffectTextures textures;

        public final ShareCameraEffectContent build() {
            return new ShareCameraEffectContent(this);
        }

        public final Builder readFrom(ShareCameraEffectContent shareCameraEffectContent) {
            return shareCameraEffectContent == null ? this : ((Builder) super.readFrom((Builder) shareCameraEffectContent)).setEffectId(this.effectId).setArguments(this.arguments);
        }

        public final Builder setArguments(CameraEffectArguments cameraEffectArguments) {
            this.arguments = cameraEffectArguments;
            return this;
        }

        public final Builder setEffectId(String str) {
            this.effectId = str;
            return this;
        }

        public final Builder setTextures(CameraEffectTextures cameraEffectTextures) {
            this.textures = cameraEffectTextures;
            return this;
        }
    }

    ShareCameraEffectContent(Parcel parcel) {
        super(parcel);
        this.effectId = parcel.readString();
        this.arguments = new CameraEffectArguments.Builder().readFrom(parcel).build();
        this.textures = new CameraEffectTextures.Builder().readFrom(parcel).build();
    }

    private ShareCameraEffectContent(Builder builder) {
        super(builder);
        this.effectId = builder.effectId;
        this.arguments = builder.arguments;
        this.textures = builder.textures;
    }

    public CameraEffectArguments getArguments() {
        return this.arguments;
    }

    public String getEffectId() {
        return this.effectId;
    }

    public CameraEffectTextures getTextures() {
        return this.textures;
    }

    @Override // com.facebook.share.model.ShareContent, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        parcel.writeString(this.effectId);
        parcel.writeParcelable(this.arguments, 0);
        parcel.writeParcelable(this.textures, 0);
    }
}
