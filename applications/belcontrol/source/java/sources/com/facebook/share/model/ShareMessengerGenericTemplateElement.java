package com.facebook.share.model;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
@Deprecated
/* loaded from: classes-dex2jar.jar:com/facebook/share/model/ShareMessengerGenericTemplateElement.class */
public final class ShareMessengerGenericTemplateElement implements Parcelable {
    public static final Parcelable.Creator<ShareMessengerGenericTemplateElement> CREATOR = new C0370a();

    /* renamed from: a */
    public final String f2639a;

    /* renamed from: b */
    public final String f2640b;

    /* renamed from: c */
    public final Uri f2641c;

    /* renamed from: d */
    public final ShareMessengerActionButton f2642d;

    /* renamed from: f */
    public final ShareMessengerActionButton f2643f;

    /* renamed from: com.facebook.share.model.ShareMessengerGenericTemplateElement$a */
    /* loaded from: classes-dex2jar.jar:com/facebook/share/model/ShareMessengerGenericTemplateElement$a.class */
    public static final class C0370a implements Parcelable.Creator<ShareMessengerGenericTemplateElement> {
        /* renamed from: a */
        public ShareMessengerGenericTemplateElement createFromParcel(Parcel parcel) {
            return new ShareMessengerGenericTemplateElement(parcel);
        }

        /* renamed from: b */
        public ShareMessengerGenericTemplateElement[] newArray(int i) {
            return new ShareMessengerGenericTemplateElement[i];
        }
    }

    public ShareMessengerGenericTemplateElement(Parcel parcel) {
        this.f2639a = parcel.readString();
        this.f2640b = parcel.readString();
        this.f2641c = (Uri) parcel.readParcelable(Uri.class.getClassLoader());
        this.f2642d = (ShareMessengerActionButton) parcel.readParcelable(ShareMessengerActionButton.class.getClassLoader());
        this.f2643f = (ShareMessengerActionButton) parcel.readParcelable(ShareMessengerActionButton.class.getClassLoader());
    }

    /* renamed from: a */
    public ShareMessengerActionButton m4922a() {
        return this.f2643f;
    }

    /* renamed from: b */
    public ShareMessengerActionButton m4921b() {
        return this.f2642d;
    }

    /* renamed from: c */
    public Uri m4920c() {
        return this.f2641c;
    }

    /* renamed from: d */
    public String m4919d() {
        return this.f2640b;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    /* renamed from: e */
    public String m4918e() {
        return this.f2639a;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.f2639a);
        parcel.writeString(this.f2640b);
        parcel.writeParcelable(this.f2641c, i);
        parcel.writeParcelable(this.f2642d, i);
        parcel.writeParcelable(this.f2643f, i);
    }
}
