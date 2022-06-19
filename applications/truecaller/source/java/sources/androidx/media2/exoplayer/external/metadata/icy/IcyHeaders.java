package androidx.media2.exoplayer.external.metadata.icy;

import android.os.Parcel;
import android.os.Parcelable;
import android.support.p001v4.media.session.MediaSessionCompat;
import androidx.media2.exoplayer.external.Format;
import androidx.media2.exoplayer.external.metadata.Metadata;
import p1727n3.p1874y.p1876b.p1877a.p1904x0.C27445x;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/metadata/icy/IcyHeaders.class */
public final class IcyHeaders implements Metadata.Entry {
    public static final Parcelable.Creator<IcyHeaders> CREATOR = new C0243a();

    /* renamed from: a */
    public final int f1010a;

    /* renamed from: b */
    public final String f1011b;

    /* renamed from: c */
    public final String f1012c;

    /* renamed from: d */
    public final String f1013d;

    /* renamed from: e */
    public final boolean f1014e;

    /* renamed from: f */
    public final int f1015f;

    /* renamed from: androidx.media2.exoplayer.external.metadata.icy.IcyHeaders$a */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/metadata/icy/IcyHeaders$a.class */
    public class C0243a implements Parcelable.Creator<IcyHeaders> {
        @Override // android.os.Parcelable.Creator
        public IcyHeaders createFromParcel(Parcel parcel) {
            return new IcyHeaders(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public IcyHeaders[] newArray(int i) {
            return new IcyHeaders[i];
        }
    }

    public IcyHeaders(int i, String str, String str2, String str3, boolean z, int i2) {
        MediaSessionCompat.m43211p(i2 == -1 || i2 > 0);
        this.f1010a = i;
        this.f1011b = str;
        this.f1012c = str2;
        this.f1013d = str3;
        this.f1014e = z;
        this.f1015f = i2;
    }

    public IcyHeaders(Parcel parcel) {
        this.f1010a = parcel.readInt();
        this.f1011b = parcel.readString();
        this.f1012c = parcel.readString();
        this.f1013d = parcel.readString();
        int i = C27445x.f77229a;
        this.f1014e = parcel.readInt() != 0;
        this.f1015f = parcel.readInt();
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x00ac  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x00bd  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x00d1  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00e4  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00f9  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x010c  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0121  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x0139  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0153  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x01da  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static androidx.media2.exoplayer.external.metadata.icy.IcyHeaders m42827a(java.util.Map<java.lang.String, java.util.List<java.lang.String>> r9) {
        /*
            Method dump skipped, instructions count: 505
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.metadata.icy.IcyHeaders.m42827a(java.util.Map):androidx.media2.exoplayer.external.metadata.icy.IcyHeaders");
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
        if (this.f1010a != icyHeaders.f1010a || !C27445x.m286a(this.f1011b, icyHeaders.f1011b) || !C27445x.m286a(this.f1012c, icyHeaders.f1012c) || !C27445x.m286a(this.f1013d, icyHeaders.f1013d) || this.f1014e != icyHeaders.f1014e || this.f1015f != icyHeaders.f1015f) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        int i = this.f1010a;
        String str = this.f1011b;
        int i2 = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        String str2 = this.f1012c;
        int hashCode2 = str2 != null ? str2.hashCode() : 0;
        String str3 = this.f1013d;
        if (str3 != null) {
            i2 = str3.hashCode();
        }
        return ((((((((((527 + i) * 31) + hashCode) * 31) + hashCode2) * 31) + i2) * 31) + (this.f1014e ? 1 : 0)) * 31) + this.f1015f;
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
        String str = this.f1012c;
        String str2 = this.f1011b;
        int i = this.f1010a;
        int i2 = this.f1015f;
        StringBuilder m8736A = C22128a.m8736A(C22128a.m8623f2(str2, C22128a.m8623f2(str, 80)), "IcyHeaders: name=\"", str, "\", genre=\"", str2);
        m8736A.append("\", bitrate=");
        m8736A.append(i);
        m8736A.append(", metadataInterval=");
        m8736A.append(i2);
        return m8736A.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.f1010a);
        parcel.writeString(this.f1011b);
        parcel.writeString(this.f1012c);
        parcel.writeString(this.f1013d);
        boolean z = this.f1014e;
        int i2 = C27445x.f77229a;
        parcel.writeInt(z ? 1 : 0);
        parcel.writeInt(this.f1015f);
    }
}
