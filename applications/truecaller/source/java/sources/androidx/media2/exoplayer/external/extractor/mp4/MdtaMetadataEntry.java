package androidx.media2.exoplayer.external.extractor.mp4;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.media2.exoplayer.external.Format;
import androidx.media2.exoplayer.external.metadata.Metadata;
import java.util.Arrays;
import p1727n3.p1874y.p1876b.p1877a.p1904x0.C27445x;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/mp4/MdtaMetadataEntry.class */
public final class MdtaMetadataEntry implements Metadata.Entry {
    public static final Parcelable.Creator<MdtaMetadataEntry> CREATOR = new C0238a();

    /* renamed from: a */
    public final String f987a;

    /* renamed from: b */
    public final byte[] f988b;

    /* renamed from: c */
    public final int f989c;

    /* renamed from: d */
    public final int f990d;

    /* renamed from: androidx.media2.exoplayer.external.extractor.mp4.MdtaMetadataEntry$a */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/mp4/MdtaMetadataEntry$a.class */
    public class C0238a implements Parcelable.Creator<MdtaMetadataEntry> {
        @Override // android.os.Parcelable.Creator
        public MdtaMetadataEntry createFromParcel(Parcel parcel) {
            return new MdtaMetadataEntry(parcel, null);
        }

        @Override // android.os.Parcelable.Creator
        public MdtaMetadataEntry[] newArray(int i) {
            return new MdtaMetadataEntry[i];
        }
    }

    public MdtaMetadataEntry(Parcel parcel, C0238a c0238a) {
        String readString = parcel.readString();
        int i = C27445x.f77229a;
        this.f987a = readString;
        byte[] bArr = new byte[parcel.readInt()];
        this.f988b = bArr;
        parcel.readByteArray(bArr);
        this.f989c = parcel.readInt();
        this.f990d = parcel.readInt();
    }

    public MdtaMetadataEntry(String str, byte[] bArr, int i, int i2) {
        this.f987a = str;
        this.f988b = bArr;
        this.f989c = i;
        this.f990d = i2;
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
        if (!this.f987a.equals(mdtaMetadataEntry.f987a) || !Arrays.equals(this.f988b, mdtaMetadataEntry.f988b) || this.f989c != mdtaMetadataEntry.f989c || this.f990d != mdtaMetadataEntry.f990d) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        return ((((Arrays.hashCode(this.f988b) + C22128a.m8579q2(this.f987a, 527, 31)) * 31) + this.f989c) * 31) + this.f990d;
    }

    @Override // androidx.media2.exoplayer.external.metadata.Metadata.Entry
    /* renamed from: j */
    public byte[] mo42814j() {
        return null;
    }

    @Override // androidx.media2.exoplayer.external.metadata.Metadata.Entry
    /* renamed from: q */
    public Format mo42813q() {
        return null;
    }

    public String toString() {
        String valueOf = String.valueOf(this.f987a);
        return valueOf.length() != 0 ? "mdta: key=".concat(valueOf) : new String("mdta: key=");
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.f987a);
        parcel.writeInt(this.f988b.length);
        parcel.writeByteArray(this.f988b);
        parcel.writeInt(this.f989c);
        parcel.writeInt(this.f990d);
    }
}
