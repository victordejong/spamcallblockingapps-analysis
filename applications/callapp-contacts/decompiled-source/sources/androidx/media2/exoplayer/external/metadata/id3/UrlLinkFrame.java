package androidx.media2.exoplayer.external.metadata.id3;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.media2.exoplayer.external.util.ac;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/metadata/id3/UrlLinkFrame.class */
public final class UrlLinkFrame extends Id3Frame {
    public static final Parcelable.Creator<UrlLinkFrame> CREATOR = new Parcelable.Creator<UrlLinkFrame>() { // from class: androidx.media2.exoplayer.external.metadata.id3.UrlLinkFrame.1
        @Override // android.os.Parcelable.Creator
        public final /* synthetic */ UrlLinkFrame createFromParcel(Parcel parcel) {
            return new UrlLinkFrame(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public final /* bridge */ /* synthetic */ UrlLinkFrame[] newArray(int i) {
            return new UrlLinkFrame[i];
        }
    };
    public final String description;
    public final String url;

    UrlLinkFrame(Parcel parcel) {
        super((String) ac.a(parcel.readString()));
        this.description = parcel.readString();
        this.url = (String) ac.a(parcel.readString());
    }

    public UrlLinkFrame(String str, String str2, String str3) {
        super(str);
        this.description = str2;
        this.url = str3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        UrlLinkFrame urlLinkFrame = (UrlLinkFrame) obj;
        return this.id.equals(urlLinkFrame.id) && ac.a((Object) this.description, (Object) urlLinkFrame.description) && ac.a((Object) this.url, (Object) urlLinkFrame.url);
    }

    public final int hashCode() {
        int hashCode = this.id.hashCode();
        String str = this.description;
        int i = 0;
        int hashCode2 = str != null ? str.hashCode() : 0;
        String str2 = this.url;
        if (str2 != null) {
            i = str2.hashCode();
        }
        return ((((hashCode + 527) * 31) + hashCode2) * 31) + i;
    }

    @Override // androidx.media2.exoplayer.external.metadata.id3.Id3Frame
    public final String toString() {
        String str = this.id;
        String str2 = this.url;
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 6 + String.valueOf(str2).length());
        sb.append(str);
        sb.append(": url=");
        sb.append(str2);
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.id);
        parcel.writeString(this.description);
        parcel.writeString(this.url);
    }
}
