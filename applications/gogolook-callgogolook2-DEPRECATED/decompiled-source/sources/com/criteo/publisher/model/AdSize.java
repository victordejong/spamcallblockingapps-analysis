package com.criteo.publisher.model;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes-dex2jar.jar:com/criteo/publisher/model/AdSize.class */
public class AdSize implements Parcelable {
    public static final Parcelable.Creator<AdSize> CREATOR = new C2021a();

    /* renamed from: a */
    public int f2189a;

    /* renamed from: b */
    public int f2190b;

    /* renamed from: com.criteo.publisher.model.AdSize$a */
    /* loaded from: classes-dex2jar.jar:com/criteo/publisher/model/AdSize$a.class */
    public static final class C2021a implements Parcelable.Creator<AdSize> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public AdSize createFromParcel(Parcel parcel) {
            return new AdSize(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public AdSize[] newArray(int i) {
            return new AdSize[i];
        }
    }

    public AdSize() {
    }

    public AdSize(int i, int i2) {
        this.f2190b = i2;
        this.f2189a = i;
    }

    public AdSize(Parcel parcel) {
        this.f2189a = parcel.readInt();
        this.f2190b = parcel.readInt();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (obj == null || AdSize.class != obj.getClass()) {
            return false;
        }
        AdSize adSize = (AdSize) obj;
        if (!(this.f2190b == adSize.f2190b && this.f2189a == adSize.f2189a)) {
            z = false;
        }
        return z;
    }

    public String getFormattedSize() {
        return this.f2189a + "x" + this.f2190b;
    }

    public int getHeight() {
        return this.f2190b;
    }

    public int getWidth() {
        return this.f2189a;
    }

    public int hashCode() {
        return (this.f2189a * 31) + this.f2190b;
    }

    public String toString() {
        return "AdSize{width=" + this.f2189a + ", height=" + this.f2190b + '}';
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.f2189a);
        parcel.writeInt(this.f2190b);
    }
}
