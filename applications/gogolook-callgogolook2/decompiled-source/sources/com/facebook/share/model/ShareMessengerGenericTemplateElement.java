package com.facebook.share.model;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes-dex2jar.jar:com/facebook/share/model/ShareMessengerGenericTemplateElement.class */
public final class ShareMessengerGenericTemplateElement implements ShareModel {
    public static final Parcelable.Creator<ShareMessengerGenericTemplateElement> CREATOR = new C2693a();

    /* renamed from: a */
    public final String f3697a;

    /* renamed from: b */
    public final String f3698b;

    /* renamed from: c */
    public final Uri f3699c;

    /* renamed from: d */
    public final ShareMessengerActionButton f3700d;

    /* renamed from: e */
    public final ShareMessengerActionButton f3701e;

    /* renamed from: com.facebook.share.model.ShareMessengerGenericTemplateElement$a */
    /* loaded from: classes-dex2jar.jar:com/facebook/share/model/ShareMessengerGenericTemplateElement$a.class */
    public static final class C2693a implements Parcelable.Creator<ShareMessengerGenericTemplateElement> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ShareMessengerGenericTemplateElement createFromParcel(Parcel parcel) {
            return new ShareMessengerGenericTemplateElement(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ShareMessengerGenericTemplateElement[] newArray(int i) {
            return new ShareMessengerGenericTemplateElement[i];
        }
    }

    public ShareMessengerGenericTemplateElement(Parcel parcel) {
        this.f3697a = parcel.readString();
        this.f3698b = parcel.readString();
        this.f3699c = (Uri) parcel.readParcelable(Uri.class.getClassLoader());
        this.f3700d = (ShareMessengerActionButton) parcel.readParcelable(ShareMessengerActionButton.class.getClassLoader());
        this.f3701e = (ShareMessengerActionButton) parcel.readParcelable(ShareMessengerActionButton.class.getClassLoader());
    }

    /* renamed from: a */
    public ShareMessengerActionButton m33884a() {
        return this.f3701e;
    }

    /* renamed from: b */
    public ShareMessengerActionButton m33883b() {
        return this.f3700d;
    }

    /* renamed from: c */
    public Uri m33882c() {
        return this.f3699c;
    }

    /* renamed from: d */
    public String m33881d() {
        return this.f3698b;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    /* renamed from: e */
    public String m33880e() {
        return this.f3697a;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.f3697a);
        parcel.writeString(this.f3698b);
        parcel.writeParcelable(this.f3699c, i);
        parcel.writeParcelable(this.f3700d, i);
        parcel.writeParcelable(this.f3701e, i);
    }
}
