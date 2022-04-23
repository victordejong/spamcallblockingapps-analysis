package androidx.media2.exoplayer.external.metadata.id3;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;
import p012b.p076s.p078b.p079a.p080a1.C1167d0;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/metadata/id3/ApicFrame.class */
public final class ApicFrame extends Id3Frame {
    public static final Parcelable.Creator<ApicFrame> CREATOR = new C0304a();

    /* renamed from: b */
    public final String f1762b;

    /* renamed from: c */
    public final String f1763c;

    /* renamed from: d */
    public final int f1764d;

    /* renamed from: e */
    public final byte[] f1765e;

    /* renamed from: androidx.media2.exoplayer.external.metadata.id3.ApicFrame$a */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/metadata/id3/ApicFrame$a.class */
    public class C0304a implements Parcelable.Creator<ApicFrame> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ApicFrame createFromParcel(Parcel parcel) {
            return new ApicFrame(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ApicFrame[] newArray(int i) {
            return new ApicFrame[i];
        }
    }

    public ApicFrame(Parcel parcel) {
        super("APIC");
        String readString = parcel.readString();
        C1167d0.m34479a(readString);
        this.f1762b = readString;
        String readString2 = parcel.readString();
        C1167d0.m34479a(readString2);
        this.f1763c = readString2;
        this.f1764d = parcel.readInt();
        byte[] createByteArray = parcel.createByteArray();
        C1167d0.m34479a(createByteArray);
        this.f1765e = createByteArray;
    }

    public ApicFrame(String str, String str2, int i, byte[] bArr) {
        super("APIC");
        this.f1762b = str;
        this.f1763c = str2;
        this.f1764d = i;
        this.f1765e = bArr;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (obj == null || ApicFrame.class != obj.getClass()) {
            return false;
        }
        ApicFrame apicFrame = (ApicFrame) obj;
        if (this.f1764d != apicFrame.f1764d || !C1167d0.m34478a((Object) this.f1762b, (Object) apicFrame.f1762b) || !C1167d0.m34478a((Object) this.f1763c, (Object) apicFrame.f1763c) || !Arrays.equals(this.f1765e, apicFrame.f1765e)) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        int i = this.f1764d;
        String str = this.f1762b;
        int i2 = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        String str2 = this.f1763c;
        if (str2 != null) {
            i2 = str2.hashCode();
        }
        return ((((((527 + i) * 31) + hashCode) * 31) + i2) * 31) + Arrays.hashCode(this.f1765e);
    }

    @Override // androidx.media2.exoplayer.external.metadata.id3.Id3Frame
    public String toString() {
        String str = this.f1785a;
        String str2 = this.f1762b;
        String str3 = this.f1763c;
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 25 + String.valueOf(str2).length() + String.valueOf(str3).length());
        sb.append(str);
        sb.append(": mimeType=");
        sb.append(str2);
        sb.append(", description=");
        sb.append(str3);
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.f1762b);
        parcel.writeString(this.f1763c);
        parcel.writeInt(this.f1764d);
        parcel.writeByteArray(this.f1765e);
    }
}
