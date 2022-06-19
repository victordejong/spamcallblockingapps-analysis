package com.google.android.exoplayer2.metadata.id3;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes2-dex2jar.jar:com/google/android/exoplayer2/metadata/id3/BinaryFrame.class */
public final class BinaryFrame extends Id3Frame {
    public static final Parcelable.Creator<BinaryFrame> CREATOR = new C1978a();

    /* renamed from: b */
    public final byte[] f4920b;

    /* renamed from: com.google.android.exoplayer2.metadata.id3.BinaryFrame$a */
    /* loaded from: classes2-dex2jar.jar:com/google/android/exoplayer2/metadata/id3/BinaryFrame$a.class */
    public static final class C1978a implements Parcelable.Creator<BinaryFrame> {
        @Override // android.os.Parcelable.Creator
        public BinaryFrame createFromParcel(Parcel parcel) {
            return new BinaryFrame(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public BinaryFrame[] newArray(int i) {
            return new BinaryFrame[i];
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public BinaryFrame(android.os.Parcel r4) {
        /*
            r3 = this;
            r0 = r4
            java.lang.String r0 = r0.readString()
            r5 = r0
            int r0 = p193e.p1577m.p1578a.p1596c.p1636q1.C24773d0.f69427a
            r6 = r0
            r0 = r3
            r1 = r5
            r0.<init>(r1)
            r0 = r3
            r1 = r4
            byte[] r1 = r1.createByteArray()
            r0.f4920b = r1
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.metadata.id3.BinaryFrame.<init>(android.os.Parcel):void");
    }

    public BinaryFrame(String str, byte[] bArr) {
        super(str);
        this.f4920b = bArr;
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
        if (!this.f4939a.equals(binaryFrame.f4939a) || !Arrays.equals(this.f4920b, binaryFrame.f4920b)) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        return Arrays.hashCode(this.f4920b) + C22128a.m8579q2(this.f4939a, 527, 31);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.f4939a);
        parcel.writeByteArray(this.f4920b);
    }
}
