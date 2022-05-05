package com.facebook.share.model;

import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import com.facebook.share.model.ShareMedia;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/facebook/share/model/SharePhoto.class */
public final class SharePhoto extends ShareMedia {
    public static final Parcelable.Creator<SharePhoto> CREATOR = new C2704a();

    /* renamed from: b */
    public final Bitmap f3724b;

    /* renamed from: c */
    public final Uri f3725c;

    /* renamed from: d */
    public final boolean f3726d;

    /* renamed from: e */
    public final String f3727e;

    /* renamed from: com.facebook.share.model.SharePhoto$a */
    /* loaded from: classes-dex2jar.jar:com/facebook/share/model/SharePhoto$a.class */
    public static final class C2704a implements Parcelable.Creator<SharePhoto> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public SharePhoto createFromParcel(Parcel parcel) {
            return new SharePhoto(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public SharePhoto[] newArray(int i) {
            return new SharePhoto[i];
        }
    }

    /* renamed from: com.facebook.share.model.SharePhoto$b */
    /* loaded from: classes-dex2jar.jar:com/facebook/share/model/SharePhoto$b.class */
    public static final class C2705b extends ShareMedia.AbstractC2688a<SharePhoto, C2705b> {

        /* renamed from: b */
        public Bitmap f3728b;

        /* renamed from: c */
        public Uri f3729c;

        /* renamed from: d */
        public boolean f3730d;

        /* renamed from: e */
        public String f3731e;

        /* renamed from: a */
        public static void m33847a(Parcel parcel, int i, List<SharePhoto> list) {
            ShareMedia[] shareMediaArr = new ShareMedia[list.size()];
            for (int i2 = 0; i2 < list.size(); i2++) {
                shareMediaArr[i2] = list.get(i2);
            }
            parcel.writeParcelableArray(shareMediaArr, i);
        }

        /* renamed from: c */
        public static List<SharePhoto> m33838c(Parcel parcel) {
            List<ShareMedia> a = ShareMedia.AbstractC2688a.m33892a(parcel);
            ArrayList arrayList = new ArrayList();
            for (ShareMedia shareMedia : a) {
                if (shareMedia instanceof SharePhoto) {
                    arrayList.add((SharePhoto) shareMedia);
                }
            }
            return arrayList;
        }

        /* renamed from: a */
        public C2705b m33849a(@Nullable Bitmap bitmap) {
            this.f3728b = bitmap;
            return this;
        }

        /* renamed from: a */
        public C2705b m33848a(@Nullable Uri uri) {
            this.f3729c = uri;
            return this;
        }

        /* renamed from: a */
        public C2705b m33845a(SharePhoto sharePhoto) {
            if (sharePhoto == null) {
                return this;
            }
            super.m33890a((C2705b) sharePhoto);
            C2705b bVar = this;
            bVar.m33849a(sharePhoto.m33854c());
            bVar.m33848a(sharePhoto.m33852e());
            bVar.m33843a(sharePhoto.m33851f());
            bVar.m33844a(sharePhoto.m33853d());
            return bVar;
        }

        /* renamed from: a */
        public C2705b m33844a(@Nullable String str) {
            this.f3731e = str;
            return this;
        }

        /* renamed from: a */
        public C2705b m33843a(boolean z) {
            this.f3730d = z;
            return this;
        }

        /* renamed from: a */
        public SharePhoto m33850a() {
            return new SharePhoto(this, null);
        }

        /* renamed from: b */
        public Bitmap m33842b() {
            return this.f3728b;
        }

        /* renamed from: b */
        public C2705b m33841b(Parcel parcel) {
            return m33845a((SharePhoto) parcel.readParcelable(SharePhoto.class.getClassLoader()));
        }

        /* renamed from: c */
        public Uri m33839c() {
            return this.f3729c;
        }
    }

    public SharePhoto(Parcel parcel) {
        super(parcel);
        this.f3724b = (Bitmap) parcel.readParcelable(Bitmap.class.getClassLoader());
        this.f3725c = (Uri) parcel.readParcelable(Uri.class.getClassLoader());
        this.f3726d = parcel.readByte() != 0;
        this.f3727e = parcel.readString();
    }

    public SharePhoto(C2705b bVar) {
        super(bVar);
        this.f3724b = bVar.f3728b;
        this.f3725c = bVar.f3729c;
        this.f3726d = bVar.f3730d;
        this.f3727e = bVar.f3731e;
    }

    public /* synthetic */ SharePhoto(C2705b bVar, C2704a aVar) {
        this(bVar);
    }

    @Override // com.facebook.share.model.ShareMedia
    /* renamed from: a */
    public ShareMedia.EnumC2689b mo33823a() {
        return ShareMedia.EnumC2689b.PHOTO;
    }

    @Nullable
    /* renamed from: c */
    public Bitmap m33854c() {
        return this.f3724b;
    }

    /* renamed from: d */
    public String m33853d() {
        return this.f3727e;
    }

    @Override // com.facebook.share.model.ShareMedia, android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Nullable
    /* renamed from: e */
    public Uri m33852e() {
        return this.f3725c;
    }

    /* renamed from: f */
    public boolean m33851f() {
        return this.f3726d;
    }

    @Override // com.facebook.share.model.ShareMedia, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        parcel.writeParcelable(this.f3724b, 0);
        parcel.writeParcelable(this.f3725c, 0);
        parcel.writeByte(this.f3726d ? (byte) 1 : (byte) 0);
        parcel.writeString(this.f3727e);
    }
}
