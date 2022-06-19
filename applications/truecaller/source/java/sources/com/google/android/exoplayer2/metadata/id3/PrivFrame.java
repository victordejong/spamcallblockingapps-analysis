package com.google.android.exoplayer2.metadata.id3;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;
import p193e.p1577m.p1578a.p1596c.p1636q1.C24773d0;
/* loaded from: classes2-dex2jar.jar:com/google/android/exoplayer2/metadata/id3/PrivFrame.class */
public final class PrivFrame extends Id3Frame {
    public static final Parcelable.Creator<PrivFrame> CREATOR = new C1985a();

    /* renamed from: b */
    public final String f4948b;

    /* renamed from: c */
    public final byte[] f4949c;

    /* renamed from: com.google.android.exoplayer2.metadata.id3.PrivFrame$a */
    /* loaded from: classes2-dex2jar.jar:com/google/android/exoplayer2/metadata/id3/PrivFrame$a.class */
    public static final class C1985a implements Parcelable.Creator<PrivFrame> {
        @Override // android.os.Parcelable.Creator
        public PrivFrame createFromParcel(Parcel parcel) {
            return new PrivFrame(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public PrivFrame[] newArray(int i) {
            return new PrivFrame[i];
        }
    }

    public PrivFrame(Parcel parcel) {
        super("PRIV");
        String readString = parcel.readString();
        int i = C24773d0.f69427a;
        this.f4948b = readString;
        this.f4949c = parcel.createByteArray();
    }

    public PrivFrame(String str, byte[] bArr) {
        super("PRIV");
        this.f4948b = str;
        this.f4949c = bArr;
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
        if (!C24773d0.m4623a(this.f4948b, privFrame.f4948b) || !Arrays.equals(this.f4949c, privFrame.f4949c)) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        String str = this.f4948b;
        return Arrays.hashCode(this.f4949c) + ((527 + (str != null ? str.hashCode() : 0)) * 31);
    }

    @Override // com.google.android.exoplayer2.metadata.id3.Id3Frame
    public String toString() {
        return this.f4939a + ": owner=" + this.f4948b;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.f4948b);
        parcel.writeByteArray(this.f4949c);
    }
}
