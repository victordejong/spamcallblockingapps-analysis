package com.facebook.share.model;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes-dex2jar.jar:com/facebook/share/model/AppGroupCreationContent.class */
public final class AppGroupCreationContent implements ShareModel {
    public static final Parcelable.Creator<AppGroupCreationContent> CREATOR = new C2673a();

    /* renamed from: a */
    public final String f3633a;

    /* renamed from: b */
    public final String f3634b;

    /* renamed from: c */
    public EnumC2674b f3635c;

    /* renamed from: com.facebook.share.model.AppGroupCreationContent$a */
    /* loaded from: classes-dex2jar.jar:com/facebook/share/model/AppGroupCreationContent$a.class */
    public static final class C2673a implements Parcelable.Creator<AppGroupCreationContent> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public AppGroupCreationContent createFromParcel(Parcel parcel) {
            return new AppGroupCreationContent(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public AppGroupCreationContent[] newArray(int i) {
            return new AppGroupCreationContent[i];
        }
    }

    /* renamed from: com.facebook.share.model.AppGroupCreationContent$b */
    /* loaded from: classes-dex2jar.jar:com/facebook/share/model/AppGroupCreationContent$b.class */
    public enum EnumC2674b {
        Open,
        Closed
    }

    public AppGroupCreationContent(Parcel parcel) {
        this.f3633a = parcel.readString();
        this.f3634b = parcel.readString();
        this.f3635c = (EnumC2674b) parcel.readSerializable();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.f3633a);
        parcel.writeString(this.f3634b);
        parcel.writeSerializable(this.f3635c);
    }
}
