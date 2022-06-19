package androidx.media2.exoplayer.external.metadata.id3;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.media2.exoplayer.external.util.C1996ac;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/metadata/id3/InternalFrame.class */
public final class InternalFrame extends Id3Frame {
    public static final Parcelable.Creator<InternalFrame> CREATOR = new Parcelable.Creator<InternalFrame>() { // from class: androidx.media2.exoplayer.external.metadata.id3.InternalFrame.1
        @Override // android.os.Parcelable.Creator
        public final /* synthetic */ InternalFrame createFromParcel(Parcel parcel) {
            return new InternalFrame(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public final /* bridge */ /* synthetic */ InternalFrame[] newArray(int i) {
            return new InternalFrame[i];
        }
    };

    /* renamed from: ID */
    public static final String f6687ID = "----";
    public final String description;
    public final String domain;
    public final String text;

    InternalFrame(Parcel parcel) {
        super("----");
        this.domain = (String) C1996ac.m41659a(parcel.readString());
        this.description = (String) C1996ac.m41659a(parcel.readString());
        this.text = (String) C1996ac.m41659a(parcel.readString());
    }

    public InternalFrame(String str, String str2, String str3) {
        super("----");
        this.domain = str;
        this.description = str2;
        this.text = str3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        InternalFrame internalFrame = (InternalFrame) obj;
        return C1996ac.m41658a((Object) this.description, (Object) internalFrame.description) && C1996ac.m41658a((Object) this.domain, (Object) internalFrame.domain) && C1996ac.m41658a((Object) this.text, (Object) internalFrame.text);
    }

    public final int hashCode() {
        String str = this.domain;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        String str2 = this.description;
        int hashCode2 = str2 != null ? str2.hashCode() : 0;
        String str3 = this.text;
        if (str3 != null) {
            i = str3.hashCode();
        }
        return ((((hashCode + 527) * 31) + hashCode2) * 31) + i;
    }

    @Override // androidx.media2.exoplayer.external.metadata.id3.Id3Frame
    public final String toString() {
        String str = this.f6686id;
        String str2 = this.domain;
        String str3 = this.description;
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 23 + String.valueOf(str2).length() + String.valueOf(str3).length());
        sb.append(str);
        sb.append(": domain=");
        sb.append(str2);
        sb.append(", description=");
        sb.append(str3);
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.f6686id);
        parcel.writeString(this.domain);
        parcel.writeString(this.text);
    }
}
