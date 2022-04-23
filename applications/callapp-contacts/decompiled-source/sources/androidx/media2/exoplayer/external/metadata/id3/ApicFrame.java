package androidx.media2.exoplayer.external.metadata.id3;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.media2.exoplayer.external.util.ac;
import java.util.Arrays;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/metadata/id3/ApicFrame.class */
public final class ApicFrame extends Id3Frame {
    public static final Parcelable.Creator<ApicFrame> CREATOR = new Parcelable.Creator<ApicFrame>() { // from class: androidx.media2.exoplayer.external.metadata.id3.ApicFrame.1
        @Override // android.os.Parcelable.Creator
        public final /* synthetic */ ApicFrame createFromParcel(Parcel parcel) {
            return new ApicFrame(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public final /* bridge */ /* synthetic */ ApicFrame[] newArray(int i) {
            return new ApicFrame[i];
        }
    };
    public static final String ID = "APIC";
    public final String description;
    public final String mimeType;
    public final byte[] pictureData;
    public final int pictureType;

    ApicFrame(Parcel parcel) {
        super("APIC");
        this.mimeType = (String) ac.a(parcel.readString());
        this.description = (String) ac.a(parcel.readString());
        this.pictureType = parcel.readInt();
        this.pictureData = (byte[]) ac.a(parcel.createByteArray());
    }

    public ApicFrame(String str, String str2, int i, byte[] bArr) {
        super("APIC");
        this.mimeType = str;
        this.description = str2;
        this.pictureType = i;
        this.pictureData = bArr;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        ApicFrame apicFrame = (ApicFrame) obj;
        return this.pictureType == apicFrame.pictureType && ac.a((Object) this.mimeType, (Object) apicFrame.mimeType) && ac.a((Object) this.description, (Object) apicFrame.description) && Arrays.equals(this.pictureData, apicFrame.pictureData);
    }

    public final int hashCode() {
        int i = this.pictureType;
        String str = this.mimeType;
        int i2 = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        String str2 = this.description;
        if (str2 != null) {
            i2 = str2.hashCode();
        }
        return ((((((i + 527) * 31) + hashCode) * 31) + i2) * 31) + Arrays.hashCode(this.pictureData);
    }

    @Override // androidx.media2.exoplayer.external.metadata.id3.Id3Frame
    public final String toString() {
        String str = this.id;
        String str2 = this.mimeType;
        String str3 = this.description;
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 25 + String.valueOf(str2).length() + String.valueOf(str3).length());
        sb.append(str);
        sb.append(": mimeType=");
        sb.append(str2);
        sb.append(", description=");
        sb.append(str3);
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.mimeType);
        parcel.writeString(this.description);
        parcel.writeInt(this.pictureType);
        parcel.writeByteArray(this.pictureData);
    }
}
