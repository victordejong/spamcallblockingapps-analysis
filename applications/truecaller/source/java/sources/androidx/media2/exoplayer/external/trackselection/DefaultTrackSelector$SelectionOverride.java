package androidx.media2.exoplayer.external.trackselection;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$SelectionOverride.class */
public final class DefaultTrackSelector$SelectionOverride implements Parcelable {
    public static final Parcelable.Creator<DefaultTrackSelector$SelectionOverride> CREATOR = new C0251a();

    /* renamed from: a */
    public final int f1085a;

    /* renamed from: b */
    public final int[] f1086b;

    /* renamed from: c */
    public final int f1087c;

    /* renamed from: d */
    public final int f1088d;

    /* renamed from: e */
    public final int f1089e;

    /* renamed from: androidx.media2.exoplayer.external.trackselection.DefaultTrackSelector$SelectionOverride$a */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$SelectionOverride$a.class */
    public class C0251a implements Parcelable.Creator<DefaultTrackSelector$SelectionOverride> {
        @Override // android.os.Parcelable.Creator
        public DefaultTrackSelector$SelectionOverride createFromParcel(Parcel parcel) {
            return new DefaultTrackSelector$SelectionOverride(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public DefaultTrackSelector$SelectionOverride[] newArray(int i) {
            return new DefaultTrackSelector$SelectionOverride[i];
        }
    }

    public DefaultTrackSelector$SelectionOverride(int i, int... iArr) {
        this.f1085a = i;
        int[] copyOf = Arrays.copyOf(iArr, iArr.length);
        this.f1086b = copyOf;
        this.f1087c = iArr.length;
        this.f1088d = 2;
        this.f1089e = 0;
        Arrays.sort(copyOf);
    }

    public DefaultTrackSelector$SelectionOverride(Parcel parcel) {
        this.f1085a = parcel.readInt();
        int readByte = parcel.readByte();
        this.f1087c = readByte;
        int[] iArr = new int[readByte];
        this.f1086b = iArr;
        parcel.readIntArray(iArr);
        this.f1088d = parcel.readInt();
        this.f1089e = parcel.readInt();
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
        if (obj == null || DefaultTrackSelector$SelectionOverride.class != obj.getClass()) {
            return false;
        }
        DefaultTrackSelector$SelectionOverride defaultTrackSelector$SelectionOverride = (DefaultTrackSelector$SelectionOverride) obj;
        if (this.f1085a != defaultTrackSelector$SelectionOverride.f1085a || !Arrays.equals(this.f1086b, defaultTrackSelector$SelectionOverride.f1086b) || this.f1088d != defaultTrackSelector$SelectionOverride.f1088d || this.f1089e != defaultTrackSelector$SelectionOverride.f1089e) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        return ((((Arrays.hashCode(this.f1086b) + (this.f1085a * 31)) * 31) + this.f1088d) * 31) + this.f1089e;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.f1085a);
        parcel.writeInt(this.f1086b.length);
        parcel.writeIntArray(this.f1086b);
        parcel.writeInt(this.f1088d);
        parcel.writeInt(this.f1089e);
    }
}
