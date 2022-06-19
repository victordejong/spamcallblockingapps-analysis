package com.google.android.exoplayer2.metadata.id3;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.exoplayer2.util.C5515h0;
import java.util.Arrays;
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/metadata/id3/MlltFrame.class */
public final class MlltFrame extends Id3Frame {
    public static final Parcelable.Creator<MlltFrame> CREATOR = new C5142a();

    /* renamed from: e */
    public final int f16158e;

    /* renamed from: f */
    public final int f16159f;

    /* renamed from: g */
    public final int f16160g;

    /* renamed from: h */
    public final int[] f16161h;

    /* renamed from: i */
    public final int[] f16162i;

    /* renamed from: com.google.android.exoplayer2.metadata.id3.MlltFrame$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/metadata/id3/MlltFrame$a.class */
    static final class C5142a implements Parcelable.Creator<MlltFrame> {
        C5142a() {
        }

        /* renamed from: a */
        public MlltFrame createFromParcel(Parcel parcel) {
            return new MlltFrame(parcel);
        }

        /* renamed from: b */
        public MlltFrame[] newArray(int i) {
            return new MlltFrame[i];
        }
    }

    public MlltFrame(int i, int i2, int i3, int[] iArr, int[] iArr2) {
        super("MLLT");
        this.f16158e = i;
        this.f16159f = i2;
        this.f16160g = i3;
        this.f16161h = iArr;
        this.f16162i = iArr2;
    }

    MlltFrame(Parcel parcel) {
        super("MLLT");
        this.f16158e = parcel.readInt();
        this.f16159f = parcel.readInt();
        this.f16160g = parcel.readInt();
        this.f16161h = (int[]) C5515h0.m18833g(parcel.createIntArray());
        this.f16162i = (int[]) C5515h0.m18833g(parcel.createIntArray());
    }

    @Override // com.google.android.exoplayer2.metadata.id3.Id3Frame, android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (obj == null || MlltFrame.class != obj.getClass()) {
            return false;
        }
        MlltFrame mlltFrame = (MlltFrame) obj;
        if (this.f16158e != mlltFrame.f16158e || this.f16159f != mlltFrame.f16159f || this.f16160g != mlltFrame.f16160g || !Arrays.equals(this.f16161h, mlltFrame.f16161h) || !Arrays.equals(this.f16162i, mlltFrame.f16162i)) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        return ((((((((527 + this.f16158e) * 31) + this.f16159f) * 31) + this.f16160g) * 31) + Arrays.hashCode(this.f16161h)) * 31) + Arrays.hashCode(this.f16162i);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.f16158e);
        parcel.writeInt(this.f16159f);
        parcel.writeInt(this.f16160g);
        parcel.writeIntArray(this.f16161h);
        parcel.writeIntArray(this.f16162i);
    }
}
