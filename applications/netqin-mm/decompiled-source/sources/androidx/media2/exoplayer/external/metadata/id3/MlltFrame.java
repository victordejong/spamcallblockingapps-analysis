package androidx.media2.exoplayer.external.metadata.id3;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;
import p012b.p076s.p078b.p079a.p080a1.C1167d0;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/metadata/id3/MlltFrame.class */
public final class MlltFrame extends Id3Frame {
    public static final Parcelable.Creator<MlltFrame> CREATOR = new C0311a();

    /* renamed from: b */
    public final int f1789b;

    /* renamed from: c */
    public final int f1790c;

    /* renamed from: d */
    public final int f1791d;

    /* renamed from: e */
    public final int[] f1792e;

    /* renamed from: f */
    public final int[] f1793f;

    /* renamed from: androidx.media2.exoplayer.external.metadata.id3.MlltFrame$a */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/metadata/id3/MlltFrame$a.class */
    public class C0311a implements Parcelable.Creator<MlltFrame> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public MlltFrame createFromParcel(Parcel parcel) {
            return new MlltFrame(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public MlltFrame[] newArray(int i) {
            return new MlltFrame[i];
        }
    }

    public MlltFrame(int i, int i2, int i3, int[] iArr, int[] iArr2) {
        super("MLLT");
        this.f1789b = i;
        this.f1790c = i2;
        this.f1791d = i3;
        this.f1792e = iArr;
        this.f1793f = iArr2;
    }

    public MlltFrame(Parcel parcel) {
        super("MLLT");
        this.f1789b = parcel.readInt();
        this.f1790c = parcel.readInt();
        this.f1791d = parcel.readInt();
        int[] createIntArray = parcel.createIntArray();
        C1167d0.m34479a(createIntArray);
        this.f1792e = createIntArray;
        int[] createIntArray2 = parcel.createIntArray();
        C1167d0.m34479a(createIntArray2);
        this.f1793f = createIntArray2;
    }

    @Override // androidx.media2.exoplayer.external.metadata.id3.Id3Frame, android.os.Parcelable
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
        if (!(this.f1789b == mlltFrame.f1789b && this.f1790c == mlltFrame.f1790c && this.f1791d == mlltFrame.f1791d && Arrays.equals(this.f1792e, mlltFrame.f1792e) && Arrays.equals(this.f1793f, mlltFrame.f1793f))) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        return ((((((((527 + this.f1789b) * 31) + this.f1790c) * 31) + this.f1791d) * 31) + Arrays.hashCode(this.f1792e)) * 31) + Arrays.hashCode(this.f1793f);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.f1789b);
        parcel.writeInt(this.f1790c);
        parcel.writeInt(this.f1791d);
        parcel.writeIntArray(this.f1792e);
        parcel.writeIntArray(this.f1793f);
    }
}
