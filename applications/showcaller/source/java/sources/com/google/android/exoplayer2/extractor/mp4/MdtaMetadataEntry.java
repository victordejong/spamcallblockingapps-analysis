package com.google.android.exoplayer2.extractor.mp4;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.metadata.C5120a;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.util.C5515h0;
import java.util.Arrays;
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/extractor/mp4/MdtaMetadataEntry.class */
public final class MdtaMetadataEntry implements Metadata.Entry {
    public static final Parcelable.Creator<MdtaMetadataEntry> CREATOR = new C5059a();

    /* renamed from: d */
    public final String f15757d;

    /* renamed from: e */
    public final byte[] f15758e;

    /* renamed from: f */
    public final int f15759f;

    /* renamed from: g */
    public final int f15760g;

    /* renamed from: com.google.android.exoplayer2.extractor.mp4.MdtaMetadataEntry$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/extractor/mp4/MdtaMetadataEntry$a.class */
    static final class C5059a implements Parcelable.Creator<MdtaMetadataEntry> {
        C5059a() {
        }

        /* renamed from: a */
        public MdtaMetadataEntry createFromParcel(Parcel parcel) {
            return new MdtaMetadataEntry(parcel, null);
        }

        /* renamed from: b */
        public MdtaMetadataEntry[] newArray(int i) {
            return new MdtaMetadataEntry[i];
        }
    }

    private MdtaMetadataEntry(Parcel parcel) {
        this.f15757d = (String) C5515h0.m18833g(parcel.readString());
        byte[] bArr = new byte[parcel.readInt()];
        this.f15758e = bArr;
        parcel.readByteArray(bArr);
        this.f15759f = parcel.readInt();
        this.f15760g = parcel.readInt();
    }

    /* synthetic */ MdtaMetadataEntry(Parcel parcel, C5059a c5059a) {
        this(parcel);
    }

    public MdtaMetadataEntry(String str, byte[] bArr, int i, int i2) {
        this.f15757d = str;
        this.f15758e = bArr;
        this.f15759f = i;
        this.f15760g = i2;
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
        if (!this.f15757d.equals(mdtaMetadataEntry.f15757d) || !Arrays.equals(this.f15758e, mdtaMetadataEntry.f15758e) || this.f15759f != mdtaMetadataEntry.f15759f || this.f15760g != mdtaMetadataEntry.f15760g) {
            z = false;
        }
        return z;
    }

    @Override // com.google.android.exoplayer2.metadata.Metadata.Entry
    /* renamed from: h0 */
    public /* synthetic */ byte[] mo20092h0() {
        return C5120a.m20389a(this);
    }

    public int hashCode() {
        return ((((((527 + this.f15757d.hashCode()) * 31) + Arrays.hashCode(this.f15758e)) * 31) + this.f15759f) * 31) + this.f15760g;
    }

    public String toString() {
        return "mdta: key=" + this.f15757d;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.f15757d);
        parcel.writeInt(this.f15758e.length);
        parcel.writeByteArray(this.f15758e);
        parcel.writeInt(this.f15759f);
        parcel.writeInt(this.f15760g);
    }

    @Override // com.google.android.exoplayer2.metadata.Metadata.Entry
    /* renamed from: y */
    public /* synthetic */ Format mo20091y() {
        return C5120a.m20388b(this);
    }
}
