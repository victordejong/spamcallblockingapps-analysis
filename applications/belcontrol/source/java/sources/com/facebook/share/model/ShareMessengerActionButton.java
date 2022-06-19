package com.facebook.share.model;

import android.os.Parcel;
import android.os.Parcelable;
@Deprecated
/* loaded from: classes-dex2jar.jar:com/facebook/share/model/ShareMessengerActionButton.class */
public abstract class ShareMessengerActionButton implements Parcelable {

    /* renamed from: a */
    public final String f2635a;

    public ShareMessengerActionButton(Parcel parcel) {
        this.f2635a = parcel.readString();
    }

    /* renamed from: a */
    public String m4925a() {
        return this.f2635a;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.f2635a);
    }
}
