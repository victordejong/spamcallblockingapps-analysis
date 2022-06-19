package com.google.android.exoplayer2.metadata.icy;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.metadata.Metadata;
import java.util.Arrays;
import java.util.Objects;
import p193e.p1577m.p1578a.p1596c.p1613i1.C24461a;
/* loaded from: classes2-dex2jar.jar:com/google/android/exoplayer2/metadata/icy/IcyInfo.class */
public final class IcyInfo implements Metadata.Entry {
    public static final Parcelable.Creator<IcyInfo> CREATOR = new C1976a();

    /* renamed from: a */
    public final byte[] f4913a;

    /* renamed from: b */
    public final String f4914b;

    /* renamed from: c */
    public final String f4915c;

    /* renamed from: com.google.android.exoplayer2.metadata.icy.IcyInfo$a */
    /* loaded from: classes2-dex2jar.jar:com/google/android/exoplayer2/metadata/icy/IcyInfo$a.class */
    public static final class C1976a implements Parcelable.Creator<IcyInfo> {
        @Override // android.os.Parcelable.Creator
        public IcyInfo createFromParcel(Parcel parcel) {
            return new IcyInfo(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public IcyInfo[] newArray(int i) {
            return new IcyInfo[i];
        }
    }

    public IcyInfo(Parcel parcel) {
        byte[] createByteArray = parcel.createByteArray();
        Objects.requireNonNull(createByteArray);
        this.f4913a = createByteArray;
        this.f4914b = parcel.readString();
        this.f4915c = parcel.readString();
    }

    public IcyInfo(byte[] bArr, String str, String str2) {
        this.f4913a = bArr;
        this.f4914b = str;
        this.f4915c = str2;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && IcyInfo.class == obj.getClass()) {
            return Arrays.equals(this.f4913a, ((IcyInfo) obj).f4913a);
        }
        return false;
    }

    public int hashCode() {
        return Arrays.hashCode(this.f4913a);
    }

    @Override // com.google.android.exoplayer2.metadata.Metadata.Entry
    /* renamed from: j */
    public /* synthetic */ byte[] mo39238j() {
        return C24461a.m5075a(this);
    }

    @Override // com.google.android.exoplayer2.metadata.Metadata.Entry
    /* renamed from: q */
    public /* synthetic */ Format mo39237q() {
        return C24461a.m5074b(this);
    }

    public String toString() {
        return String.format("ICY: title=\"%s\", url=\"%s\", rawMetadata.length=\"%s\"", this.f4914b, this.f4915c, Integer.valueOf(this.f4913a.length));
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeByteArray(this.f4913a);
        parcel.writeString(this.f4914b);
        parcel.writeString(this.f4915c);
    }
}
