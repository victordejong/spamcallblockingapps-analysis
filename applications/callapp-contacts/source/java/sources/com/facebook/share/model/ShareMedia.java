package com.facebook.share.model;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes3-dex2jar.jar:com/facebook/share/model/ShareMedia.class */
public abstract class ShareMedia implements ShareModel {
    private final Bundle params;

    /* loaded from: classes3-dex2jar.jar:com/facebook/share/model/ShareMedia$Builder.class */
    public static abstract class Builder<M extends ShareMedia, B extends Builder> implements ShareModelBuilder<M, B> {
        private Bundle params = new Bundle();

        public static List<ShareMedia> readListFrom(Parcel parcel) {
            Parcelable[] readParcelableArray = parcel.readParcelableArray(ShareMedia.class.getClassLoader());
            ArrayList arrayList = new ArrayList(readParcelableArray.length);
            for (Parcelable parcelable : readParcelableArray) {
                arrayList.add((ShareMedia) parcelable);
            }
            return arrayList;
        }

        static void writeListTo(Parcel parcel, int i, List<ShareMedia> list) {
            parcel.writeParcelableArray((ShareMedia[]) list.toArray(), i);
        }

        public B readFrom(M m) {
            return m == null ? this : setParameters(m.getParameters());
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.facebook.share.model.ShareModelBuilder
        public /* bridge */ /* synthetic */ ShareModelBuilder readFrom(ShareModel shareModel) {
            return readFrom((Builder<M, B>) ((ShareMedia) shareModel));
        }

        @Deprecated
        public B setParameter(String str, String str2) {
            this.params.putString(str, str2);
            return this;
        }

        @Deprecated
        public B setParameters(Bundle bundle) {
            this.params.putAll(bundle);
            return this;
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/facebook/share/model/ShareMedia$Type.class */
    public enum Type {
        PHOTO,
        VIDEO
    }

    public ShareMedia(Parcel parcel) {
        this.params = parcel.readBundle();
    }

    public ShareMedia(Builder builder) {
        this.params = new Bundle(builder.params);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public abstract Type getMediaType();

    @Deprecated
    public Bundle getParameters() {
        return new Bundle(this.params);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeBundle(this.params);
    }
}
