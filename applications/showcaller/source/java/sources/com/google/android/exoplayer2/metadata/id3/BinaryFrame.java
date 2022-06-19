package com.google.android.exoplayer2.metadata.id3;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.exoplayer2.util.C5515h0;
import java.util.Arrays;
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/metadata/id3/BinaryFrame.class */
public final class BinaryFrame extends Id3Frame {
    public static final Parcelable.Creator<BinaryFrame> CREATOR = new C5136a();

    /* renamed from: e */
    public final byte[] f16135e;

    /* renamed from: com.google.android.exoplayer2.metadata.id3.BinaryFrame$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/metadata/id3/BinaryFrame$a.class */
    static final class C5136a implements Parcelable.Creator<BinaryFrame> {
        C5136a() {
        }

        /* renamed from: a */
        public BinaryFrame createFromParcel(Parcel parcel) {
            return new BinaryFrame(parcel);
        }

        /* renamed from: b */
        public BinaryFrame[] newArray(int i) {
            return new BinaryFrame[i];
        }
    }

    BinaryFrame(Parcel parcel) {
        super((String) C5515h0.m18833g(parcel.readString()));
        this.f16135e = (byte[]) C5515h0.m18833g(parcel.createByteArray());
    }

    public BinaryFrame(String str, byte[] bArr) {
        super(str);
        this.f16135e = bArr;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (obj == null || BinaryFrame.class != obj.getClass()) {
            return false;
        }
        BinaryFrame binaryFrame = (BinaryFrame) obj;
        if (!this.f16154d.equals(binaryFrame.f16154d) || !Arrays.equals(this.f16135e, binaryFrame.f16135e)) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        return ((527 + this.f16154d.hashCode()) * 31) + Arrays.hashCode(this.f16135e);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.f16154d);
        parcel.writeByteArray(this.f16135e);
    }
}
