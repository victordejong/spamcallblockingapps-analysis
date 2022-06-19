package com.google.android.exoplayer2.metadata.id3;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.exoplayer2.util.C11599af;
import java.util.Arrays;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/metadata/id3/BinaryFrame.class */
public final class BinaryFrame extends Id3Frame {
    public static final Parcelable.Creator<BinaryFrame> CREATOR = new Parcelable.Creator<BinaryFrame>() { // from class: com.google.android.exoplayer2.metadata.id3.BinaryFrame.1
        @Override // android.os.Parcelable.Creator
        public final /* synthetic */ BinaryFrame createFromParcel(Parcel parcel) {
            return new BinaryFrame(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public final /* bridge */ /* synthetic */ BinaryFrame[] newArray(int i) {
            return new BinaryFrame[i];
        }
    };
    public final byte[] data;

    BinaryFrame(Parcel parcel) {
        super((String) C11599af.m19974a(parcel.readString()));
        this.data = (byte[]) C11599af.m19974a(parcel.createByteArray());
    }

    public BinaryFrame(String str, byte[] bArr) {
        super(str);
        this.data = bArr;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        BinaryFrame binaryFrame = (BinaryFrame) obj;
        return this.f36776id.equals(binaryFrame.f36776id) && Arrays.equals(this.data, binaryFrame.data);
    }

    public final int hashCode() {
        return ((this.f36776id.hashCode() + 527) * 31) + Arrays.hashCode(this.data);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.f36776id);
        parcel.writeByteArray(this.data);
    }
}
