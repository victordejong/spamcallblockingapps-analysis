package com.facebook.share.model;

import android.os.Parcel;
@Deprecated
/* loaded from: classes-dex2jar.jar:com/facebook/share/model/ShareMessengerActionButton.class */
public abstract class ShareMessengerActionButton implements ShareModel {
    private final String title;

    /* loaded from: classes-dex2jar.jar:com/facebook/share/model/ShareMessengerActionButton$Builder.class */
    public static abstract class Builder<M extends ShareMessengerActionButton, B extends Builder> implements ShareModelBuilder<M, B> {
        private String title;

        public B readFrom(M m) {
            return m == null ? this : setTitle(m.getTitle());
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.facebook.share.model.ShareModelBuilder
        public /* bridge */ /* synthetic */ ShareModelBuilder readFrom(ShareModel shareModel) {
            return readFrom((Builder<M, B>) ((ShareMessengerActionButton) shareModel));
        }

        public B setTitle(String str) {
            this.title = str;
            return this;
        }
    }

    public ShareMessengerActionButton(Parcel parcel) {
        this.title = parcel.readString();
    }

    public ShareMessengerActionButton(Builder builder) {
        this.title = builder.title;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String getTitle() {
        return this.title;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.title);
    }
}
