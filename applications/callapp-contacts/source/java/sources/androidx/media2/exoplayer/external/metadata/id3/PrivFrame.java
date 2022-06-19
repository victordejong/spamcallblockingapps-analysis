package androidx.media2.exoplayer.external.metadata.id3;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.media2.exoplayer.external.util.C1996ac;
import java.util.Arrays;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/metadata/id3/PrivFrame.class */
public final class PrivFrame extends Id3Frame {
    public static final Parcelable.Creator<PrivFrame> CREATOR = new Parcelable.Creator<PrivFrame>() { // from class: androidx.media2.exoplayer.external.metadata.id3.PrivFrame.1
        @Override // android.os.Parcelable.Creator
        public final /* synthetic */ PrivFrame createFromParcel(Parcel parcel) {
            return new PrivFrame(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public final /* bridge */ /* synthetic */ PrivFrame[] newArray(int i) {
            return new PrivFrame[i];
        }
    };

    /* renamed from: ID */
    public static final String f6689ID = "PRIV";
    public final String owner;
    public final byte[] privateData;

    PrivFrame(Parcel parcel) {
        super("PRIV");
        this.owner = (String) C1996ac.m41659a(parcel.readString());
        this.privateData = (byte[]) C1996ac.m41659a(parcel.createByteArray());
    }

    public PrivFrame(String str, byte[] bArr) {
        super("PRIV");
        this.owner = str;
        this.privateData = bArr;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        PrivFrame privFrame = (PrivFrame) obj;
        return C1996ac.m41658a((Object) this.owner, (Object) privFrame.owner) && Arrays.equals(this.privateData, privFrame.privateData);
    }

    public final int hashCode() {
        String str = this.owner;
        return (((str != null ? str.hashCode() : 0) + 527) * 31) + Arrays.hashCode(this.privateData);
    }

    @Override // androidx.media2.exoplayer.external.metadata.id3.Id3Frame
    public final String toString() {
        String str = this.f6686id;
        String str2 = this.owner;
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 8 + String.valueOf(str2).length());
        sb.append(str);
        sb.append(": owner=");
        sb.append(str2);
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.owner);
        parcel.writeByteArray(this.privateData);
    }
}
