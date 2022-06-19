package com.facebook.share.model;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import java.util.Set;
/* loaded from: classes3-dex2jar.jar:com/facebook/share/model/CameraEffectArguments.class */
public class CameraEffectArguments implements ShareModel {
    public static final Parcelable.Creator<CameraEffectArguments> CREATOR = new Parcelable.Creator<CameraEffectArguments>() { // from class: com.facebook.share.model.CameraEffectArguments.1
        @Override // android.os.Parcelable.Creator
        public final CameraEffectArguments createFromParcel(Parcel parcel) {
            return new CameraEffectArguments(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public final CameraEffectArguments[] newArray(int i) {
            return new CameraEffectArguments[i];
        }
    };
    private final Bundle params;

    /* loaded from: classes3-dex2jar.jar:com/facebook/share/model/CameraEffectArguments$Builder.class */
    public static class Builder implements ShareModelBuilder<CameraEffectArguments, Builder> {
        private Bundle params = new Bundle();

        public CameraEffectArguments build() {
            return new CameraEffectArguments(this);
        }

        public Builder putArgument(String str, String str2) {
            this.params.putString(str, str2);
            return this;
        }

        public Builder putArgument(String str, String[] strArr) {
            this.params.putStringArray(str, strArr);
            return this;
        }

        public Builder readFrom(Parcel parcel) {
            return readFrom((CameraEffectArguments) parcel.readParcelable(CameraEffectArguments.class.getClassLoader()));
        }

        public Builder readFrom(CameraEffectArguments cameraEffectArguments) {
            if (cameraEffectArguments != null) {
                this.params.putAll(cameraEffectArguments.params);
            }
            return this;
        }
    }

    CameraEffectArguments(Parcel parcel) {
        this.params = parcel.readBundle(getClass().getClassLoader());
    }

    private CameraEffectArguments(Builder builder) {
        this.params = builder.params;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public Object get(String str) {
        return this.params.get(str);
    }

    public String getString(String str) {
        return this.params.getString(str);
    }

    public String[] getStringArray(String str) {
        return this.params.getStringArray(str);
    }

    public Set<String> keySet() {
        return this.params.keySet();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeBundle(this.params);
    }
}
