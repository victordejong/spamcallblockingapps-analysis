package com.google.android.exoplayer2.extractor.mp4;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.exoplayer2.metadata.Metadata;
import java.util.Arrays;
import p131c.p161d.p170b.p188c.p203g1.C2885h0;
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/extractor/mp4/MdtaMetadataEntry.class */
public final class MdtaMetadataEntry implements Metadata.Entry {
    public static final Parcelable.Creator<MdtaMetadataEntry> CREATOR = new C7133a();

    /* renamed from: a */
    public final String f22052a;

    /* renamed from: b */
    public final byte[] f22053b;

    /* renamed from: c */
    public final int f22054c;

    /* renamed from: d */
    public final int f22055d;

    /* renamed from: com.google.android.exoplayer2.extractor.mp4.MdtaMetadataEntry$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/extractor/mp4/MdtaMetadataEntry$a.class */
    public static final class C7133a implements Parcelable.Creator<MdtaMetadataEntry> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public MdtaMetadataEntry createFromParcel(Parcel parcel) {
            return new MdtaMetadataEntry(parcel, null);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public MdtaMetadataEntry[] newArray(int i) {
            return new MdtaMetadataEntry[i];
        }
    }

    public MdtaMetadataEntry(Parcel parcel) {
        String readString = parcel.readString();
        C2885h0.m28670a(readString);
        this.f22052a = readString;
        byte[] bArr = new byte[parcel.readInt()];
        this.f22053b = bArr;
        parcel.readByteArray(bArr);
        this.f22054c = parcel.readInt();
        this.f22055d = parcel.readInt();
    }

    public /* synthetic */ MdtaMetadataEntry(Parcel parcel, C7133a aVar) {
        this(parcel);
    }

    public MdtaMetadataEntry(String str, byte[] bArr, int i, int i2) {
        this.f22052a = str;
        this.f22053b = bArr;
        this.f22054c = i;
        this.f22055d = i2;
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
        if (obj == null || MdtaMetadataEntry.class != obj.getClass()) {
            return false;
        }
        MdtaMetadataEntry mdtaMetadataEntry = (MdtaMetadataEntry) obj;
        if (!this.f22052a.equals(mdtaMetadataEntry.f22052a) || !Arrays.equals(this.f22053b, mdtaMetadataEntry.f22053b) || this.f22054c != mdtaMetadataEntry.f22054c || this.f22055d != mdtaMetadataEntry.f22055d) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        return ((((((527 + this.f22052a.hashCode()) * 31) + Arrays.hashCode(this.f22053b)) * 31) + this.f22054c) * 31) + this.f22055d;
    }

    public String toString() {
        return "mdta: key=" + this.f22052a;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.f22052a);
        parcel.writeInt(this.f22053b.length);
        parcel.writeByteArray(this.f22053b);
        parcel.writeInt(this.f22054c);
        parcel.writeInt(this.f22055d);
    }
}
