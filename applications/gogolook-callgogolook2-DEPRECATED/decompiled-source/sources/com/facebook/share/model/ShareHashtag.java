package com.facebook.share.model;

import android.os.Parcel;
import android.os.Parcelable;
import com.facebook.share.p047e.AbstractC2648b;
/* loaded from: classes-dex2jar.jar:com/facebook/share/model/ShareHashtag.class */
public class ShareHashtag implements ShareModel {
    public static final Parcelable.Creator<ShareHashtag> CREATOR = new C2685a();

    /* renamed from: a */
    public final String f3678a;

    /* renamed from: com.facebook.share.model.ShareHashtag$a */
    /* loaded from: classes-dex2jar.jar:com/facebook/share/model/ShareHashtag$a.class */
    public static final class C2685a implements Parcelable.Creator<ShareHashtag> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ShareHashtag createFromParcel(Parcel parcel) {
            return new ShareHashtag(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ShareHashtag[] newArray(int i) {
            return new ShareHashtag[i];
        }
    }

    /* renamed from: com.facebook.share.model.ShareHashtag$b */
    /* loaded from: classes-dex2jar.jar:com/facebook/share/model/ShareHashtag$b.class */
    public static class C2686b implements AbstractC2648b<ShareHashtag, C2686b> {

        /* renamed from: a */
        public String f3679a;

        /* renamed from: a */
        public C2686b m33902a(Parcel parcel) {
            m33900a((ShareHashtag) parcel.readParcelable(ShareHashtag.class.getClassLoader()));
            return this;
        }

        /* renamed from: a */
        public C2686b m33900a(ShareHashtag shareHashtag) {
            if (shareHashtag == null) {
                return this;
            }
            m33899a(shareHashtag.m33904a());
            return this;
        }

        /* renamed from: a */
        public C2686b m33899a(String str) {
            this.f3679a = str;
            return this;
        }

        /* renamed from: a */
        public ShareHashtag m33903a() {
            return new ShareHashtag(this, null);
        }
    }

    public ShareHashtag(Parcel parcel) {
        this.f3678a = parcel.readString();
    }

    public ShareHashtag(C2686b bVar) {
        this.f3678a = bVar.f3679a;
    }

    public /* synthetic */ ShareHashtag(C2686b bVar, C2685a aVar) {
        this(bVar);
    }

    /* renamed from: a */
    public String m33904a() {
        return this.f3678a;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.f3678a);
    }
}
