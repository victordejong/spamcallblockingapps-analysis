package androidx.media2.exoplayer.external.metadata.id3;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;
import p012b.p076s.p078b.p079a.p080a1.C1167d0;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/metadata/id3/PrivFrame.class */
public final class PrivFrame extends Id3Frame {
    public static final Parcelable.Creator<PrivFrame> CREATOR = new C0312a();

    /* renamed from: b */
    public final String f1794b;

    /* renamed from: c */
    public final byte[] f1795c;

    /* renamed from: androidx.media2.exoplayer.external.metadata.id3.PrivFrame$a */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/metadata/id3/PrivFrame$a.class */
    public class C0312a implements Parcelable.Creator<PrivFrame> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public PrivFrame createFromParcel(Parcel parcel) {
            return new PrivFrame(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public PrivFrame[] newArray(int i) {
            return new PrivFrame[i];
        }
    }

    public PrivFrame(Parcel parcel) {
        super("PRIV");
        String readString = parcel.readString();
        C1167d0.m34479a(readString);
        this.f1794b = readString;
        byte[] createByteArray = parcel.createByteArray();
        C1167d0.m34479a(createByteArray);
        this.f1795c = createByteArray;
    }

    public PrivFrame(String str, byte[] bArr) {
        super("PRIV");
        this.f1794b = str;
        this.f1795c = bArr;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (obj == null || PrivFrame.class != obj.getClass()) {
            return false;
        }
        PrivFrame privFrame = (PrivFrame) obj;
        if (!C1167d0.m34478a((Object) this.f1794b, (Object) privFrame.f1794b) || !Arrays.equals(this.f1795c, privFrame.f1795c)) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        String str = this.f1794b;
        return ((527 + (str != null ? str.hashCode() : 0)) * 31) + Arrays.hashCode(this.f1795c);
    }

    @Override // androidx.media2.exoplayer.external.metadata.id3.Id3Frame
    public String toString() {
        String str = this.f1785a;
        String str2 = this.f1794b;
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 8 + String.valueOf(str2).length());
        sb.append(str);
        sb.append(": owner=");
        sb.append(str2);
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.f1794b);
        parcel.writeByteArray(this.f1795c);
    }
}
