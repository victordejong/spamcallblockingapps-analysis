package androidx.media2.player.exoplayer;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.media2.exoplayer.external.metadata.Metadata;
import java.util.Arrays;
import p012b.p076s.p078b.p079a.p080a1.C1167d0;
/* loaded from: classes-dex2jar.jar:androidx/media2/player/exoplayer/ByteArrayFrame.class */
public final class ByteArrayFrame implements Metadata.Entry {
    public static final Parcelable.Creator<ByteArrayFrame> CREATOR = new C0411a();

    /* renamed from: a */
    public final long f2153a;

    /* renamed from: b */
    public final byte[] f2154b;

    /* renamed from: androidx.media2.player.exoplayer.ByteArrayFrame$a */
    /* loaded from: classes-dex2jar.jar:androidx/media2/player/exoplayer/ByteArrayFrame$a.class */
    public static final class C0411a implements Parcelable.Creator<ByteArrayFrame> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ByteArrayFrame createFromParcel(Parcel parcel) {
            return new ByteArrayFrame(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ByteArrayFrame[] newArray(int i) {
            return new ByteArrayFrame[i];
        }
    }

    public ByteArrayFrame(long j, byte[] bArr) {
        this.f2153a = j;
        this.f2154b = bArr;
    }

    public ByteArrayFrame(Parcel parcel) {
        this.f2153a = parcel.readLong();
        byte[] bArr = new byte[parcel.readInt()];
        parcel.readByteArray(bArr);
        this.f2154b = bArr;
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
        if (!C1167d0.m34478a(Long.valueOf(this.f2153a), Long.valueOf(byteArrayFrame.f2153a)) || !Arrays.equals(this.f2154b, byteArrayFrame.f2154b)) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        return ((527 + ((int) this.f2153a)) * 31) + Arrays.hashCode(this.f2154b);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeLong(this.f2153a);
        parcel.writeByteArray(this.f2154b);
    }
}
