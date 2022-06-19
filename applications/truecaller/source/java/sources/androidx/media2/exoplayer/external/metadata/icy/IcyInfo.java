package androidx.media2.exoplayer.external.metadata.icy;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.media2.exoplayer.external.Format;
import androidx.media2.exoplayer.external.metadata.Metadata;
import p1727n3.p1874y.p1876b.p1877a.p1904x0.C27445x;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/metadata/icy/IcyInfo.class */
public final class IcyInfo implements Metadata.Entry {
    public static final Parcelable.Creator<IcyInfo> CREATOR = new C0244a();

    /* renamed from: a */
    public final String f1016a;

    /* renamed from: b */
    public final String f1017b;

    /* renamed from: androidx.media2.exoplayer.external.metadata.icy.IcyInfo$a */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/metadata/icy/IcyInfo$a.class */
    public class C0244a implements Parcelable.Creator<IcyInfo> {
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
        this.f1016a = parcel.readString();
        this.f1017b = parcel.readString();
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
        if (obj == null || IcyInfo.class != obj.getClass()) {
            return false;
        }
        IcyInfo icyInfo = (IcyInfo) obj;
        if (!C27445x.m286a(this.f1016a, icyInfo.f1016a) || !C27445x.m286a(this.f1017b, icyInfo.f1017b)) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        String str = this.f1016a;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        String str2 = this.f1017b;
        if (str2 != null) {
            i = str2.hashCode();
        }
        return ((527 + hashCode) * 31) + i;
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
        String str = this.f1016a;
        String str2 = this.f1017b;
        StringBuilder m8736A = C22128a.m8736A(C22128a.m8623f2(str2, C22128a.m8623f2(str, 21)), "ICY: title=\"", str, "\", url=\"", str2);
        m8736A.append("\"");
        return m8736A.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.f1016a);
        parcel.writeString(this.f1017b);
    }
}
