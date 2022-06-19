package androidx.media2.exoplayer.external.source;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.media2.exoplayer.external.Format;
import java.util.Arrays;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/TrackGroup.class */
public final class TrackGroup implements Parcelable {
    public static final Parcelable.Creator<TrackGroup> CREATOR = new C0154a();

    /* renamed from: a */
    public final int f1148a;

    /* renamed from: b */
    public final Format[] f1149b;

    /* renamed from: c */
    public int f1150c;

    /* renamed from: androidx.media2.exoplayer.external.source.TrackGroup$a */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/TrackGroup$a.class */
    public class C0154a implements Parcelable.Creator<TrackGroup> {
        /* renamed from: a */
        public TrackGroup createFromParcel(Parcel parcel) {
            return new TrackGroup(parcel);
        }

        /* renamed from: b */
        public TrackGroup[] newArray(int i) {
            return new TrackGroup[i];
        }
    }

    public TrackGroup(Parcel parcel) {
        int readInt = parcel.readInt();
        this.f1148a = readInt;
        this.f1149b = new Format[readInt];
        for (int i = 0; i < this.f1148a; i++) {
            this.f1149b[i] = (Format) parcel.readParcelable(Format.class.getClassLoader());
        }
    }

    public TrackGroup(Format... formatArr) {
        it.f(formatArr.length > 0);
        this.f1149b = formatArr;
        this.f1148a = formatArr.length;
    }

    /* renamed from: a */
    public Format m6413a(int i) {
        return this.f1149b[i];
    }

    /* renamed from: b */
    public int m6412b(Format format) {
        int i = 0;
        while (true) {
            Format[] formatArr = this.f1149b;
            if (i < formatArr.length) {
                if (format == formatArr[i]) {
                    return i;
                }
                i++;
            } else {
                return -1;
            }
        }
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
        if (obj == null || TrackGroup.class != obj.getClass()) {
            return false;
        }
        TrackGroup trackGroup = (TrackGroup) obj;
        if (this.f1148a != trackGroup.f1148a || !Arrays.equals(this.f1149b, trackGroup.f1149b)) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        if (this.f1150c == 0) {
            this.f1150c = 527 + Arrays.hashCode(this.f1149b);
        }
        return this.f1150c;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.f1148a);
        for (int i2 = 0; i2 < this.f1148a; i2++) {
            parcel.writeParcelable(this.f1149b[i2], 0);
        }
    }
}
