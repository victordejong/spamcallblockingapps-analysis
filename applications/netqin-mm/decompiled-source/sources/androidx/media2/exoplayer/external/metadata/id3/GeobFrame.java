package androidx.media2.exoplayer.external.metadata.id3;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;
import p012b.p076s.p078b.p079a.p080a1.C1167d0;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/metadata/id3/GeobFrame.class */
public final class GeobFrame extends Id3Frame {
    public static final Parcelable.Creator<GeobFrame> CREATOR = new C0309a();

    /* renamed from: b */
    public final String f1781b;

    /* renamed from: c */
    public final String f1782c;

    /* renamed from: d */
    public final String f1783d;

    /* renamed from: e */
    public final byte[] f1784e;

    /* renamed from: androidx.media2.exoplayer.external.metadata.id3.GeobFrame$a */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/metadata/id3/GeobFrame$a.class */
    public class C0309a implements Parcelable.Creator<GeobFrame> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public GeobFrame createFromParcel(Parcel parcel) {
            return new GeobFrame(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public GeobFrame[] newArray(int i) {
            return new GeobFrame[i];
        }
    }

    public GeobFrame(Parcel parcel) {
        super("GEOB");
        String readString = parcel.readString();
        C1167d0.m34479a(readString);
        this.f1781b = readString;
        String readString2 = parcel.readString();
        C1167d0.m34479a(readString2);
        this.f1782c = readString2;
        String readString3 = parcel.readString();
        C1167d0.m34479a(readString3);
        this.f1783d = readString3;
        byte[] createByteArray = parcel.createByteArray();
        C1167d0.m34479a(createByteArray);
        this.f1784e = createByteArray;
    }

    public GeobFrame(String str, String str2, String str3, byte[] bArr) {
        super("GEOB");
        this.f1781b = str;
        this.f1782c = str2;
        this.f1783d = str3;
        this.f1784e = bArr;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (obj == null || GeobFrame.class != obj.getClass()) {
            return false;
        }
        GeobFrame geobFrame = (GeobFrame) obj;
        if (!C1167d0.m34478a((Object) this.f1781b, (Object) geobFrame.f1781b) || !C1167d0.m34478a((Object) this.f1782c, (Object) geobFrame.f1782c) || !C1167d0.m34478a((Object) this.f1783d, (Object) geobFrame.f1783d) || !Arrays.equals(this.f1784e, geobFrame.f1784e)) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        String str = this.f1781b;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        String str2 = this.f1782c;
        int hashCode2 = str2 != null ? str2.hashCode() : 0;
        String str3 = this.f1783d;
        if (str3 != null) {
            i = str3.hashCode();
        }
        return ((((((527 + hashCode) * 31) + hashCode2) * 31) + i) * 31) + Arrays.hashCode(this.f1784e);
    }

    @Override // androidx.media2.exoplayer.external.metadata.id3.Id3Frame
    public String toString() {
        String str = this.f1785a;
        String str2 = this.f1781b;
        String str3 = this.f1782c;
        String str4 = this.f1783d;
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 36 + String.valueOf(str2).length() + String.valueOf(str3).length() + String.valueOf(str4).length());
        sb.append(str);
        sb.append(": mimeType=");
        sb.append(str2);
        sb.append(", filename=");
        sb.append(str3);
        sb.append(", description=");
        sb.append(str4);
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.f1781b);
        parcel.writeString(this.f1782c);
        parcel.writeString(this.f1783d);
        parcel.writeByteArray(this.f1784e);
    }
}
