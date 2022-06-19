package com.facebook.p105c.p107b;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
/* renamed from: com.facebook.c.b.c */
/* loaded from: classes-dex2jar.jar:com/facebook/c/b/c.class */
public final class C1959c extends AbstractC1955a<C1959c, Object> {
    public static final Parcelable.Creator<C1959c> CREATOR = new Parcelable.Creator<C1959c>() { // from class: com.facebook.c.b.c.1
        /* renamed from: a */
        public C1959c createFromParcel(Parcel parcel) {
            return new C1959c(parcel);
        }

        /* renamed from: a */
        public C1959c[] newArray(int i) {
            return new C1959c[i];
        }
    };
    @Deprecated

    /* renamed from: a */
    private final String f5880a;
    @Deprecated

    /* renamed from: b */
    private final String f5881b;
    @Deprecated

    /* renamed from: c */
    private final Uri f5882c;

    /* renamed from: d */
    private final String f5883d;

    C1959c(Parcel parcel) {
        super(parcel);
        this.f5880a = parcel.readString();
        this.f5881b = parcel.readString();
        this.f5882c = (Uri) parcel.readParcelable(Uri.class.getClassLoader());
        this.f5883d = parcel.readString();
    }

    /* renamed from: c */
    public String m15753c() {
        return this.f5883d;
    }

    @Override // com.facebook.p105c.p107b.AbstractC1955a, android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // com.facebook.p105c.p107b.AbstractC1955a, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        parcel.writeString(this.f5880a);
        parcel.writeString(this.f5881b);
        parcel.writeParcelable(this.f5882c, 0);
        parcel.writeString(this.f5883d);
    }
}
