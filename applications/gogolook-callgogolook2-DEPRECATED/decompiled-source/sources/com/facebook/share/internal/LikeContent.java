package com.facebook.share.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.facebook.share.model.ShareModel;
import com.facebook.share.p047e.AbstractC2648b;
@Deprecated
/* loaded from: classes-dex2jar.jar:com/facebook/share/internal/LikeContent.class */
public class LikeContent implements ShareModel {
    @Deprecated
    public static final Parcelable.Creator<LikeContent> CREATOR = new C2670a();

    /* renamed from: a */
    public final String f3622a;

    /* renamed from: b */
    public final String f3623b;

    /* renamed from: com.facebook.share.internal.LikeContent$a */
    /* loaded from: classes-dex2jar.jar:com/facebook/share/internal/LikeContent$a.class */
    public static final class C2670a implements Parcelable.Creator<LikeContent> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public LikeContent createFromParcel(Parcel parcel) {
            return new LikeContent(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public LikeContent[] newArray(int i) {
            return new LikeContent[i];
        }
    }

    @Deprecated
    /* renamed from: com.facebook.share.internal.LikeContent$b */
    /* loaded from: classes-dex2jar.jar:com/facebook/share/internal/LikeContent$b.class */
    public static class C2671b implements AbstractC2648b<LikeContent, C2671b> {

        /* renamed from: a */
        public String f3624a;

        /* renamed from: b */
        public String f3625b;

        @Deprecated
        /* renamed from: a */
        public C2671b m33952a(String str) {
            this.f3624a = str;
            return this;
        }

        @Deprecated
        /* renamed from: a */
        public LikeContent m33954a() {
            return new LikeContent(this, null);
        }

        @Deprecated
        /* renamed from: b */
        public C2671b m33950b(String str) {
            this.f3625b = str;
            return this;
        }
    }

    @Deprecated
    public LikeContent(Parcel parcel) {
        this.f3622a = parcel.readString();
        this.f3623b = parcel.readString();
    }

    public LikeContent(C2671b bVar) {
        this.f3622a = bVar.f3624a;
        this.f3623b = bVar.f3625b;
    }

    public /* synthetic */ LikeContent(C2671b bVar, C2670a aVar) {
        this(bVar);
    }

    @Deprecated
    /* renamed from: a */
    public String m33956a() {
        return this.f3622a;
    }

    @Deprecated
    /* renamed from: b */
    public String m33955b() {
        return this.f3623b;
    }

    @Override // android.os.Parcelable
    @Deprecated
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    @Deprecated
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.f3622a);
        parcel.writeString(this.f3623b);
    }
}
