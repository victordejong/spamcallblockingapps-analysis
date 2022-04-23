package androidx.media2.exoplayer.external.metadata.icy;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.media2.exoplayer.external.metadata.Metadata;
import p012b.p076s.p078b.p079a.p080a1.C1160a;
import p012b.p076s.p078b.p079a.p080a1.C1167d0;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/metadata/icy/IcyHeaders.class */
public final class IcyHeaders implements Metadata.Entry {
    public static final Parcelable.Creator<IcyHeaders> CREATOR = new C0302a();

    /* renamed from: a */
    public final int f1754a;

    /* renamed from: b */
    public final String f1755b;

    /* renamed from: c */
    public final String f1756c;

    /* renamed from: d */
    public final String f1757d;

    /* renamed from: e */
    public final boolean f1758e;

    /* renamed from: f */
    public final int f1759f;

    /* renamed from: androidx.media2.exoplayer.external.metadata.icy.IcyHeaders$a */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/metadata/icy/IcyHeaders$a.class */
    public class C0302a implements Parcelable.Creator<IcyHeaders> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public IcyHeaders createFromParcel(Parcel parcel) {
            return new IcyHeaders(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public IcyHeaders[] newArray(int i) {
            return new IcyHeaders[i];
        }
    }

    public IcyHeaders(int i, String str, String str2, String str3, boolean z, int i2) {
        C1160a.m34520a(i2 == -1 || i2 > 0);
        this.f1754a = i;
        this.f1755b = str;
        this.f1756c = str2;
        this.f1757d = str3;
        this.f1758e = z;
        this.f1759f = i2;
    }

    public IcyHeaders(Parcel parcel) {
        this.f1754a = parcel.readInt();
        this.f1755b = parcel.readString();
        this.f1756c = parcel.readString();
        this.f1757d = parcel.readString();
        this.f1758e = C1167d0.m34483a(parcel);
        this.f1759f = parcel.readInt();
    }

    /* JADX WARN: Removed duplicated region for block: B:28:0x00c0  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00d1  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00e5  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x00f8  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x010d  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0120  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0135  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x014d  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x0167  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x01f7  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static androidx.media2.exoplayer.external.metadata.icy.IcyHeaders m38014a(java.util.Map<java.lang.String, java.util.List<java.lang.String>> r9) {
        /*
            Method dump skipped, instructions count: 524
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.metadata.icy.IcyHeaders.m38014a(java.util.Map):androidx.media2.exoplayer.external.metadata.icy.IcyHeaders");
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
        if (obj == null || IcyHeaders.class != obj.getClass()) {
            return false;
        }
        IcyHeaders icyHeaders = (IcyHeaders) obj;
        if (this.f1754a != icyHeaders.f1754a || !C1167d0.m34478a((Object) this.f1755b, (Object) icyHeaders.f1755b) || !C1167d0.m34478a((Object) this.f1756c, (Object) icyHeaders.f1756c) || !C1167d0.m34478a((Object) this.f1757d, (Object) icyHeaders.f1757d) || this.f1758e != icyHeaders.f1758e || this.f1759f != icyHeaders.f1759f) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        int i = this.f1754a;
        String str = this.f1755b;
        int i2 = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        String str2 = this.f1756c;
        int hashCode2 = str2 != null ? str2.hashCode() : 0;
        String str3 = this.f1757d;
        if (str3 != null) {
            i2 = str3.hashCode();
        }
        return ((((((((((527 + i) * 31) + hashCode) * 31) + hashCode2) * 31) + i2) * 31) + (this.f1758e ? 1 : 0)) * 31) + this.f1759f;
    }

    public String toString() {
        String str = this.f1756c;
        String str2 = this.f1755b;
        int i = this.f1754a;
        int i2 = this.f1759f;
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 80 + String.valueOf(str2).length());
        sb.append("IcyHeaders: name=\"");
        sb.append(str);
        sb.append("\", genre=\"");
        sb.append(str2);
        sb.append("\", bitrate=");
        sb.append(i);
        sb.append(", metadataInterval=");
        sb.append(i2);
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.f1754a);
        parcel.writeString(this.f1755b);
        parcel.writeString(this.f1756c);
        parcel.writeString(this.f1757d);
        C1167d0.m34482a(parcel, this.f1758e);
        parcel.writeInt(this.f1759f);
    }
}
