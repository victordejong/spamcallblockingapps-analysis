package com.facebook.share.model;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes-dex2jar.jar:com/facebook/share/model/ShareHashtag.class */
public class ShareHashtag implements Parcelable {
    public static final Parcelable.Creator<ShareHashtag> CREATOR = new C0366a();

    /* renamed from: a */
    public final String f2628a;

    /* renamed from: com.facebook.share.model.ShareHashtag$a */
    /* loaded from: classes-dex2jar.jar:com/facebook/share/model/ShareHashtag$a.class */
    public static final class C0366a implements Parcelable.Creator<ShareHashtag> {
        /* renamed from: a */
        public ShareHashtag createFromParcel(Parcel parcel) {
            return new ShareHashtag(parcel);
        }

        /* renamed from: b */
        public ShareHashtag[] newArray(int i) {
            return new ShareHashtag[i];
        }
    }

    /* renamed from: com.facebook.share.model.ShareHashtag$b */
    /* loaded from: classes-dex2jar.jar:com/facebook/share/model/ShareHashtag$b.class */
    public static class C0367b {

        /* renamed from: a */
        public String f2629a;

        /* renamed from: b */
        public ShareHashtag m4939b() {
            return new ShareHashtag(this, null);
        }

        /* renamed from: c */
        public C0367b m4938c(Parcel parcel) {
            m4937d((ShareHashtag) parcel.readParcelable(ShareHashtag.class.getClassLoader()));
            return this;
        }

        /* renamed from: d */
        public C0367b m4937d(ShareHashtag shareHashtag) {
            if (shareHashtag == null) {
                return this;
            }
            m4936e(shareHashtag.m4943a());
            return this;
        }

        /* renamed from: e */
        public C0367b m4936e(String str) {
            this.f2629a = str;
            return this;
        }
    }

    public ShareHashtag(Parcel parcel) {
        this.f2628a = parcel.readString();
    }

    public ShareHashtag(C0367b c0367b) {
        this.f2628a = c0367b.f2629a;
    }

    public /* synthetic */ ShareHashtag(C0367b c0367b, C0366a c0366a) {
        this(c0367b);
    }

    /* renamed from: a */
    public String m4943a() {
        return this.f2628a;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.f2628a);
    }
}
