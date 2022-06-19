package com.google.android.exoplayer2.metadata.id3;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;
import p193e.p1577m.p1578a.p1596c.p1636q1.C24773d0;
/* loaded from: classes2-dex2jar.jar:com/google/android/exoplayer2/metadata/id3/MlltFrame.class */
public final class MlltFrame extends Id3Frame {
    public static final Parcelable.Creator<MlltFrame> CREATOR = new C1984a();

    /* renamed from: b */
    public final int f4943b;

    /* renamed from: c */
    public final int f4944c;

    /* renamed from: d */
    public final int f4945d;

    /* renamed from: e */
    public final int[] f4946e;

    /* renamed from: f */
    public final int[] f4947f;

    /* renamed from: com.google.android.exoplayer2.metadata.id3.MlltFrame$a */
    /* loaded from: classes2-dex2jar.jar:com/google/android/exoplayer2/metadata/id3/MlltFrame$a.class */
    public static final class C1984a implements Parcelable.Creator<MlltFrame> {
        @Override // android.os.Parcelable.Creator
        public MlltFrame createFromParcel(Parcel parcel) {
            return new MlltFrame(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public MlltFrame[] newArray(int i) {
            return new MlltFrame[i];
        }
    }

    public MlltFrame(int i, int i2, int i3, int[] iArr, int[] iArr2) {
        super("MLLT");
        this.f4943b = i;
        this.f4944c = i2;
        this.f4945d = i3;
        this.f4946e = iArr;
        this.f4947f = iArr2;
    }

    public MlltFrame(Parcel parcel) {
        super("MLLT");
        this.f4943b = parcel.readInt();
        this.f4944c = parcel.readInt();
        this.f4945d = parcel.readInt();
        int[] createIntArray = parcel.createIntArray();
        int i = C24773d0.f69427a;
        this.f4946e = createIntArray;
        this.f4947f = parcel.createIntArray();
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
        if (this.f4943b != mlltFrame.f4943b || this.f4944c != mlltFrame.f4944c || this.f4945d != mlltFrame.f4945d || !Arrays.equals(this.f4946e, mlltFrame.f4946e) || !Arrays.equals(this.f4947f, mlltFrame.f4947f)) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        int i = this.f4943b;
        int i2 = this.f4944c;
        int i3 = this.f4945d;
        return Arrays.hashCode(this.f4947f) + ((Arrays.hashCode(this.f4946e) + ((((((527 + i) * 31) + i2) * 31) + i3) * 31)) * 31);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.f4943b);
        parcel.writeInt(this.f4944c);
        parcel.writeInt(this.f4945d);
        parcel.writeIntArray(this.f4946e);
        parcel.writeIntArray(this.f4947f);
    }
}
