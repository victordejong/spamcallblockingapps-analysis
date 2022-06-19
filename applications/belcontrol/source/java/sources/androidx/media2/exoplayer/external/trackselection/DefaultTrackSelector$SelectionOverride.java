package androidx.media2.exoplayer.external.trackselection;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$SelectionOverride.class */
public final class DefaultTrackSelector$SelectionOverride implements Parcelable {
    public static final Parcelable.Creator<DefaultTrackSelector$SelectionOverride> CREATOR = new C0157a();

    /* renamed from: a */
    public final int f1160a;

    /* renamed from: b */
    public final int[] f1161b;

    /* renamed from: c */
    public final int f1162c;

    /* renamed from: d */
    public final int f1163d;

    /* renamed from: f */
    public final int f1164f;

    /* renamed from: androidx.media2.exoplayer.external.trackselection.DefaultTrackSelector$SelectionOverride$a */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$SelectionOverride$a.class */
    public class C0157a implements Parcelable.Creator<DefaultTrackSelector$SelectionOverride> {
        /* renamed from: a */
        public DefaultTrackSelector$SelectionOverride createFromParcel(Parcel parcel) {
            return new DefaultTrackSelector$SelectionOverride(parcel);
        }

        /* renamed from: b */
        public DefaultTrackSelector$SelectionOverride[] newArray(int i) {
            return new DefaultTrackSelector$SelectionOverride[i];
        }
    }

    public DefaultTrackSelector$SelectionOverride(int i, int... iArr) {
        this(i, iArr, 2, 0);
    }

    public DefaultTrackSelector$SelectionOverride(int i, int[] iArr, int i2, int i3) {
        this.f1160a = i;
        int[] copyOf = Arrays.copyOf(iArr, iArr.length);
        this.f1161b = copyOf;
        this.f1162c = iArr.length;
        this.f1163d = i2;
        this.f1164f = i3;
        Arrays.sort(copyOf);
    }

    public DefaultTrackSelector$SelectionOverride(Parcel parcel) {
        this.f1160a = parcel.readInt();
        int readByte = parcel.readByte();
        this.f1162c = readByte;
        int[] iArr = new int[readByte];
        this.f1161b = iArr;
        parcel.readIntArray(iArr);
        this.f1163d = parcel.readInt();
        this.f1164f = parcel.readInt();
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
        if (this.f1160a != defaultTrackSelector$SelectionOverride.f1160a || !Arrays.equals(this.f1161b, defaultTrackSelector$SelectionOverride.f1161b) || this.f1163d != defaultTrackSelector$SelectionOverride.f1163d || this.f1164f != defaultTrackSelector$SelectionOverride.f1164f) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        return (((((this.f1160a * 31) + Arrays.hashCode(this.f1161b)) * 31) + this.f1163d) * 31) + this.f1164f;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.f1160a);
        parcel.writeInt(this.f1161b.length);
        parcel.writeIntArray(this.f1161b);
        parcel.writeInt(this.f1163d);
        parcel.writeInt(this.f1164f);
    }
}
