package com.facebook.share.model;

import android.os.Parcel;
/* loaded from: classes-dex2jar.jar:com/facebook/share/model/ShareMessengerActionButton.class */
public abstract class ShareMessengerActionButton implements ShareModel {

    /* renamed from: a */
    public final String f3690a;

    public ShareMessengerActionButton(Parcel parcel) {
        this.f3690a = parcel.readString();
    }

    /* renamed from: a */
    public String m33888a() {
        return this.f3690a;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.f3690a);
    }
}
