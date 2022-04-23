package com.facebook.share.model;

import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.facebook.internal.ae;
import java.util.Set;
/* loaded from: classes3-dex2jar.jar:com/facebook/share/model/CameraEffectTextures.class */
public class CameraEffectTextures implements ShareModel {
    public static final Parcelable.Creator<CameraEffectTextures> CREATOR = new Parcelable.Creator<CameraEffectTextures>() { // from class: com.facebook.share.model.CameraEffectTextures.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public final CameraEffectTextures createFromParcel(Parcel parcel) {
            return new CameraEffectTextures(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public final CameraEffectTextures[] newArray(int i) {
            return new CameraEffectTextures[i];
        }
    };
    private final Bundle textures;

    /* loaded from: classes3-dex2jar.jar:com/facebook/share/model/CameraEffectTextures$Builder.class */
    public static class Builder implements ShareModelBuilder<CameraEffectTextures, Builder> {
        private Bundle textures = new Bundle();

        private Builder putParcelableTexture(String str, Parcelable parcelable) {
            if (!ae.a(str) && parcelable != null) {
                this.textures.putParcelable(str, parcelable);
            }
            return this;
        }

        public CameraEffectTextures build() {
            return new CameraEffectTextures(this);
        }

        public Builder putTexture(String str, Bitmap bitmap) {
            return putParcelableTexture(str, bitmap);
        }

        public Builder putTexture(String str, Uri uri) {
            return putParcelableTexture(str, uri);
        }

        public Builder readFrom(Parcel parcel) {
            return readFrom((CameraEffectTextures) parcel.readParcelable(CameraEffectTextures.class.getClassLoader()));
        }

        public Builder readFrom(CameraEffectTextures cameraEffectTextures) {
            if (cameraEffectTextures != null) {
                this.textures.putAll(cameraEffectTextures.textures);
            }
            return this;
        }
    }

    CameraEffectTextures(Parcel parcel) {
        this.textures = parcel.readBundle(getClass().getClassLoader());
    }

    private CameraEffectTextures(Builder builder) {
        this.textures = builder.textures;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public Object get(String str) {
        return this.textures.get(str);
    }

    public Bitmap getTextureBitmap(String str) {
        Object obj = this.textures.get(str);
        if (obj instanceof Bitmap) {
            return (Bitmap) obj;
        }
        return null;
    }

    public Uri getTextureUri(String str) {
        Object obj = this.textures.get(str);
        if (obj instanceof Uri) {
            return (Uri) obj;
        }
        return null;
    }

    public Set<String> keySet() {
        return this.textures.keySet();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeBundle(this.textures);
    }
}
