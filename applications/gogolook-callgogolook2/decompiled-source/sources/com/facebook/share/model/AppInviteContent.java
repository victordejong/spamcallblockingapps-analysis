package com.facebook.share.model;

import android.os.Parcel;
import android.os.Parcelable;
import com.facebook.share.p047e.EnumC2647a;
@Deprecated
/* loaded from: classes-dex2jar.jar:com/facebook/share/model/AppInviteContent.class */
public final class AppInviteContent implements ShareModel {
    @Deprecated
    public static final Parcelable.Creator<AppInviteContent> CREATOR = new C2675a();

    /* renamed from: a */
    public final String f3639a;

    /* renamed from: b */
    public final String f3640b;

    /* renamed from: c */
    public final String f3641c;

    /* renamed from: d */
    public final String f3642d;

    /* renamed from: e */
    public final EnumC2647a f3643e;

    /* renamed from: com.facebook.share.model.AppInviteContent$a */
    /* loaded from: classes-dex2jar.jar:com/facebook/share/model/AppInviteContent$a.class */
    public static final class C2675a implements Parcelable.Creator<AppInviteContent> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public AppInviteContent createFromParcel(Parcel parcel) {
            return new AppInviteContent(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public AppInviteContent[] newArray(int i) {
            return new AppInviteContent[i];
        }
    }

    @Deprecated
    public AppInviteContent(Parcel parcel) {
        this.f3639a = parcel.readString();
        this.f3640b = parcel.readString();
        this.f3642d = parcel.readString();
        this.f3641c = parcel.readString();
        String readString = parcel.readString();
        if (readString.length() > 0) {
            this.f3643e = EnumC2647a.valueOf(readString);
        } else {
            this.f3643e = EnumC2647a.FACEBOOK;
        }
    }

    @Override // android.os.Parcelable
    @Deprecated
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    @Deprecated
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.f3639a);
        parcel.writeString(this.f3640b);
        parcel.writeString(this.f3642d);
        parcel.writeString(this.f3641c);
        parcel.writeString(this.f3643e.toString());
    }
}
