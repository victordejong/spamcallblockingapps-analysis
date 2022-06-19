package com.facebook.p105c.p107b;

import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
/* renamed from: com.facebook.c.b.j */
/* loaded from: classes-dex2jar.jar:com/facebook/c/b/j.class */
public final class C1972j extends AbstractC1961d {
    public static final Parcelable.Creator<C1972j> CREATOR = new Parcelable.Creator<C1972j>() { // from class: com.facebook.c.b.j.1
        /* renamed from: a */
        public C1972j createFromParcel(Parcel parcel) {
            return new C1972j(parcel);
        }

        /* renamed from: a */
        public C1972j[] newArray(int i) {
            return new C1972j[i];
        }
    };

    /* renamed from: a */
    private final Bitmap f5889a;

    /* renamed from: b */
    private final Uri f5890b;

    /* renamed from: c */
    private final boolean f5891c;

    /* renamed from: d */
    private final String f5892d;

    C1972j(Parcel parcel) {
        super(parcel);
        this.f5889a = (Bitmap) parcel.readParcelable(Bitmap.class.getClassLoader());
        this.f5890b = (Uri) parcel.readParcelable(Uri.class.getClassLoader());
        this.f5891c = parcel.readByte() != 0;
        this.f5892d = parcel.readString();
    }

    /* renamed from: a */
    public Uri m15731a() {
        return this.f5890b;
    }

    @Override // com.facebook.p105c.p107b.AbstractC1961d, android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // com.facebook.p105c.p107b.AbstractC1961d, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        parcel.writeParcelable(this.f5889a, 0);
        parcel.writeParcelable(this.f5890b, 0);
        int i2 = 0;
        if (this.f5891c) {
            i2 = 1;
        }
        parcel.writeByte((byte) i2);
        parcel.writeString(this.f5892d);
    }
}
