package com.google.android.exoplayer2.metadata.icy;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.exoplayer2.metadata.Metadata;
import p131c.p161d.p170b.p188c.p203g1.C2877e;
import p131c.p161d.p170b.p188c.p203g1.C2885h0;
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/metadata/icy/IcyInfo.class */
public final class IcyInfo implements Metadata.Entry {
    public static final Parcelable.Creator<IcyInfo> CREATOR = new C7145a();

    /* renamed from: a */
    public final String f22157a;

    /* renamed from: b */
    public final String f22158b;

    /* renamed from: c */
    public final String f22159c;

    /* renamed from: com.google.android.exoplayer2.metadata.icy.IcyInfo$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/metadata/icy/IcyInfo$a.class */
    public static final class C7145a implements Parcelable.Creator<IcyInfo> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public IcyInfo createFromParcel(Parcel parcel) {
            return new IcyInfo(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public IcyInfo[] newArray(int i) {
            return new IcyInfo[i];
        }
    }

    public IcyInfo(Parcel parcel) {
        String readString = parcel.readString();
        C2877e.m28737a(readString);
        this.f22157a = readString;
        this.f22158b = parcel.readString();
        this.f22159c = parcel.readString();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || IcyInfo.class != obj.getClass()) {
            return false;
        }
        return C2885h0.m28669a((Object) this.f22157a, (Object) ((IcyInfo) obj).f22157a);
    }

    public int hashCode() {
        return this.f22157a.hashCode();
    }

    public String toString() {
        return String.format("ICY: title=\"%s\", url=\"%s\", rawMetadata=\"%s\"", this.f22158b, this.f22159c, this.f22157a);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.f22157a);
        parcel.writeString(this.f22158b);
        parcel.writeString(this.f22159c);
    }
}
