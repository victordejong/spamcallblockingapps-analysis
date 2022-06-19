package androidx.media2.exoplayer.external.metadata.icy;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.media2.exoplayer.external.Format;
import androidx.media2.exoplayer.external.metadata.Metadata;
import androidx.media2.exoplayer.external.util.C1996ac;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/metadata/icy/IcyInfo.class */
public final class IcyInfo implements Metadata.Entry {
    public static final Parcelable.Creator<IcyInfo> CREATOR = new Parcelable.Creator<IcyInfo>() { // from class: androidx.media2.exoplayer.external.metadata.icy.IcyInfo.1
        @Override // android.os.Parcelable.Creator
        public final /* synthetic */ IcyInfo createFromParcel(Parcel parcel) {
            return new IcyInfo(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public final /* bridge */ /* synthetic */ IcyInfo[] newArray(int i) {
            return new IcyInfo[i];
        }
    };
    public final String title;
    public final String url;

    IcyInfo(Parcel parcel) {
        this.title = parcel.readString();
        this.url = parcel.readString();
    }

    public IcyInfo(String str, String str2) {
        this.title = str;
        this.url = str2;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        IcyInfo icyInfo = (IcyInfo) obj;
        return C1996ac.m41658a((Object) this.title, (Object) icyInfo.title) && C1996ac.m41658a((Object) this.url, (Object) icyInfo.url);
    }

    @Override // androidx.media2.exoplayer.external.metadata.Metadata.Entry
    public final byte[] getWrappedMetadataBytes() {
        return null;
    }

    @Override // androidx.media2.exoplayer.external.metadata.Metadata.Entry
    public final Format getWrappedMetadataFormat() {
        return null;
    }

    public final int hashCode() {
        String str = this.title;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        String str2 = this.url;
        if (str2 != null) {
            i = str2.hashCode();
        }
        return ((hashCode + 527) * 31) + i;
    }

    public final String toString() {
        String str = this.title;
        String str2 = this.url;
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 21 + String.valueOf(str2).length());
        sb.append("ICY: title=\"");
        sb.append(str);
        sb.append("\", url=\"");
        sb.append(str2);
        sb.append("\"");
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.title);
        parcel.writeString(this.url);
    }
}
