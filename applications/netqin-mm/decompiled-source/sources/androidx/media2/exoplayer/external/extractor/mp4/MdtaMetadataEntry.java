package androidx.media2.exoplayer.external.extractor.mp4;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.media2.exoplayer.external.metadata.Metadata;
import java.util.Arrays;
import p012b.p076s.p078b.p079a.p080a1.C1167d0;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/mp4/MdtaMetadataEntry.class */
public final class MdtaMetadataEntry implements Metadata.Entry {
    public static final Parcelable.Creator<MdtaMetadataEntry> CREATOR = new C0293a();

    /* renamed from: a */
    public final String f1672a;

    /* renamed from: b */
    public final byte[] f1673b;

    /* renamed from: c */
    public final int f1674c;

    /* renamed from: d */
    public final int f1675d;

    /* renamed from: androidx.media2.exoplayer.external.extractor.mp4.MdtaMetadataEntry$a */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/mp4/MdtaMetadataEntry$a.class */
    public class C0293a implements Parcelable.Creator<MdtaMetadataEntry> {
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
        C1167d0.m34479a(readString);
        this.f1672a = readString;
        byte[] bArr = new byte[parcel.readInt()];
        this.f1673b = bArr;
        parcel.readByteArray(bArr);
        this.f1674c = parcel.readInt();
        this.f1675d = parcel.readInt();
    }

    public /* synthetic */ MdtaMetadataEntry(Parcel parcel, C0293a aVar) {
        this(parcel);
    }

    public MdtaMetadataEntry(String str, byte[] bArr, int i, int i2) {
        this.f1672a = str;
        this.f1673b = bArr;
        this.f1674c = i;
        this.f1675d = i2;
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
        if (!this.f1672a.equals(mdtaMetadataEntry.f1672a) || !Arrays.equals(this.f1673b, mdtaMetadataEntry.f1673b) || this.f1674c != mdtaMetadataEntry.f1674c || this.f1675d != mdtaMetadataEntry.f1675d) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        return ((((((527 + this.f1672a.hashCode()) * 31) + Arrays.hashCode(this.f1673b)) * 31) + this.f1674c) * 31) + this.f1675d;
    }

    public String toString() {
        String valueOf = String.valueOf(this.f1672a);
        return valueOf.length() != 0 ? "mdta: key=".concat(valueOf) : new String("mdta: key=");
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.f1672a);
        parcel.writeInt(this.f1673b.length);
        parcel.writeByteArray(this.f1673b);
        parcel.writeInt(this.f1674c);
        parcel.writeInt(this.f1675d);
    }
}
