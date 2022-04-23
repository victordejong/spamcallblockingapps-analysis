package com.facebook.share.model;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import com.facebook.share.model.ShareMedia;
/* loaded from: classes-dex2jar.jar:com/facebook/share/model/ShareVideo.class */
public final class ShareVideo extends ShareMedia {
    public static final Parcelable.Creator<ShareVideo> CREATOR = new C2709a();

    /* renamed from: b */
    public final Uri f3738b;

    /* renamed from: com.facebook.share.model.ShareVideo$a */
    /* loaded from: classes-dex2jar.jar:com/facebook/share/model/ShareVideo$a.class */
    public static final class C2709a implements Parcelable.Creator<ShareVideo> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ShareVideo createFromParcel(Parcel parcel) {
            return new ShareVideo(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ShareVideo[] newArray(int i) {
            return new ShareVideo[i];
        }
    }

    /* renamed from: com.facebook.share.model.ShareVideo$b */
    /* loaded from: classes-dex2jar.jar:com/facebook/share/model/ShareVideo$b.class */
    public static final class C2710b extends ShareMedia.AbstractC2688a<ShareVideo, C2710b> {

        /* renamed from: b */
        public Uri f3739b;

        /* renamed from: a */
        public C2710b m33820a(@Nullable Uri uri) {
            this.f3739b = uri;
            return this;
        }

        /* renamed from: a */
        public C2710b m33818a(ShareVideo shareVideo) {
            if (shareVideo == null) {
                return this;
            }
            super.m33890a((C2710b) shareVideo);
            C2710b bVar = this;
            bVar.m33820a(shareVideo.m33822c());
            return bVar;
        }

        /* renamed from: a */
        public ShareVideo m33821a() {
            return new ShareVideo(this, null);
        }

        /* renamed from: b */
        public C2710b m33817b(Parcel parcel) {
            return m33818a((ShareVideo) parcel.readParcelable(ShareVideo.class.getClassLoader()));
        }
    }

    public ShareVideo(Parcel parcel) {
        super(parcel);
        this.f3738b = (Uri) parcel.readParcelable(Uri.class.getClassLoader());
    }

    public ShareVideo(C2710b bVar) {
        super(bVar);
        this.f3738b = bVar.f3739b;
    }

    public /* synthetic */ ShareVideo(C2710b bVar, C2709a aVar) {
        this(bVar);
    }

    @Override // com.facebook.share.model.ShareMedia
    /* renamed from: a */
    public ShareMedia.EnumC2689b mo33823a() {
        return ShareMedia.EnumC2689b.VIDEO;
    }

    @Nullable
    /* renamed from: c */
    public Uri m33822c() {
        return this.f3738b;
    }

    @Override // com.facebook.share.model.ShareMedia, android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // com.facebook.share.model.ShareMedia, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        parcel.writeParcelable(this.f3738b, 0);
    }
}
