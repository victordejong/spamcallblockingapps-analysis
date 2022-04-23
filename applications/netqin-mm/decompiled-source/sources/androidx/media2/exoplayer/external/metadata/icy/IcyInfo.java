package androidx.media2.exoplayer.external.metadata.icy;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.media2.exoplayer.external.metadata.Metadata;
import p012b.p076s.p078b.p079a.p080a1.C1167d0;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/metadata/icy/IcyInfo.class */
public final class IcyInfo implements Metadata.Entry {
    public static final Parcelable.Creator<IcyInfo> CREATOR = new C0303a();

    /* renamed from: a */
    public final String f1760a;

    /* renamed from: b */
    public final String f1761b;

    /* renamed from: androidx.media2.exoplayer.external.metadata.icy.IcyInfo$a */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/metadata/icy/IcyInfo$a.class */
    public class C0303a implements Parcelable.Creator<IcyInfo> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public IcyInfo createFromParcel(Parcel parcel) {
            return new IcyInfo(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public IcyInfo[] newArray(int i) {
            return new IcyInfo[i];
        }
    }

    public IcyInfo(Parcel parcel) {
        this.f1760a = parcel.readString();
        this.f1761b = parcel.readString();
    }

    public IcyInfo(String str, String str2) {
        this.f1760a = str;
        this.f1761b = str2;
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
        if (!C1167d0.m34478a((Object) this.f1760a, (Object) icyInfo.f1760a) || !C1167d0.m34478a((Object) this.f1761b, (Object) icyInfo.f1761b)) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        String str = this.f1760a;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        String str2 = this.f1761b;
        if (str2 != null) {
            i = str2.hashCode();
        }
        return ((527 + hashCode) * 31) + i;
    }

    public String toString() {
        String str = this.f1760a;
        String str2 = this.f1761b;
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 21 + String.valueOf(str2).length());
        sb.append("ICY: title=\"");
        sb.append(str);
        sb.append("\", url=\"");
        sb.append(str2);
        sb.append("\"");
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.f1760a);
        parcel.writeString(this.f1761b);
    }
}
