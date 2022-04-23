package androidx.media2.player;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.media2.exoplayer.external.Format;
import androidx.media2.exoplayer.external.metadata.Metadata;
import androidx.media2.exoplayer.external.util.ac;
import java.util.Arrays;
/* loaded from: classes-dex2jar.jar:androidx/media2/player/ByteArrayFrame.class */
final class ByteArrayFrame implements Metadata.Entry {
    public static final Parcelable.Creator<ByteArrayFrame> CREATOR = new Parcelable.Creator<ByteArrayFrame>() { // from class: androidx.media2.player.ByteArrayFrame.1
        @Override // android.os.Parcelable.Creator
        public final /* synthetic */ ByteArrayFrame createFromParcel(Parcel parcel) {
            return new ByteArrayFrame(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public final /* bridge */ /* synthetic */ ByteArrayFrame[] newArray(int i) {
            return new ByteArrayFrame[i];
        }
    };
    public final byte[] mData;
    public final long mTimestamp;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ByteArrayFrame(long j, byte[] bArr) {
        this.mTimestamp = j;
        this.mData = bArr;
    }

    ByteArrayFrame(Parcel parcel) {
        this.mTimestamp = parcel.readLong();
        byte[] bArr = new byte[parcel.readInt()];
        parcel.readByteArray(bArr);
        this.mData = bArr;
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
        ByteArrayFrame byteArrayFrame = (ByteArrayFrame) obj;
        return ac.a(Long.valueOf(this.mTimestamp), Long.valueOf(byteArrayFrame.mTimestamp)) && Arrays.equals(this.mData, byteArrayFrame.mData);
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
        return ((((int) this.mTimestamp) + 527) * 31) + Arrays.hashCode(this.mData);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeLong(this.mTimestamp);
        parcel.writeByteArray(this.mData);
    }
}
