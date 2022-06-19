package com.google.android.exoplayer2.extractor.mp4;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.metadata.Metadata;
import java.util.Arrays;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1577m.p1578a.p1596c.p1613i1.C24461a;
import p193e.p1577m.p1578a.p1596c.p1636q1.C24773d0;
/* loaded from: classes2-dex2jar.jar:com/google/android/exoplayer2/extractor/mp4/MdtaMetadataEntry.class */
public final class MdtaMetadataEntry implements Metadata.Entry {
    public static final Parcelable.Creator<MdtaMetadataEntry> CREATOR = new C1970a();

    /* renamed from: a */
    public final String f4884a;

    /* renamed from: b */
    public final byte[] f4885b;

    /* renamed from: c */
    public final int f4886c;

    /* renamed from: d */
    public final int f4887d;

    /* renamed from: com.google.android.exoplayer2.extractor.mp4.MdtaMetadataEntry$a */
    /* loaded from: classes2-dex2jar.jar:com/google/android/exoplayer2/extractor/mp4/MdtaMetadataEntry$a.class */
    public static final class C1970a implements Parcelable.Creator<MdtaMetadataEntry> {
        @Override // android.os.Parcelable.Creator
        public MdtaMetadataEntry createFromParcel(Parcel parcel) {
            return new MdtaMetadataEntry(parcel, null);
        }

        @Override // android.os.Parcelable.Creator
        public MdtaMetadataEntry[] newArray(int i) {
            return new MdtaMetadataEntry[i];
        }
    }

    public MdtaMetadataEntry(Parcel parcel, C1970a c1970a) {
        String readString = parcel.readString();
        int i = C24773d0.f69427a;
        this.f4884a = readString;
        byte[] bArr = new byte[parcel.readInt()];
        this.f4885b = bArr;
        parcel.readByteArray(bArr);
        this.f4886c = parcel.readInt();
        this.f4887d = parcel.readInt();
    }

    public MdtaMetadataEntry(String str, byte[] bArr, int i, int i2) {
        this.f4884a = str;
        this.f4885b = bArr;
        this.f4886c = i;
        this.f4887d = i2;
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
        if (!this.f4884a.equals(mdtaMetadataEntry.f4884a) || !Arrays.equals(this.f4885b, mdtaMetadataEntry.f4885b) || this.f4886c != mdtaMetadataEntry.f4886c || this.f4887d != mdtaMetadataEntry.f4887d) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        return ((((Arrays.hashCode(this.f4885b) + C22128a.m8579q2(this.f4884a, 527, 31)) * 31) + this.f4886c) * 31) + this.f4887d;
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
        StringBuilder m8728C = C22128a.m8728C("mdta: key=");
        m8728C.append(this.f4884a);
        return m8728C.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.f4884a);
        parcel.writeInt(this.f4885b.length);
        parcel.writeByteArray(this.f4885b);
        parcel.writeInt(this.f4886c);
        parcel.writeInt(this.f4887d);
    }
}
