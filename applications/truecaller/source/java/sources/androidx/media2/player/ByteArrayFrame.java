package androidx.media2.player;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.media2.exoplayer.external.Format;
import androidx.media2.exoplayer.external.metadata.Metadata;
import java.util.Arrays;
import p1727n3.p1874y.p1876b.p1877a.p1904x0.C27445x;
/* loaded from: classes-dex2jar.jar:androidx/media2/player/ByteArrayFrame.class */
public final class ByteArrayFrame implements Metadata.Entry {
    public static final Parcelable.Creator<ByteArrayFrame> CREATOR = new C0257a();

    /* renamed from: a */
    public final long f1155a;

    /* renamed from: b */
    public final byte[] f1156b;

    /* renamed from: androidx.media2.player.ByteArrayFrame$a */
    /* loaded from: classes-dex2jar.jar:androidx/media2/player/ByteArrayFrame$a.class */
    public class C0257a implements Parcelable.Creator<ByteArrayFrame> {
        @Override // android.os.Parcelable.Creator
        public ByteArrayFrame createFromParcel(Parcel parcel) {
            return new ByteArrayFrame(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public ByteArrayFrame[] newArray(int i) {
            return new ByteArrayFrame[i];
        }
    }

    public ByteArrayFrame(long j, byte[] bArr) {
        this.f1155a = j;
        this.f1156b = bArr;
    }

    public ByteArrayFrame(Parcel parcel) {
        this.f1155a = parcel.readLong();
        byte[] bArr = new byte[parcel.readInt()];
        parcel.readByteArray(bArr);
        this.f1156b = bArr;
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
        if (obj == null || ByteArrayFrame.class != obj.getClass()) {
            return false;
        }
        ByteArrayFrame byteArrayFrame = (ByteArrayFrame) obj;
        if (!C27445x.m286a(Long.valueOf(this.f1155a), Long.valueOf(byteArrayFrame.f1155a)) || !Arrays.equals(this.f1156b, byteArrayFrame.f1156b)) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        return Arrays.hashCode(this.f1156b) + ((527 + ((int) this.f1155a)) * 31);
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

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeLong(this.f1155a);
        parcel.writeByteArray(this.f1156b);
    }
}
