package com.facebook.share.internal;

import android.os.Parcel;
import android.os.Parcelable;
@Deprecated
/* loaded from: classes-dex2jar.jar:com/facebook/share/internal/LikeContent.class */
public class LikeContent implements Parcelable {
    @Deprecated
    public static final Parcelable.Creator<LikeContent> CREATOR = new C0359a();

    /* renamed from: a */
    public final String f2608a;

    /* renamed from: b */
    public final String f2609b;

    /* renamed from: com.facebook.share.internal.LikeContent$a */
    /* loaded from: classes-dex2jar.jar:com/facebook/share/internal/LikeContent$a.class */
    public static final class C0359a implements Parcelable.Creator<LikeContent> {
        /* renamed from: a */
        public LikeContent createFromParcel(Parcel parcel) {
            return new LikeContent(parcel);
        }

        /* renamed from: b */
        public LikeContent[] newArray(int i) {
            return new LikeContent[i];
        }
    }

    @Deprecated
    /* renamed from: com.facebook.share.internal.LikeContent$b */
    /* loaded from: classes-dex2jar.jar:com/facebook/share/internal/LikeContent$b.class */
    public static class C0360b {

        /* renamed from: a */
        public String f2610a;

        /* renamed from: b */
        public String f2611b;

        @Deprecated
        /* renamed from: c */
        public LikeContent m4989c() {
            return new LikeContent(this, null);
        }

        @Deprecated
        /* renamed from: d */
        public C0360b m4988d(String str) {
            this.f2610a = str;
            return this;
        }

        @Deprecated
        /* renamed from: e */
        public C0360b m4987e(String str) {
            this.f2611b = str;
            return this;
        }
    }

    @Deprecated
    public LikeContent(Parcel parcel) {
        this.f2608a = parcel.readString();
        this.f2609b = parcel.readString();
    }

    public LikeContent(C0360b c0360b) {
        this.f2608a = c0360b.f2610a;
        this.f2609b = c0360b.f2611b;
    }

    public /* synthetic */ LikeContent(C0360b c0360b, C0359a c0359a) {
        this(c0360b);
    }

    @Deprecated
    /* renamed from: a */
    public String m4995a() {
        return this.f2608a;
    }

    @Deprecated
    /* renamed from: b */
    public String m4994b() {
        return this.f2609b;
    }

    @Override // android.os.Parcelable
    @Deprecated
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    @Deprecated
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.f2608a);
        parcel.writeString(this.f2609b);
    }
}
