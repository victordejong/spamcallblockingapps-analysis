package com.google.android.exoplayer2.metadata.id3;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.exoplayer2.util.af;
import java.util.Arrays;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/metadata/id3/PrivFrame.class */
public final class PrivFrame extends Id3Frame {
    public static final Parcelable.Creator<PrivFrame> CREATOR = new Parcelable.Creator<PrivFrame>() { // from class: com.google.android.exoplayer2.metadata.id3.PrivFrame.1
        @Override // android.os.Parcelable.Creator
        public final /* synthetic */ PrivFrame createFromParcel(Parcel parcel) {
            return new PrivFrame(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public final /* bridge */ /* synthetic */ PrivFrame[] newArray(int i) {
            return new PrivFrame[i];
        }
    };
    public static final String ID = "PRIV";
    public final String owner;
    public final byte[] privateData;

    PrivFrame(Parcel parcel) {
        super("PRIV");
        this.owner = (String) af.a(parcel.readString());
        this.privateData = (byte[]) af.a(parcel.createByteArray());
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
        return af.a((Object) this.owner, (Object) privFrame.owner) && Arrays.equals(this.privateData, privFrame.privateData);
    }

    public final int hashCode() {
        String str = this.owner;
        return (((str != null ? str.hashCode() : 0) + 527) * 31) + Arrays.hashCode(this.privateData);
    }

    @Override // com.google.android.exoplayer2.metadata.id3.Id3Frame
    public final String toString() {
        return this.id + ": owner=" + this.owner;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.owner);
        parcel.writeByteArray(this.privateData);
    }
}
