package androidx.media2.exoplayer.external.source;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/TrackGroupArray.class */
public final class TrackGroupArray implements Parcelable {

    /* renamed from: a */
    public final int f1042a;

    /* renamed from: b */
    public final TrackGroup[] f1043b;

    /* renamed from: c */
    public int f1044c;

    /* renamed from: d */
    public static final TrackGroupArray f1041d = new TrackGroupArray(new TrackGroup[0]);
    public static final Parcelable.Creator<TrackGroupArray> CREATOR = new C0247a();

    /* renamed from: androidx.media2.exoplayer.external.source.TrackGroupArray$a */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/TrackGroupArray$a.class */
    public class C0247a implements Parcelable.Creator<TrackGroupArray> {
        @Override // android.os.Parcelable.Creator
        public TrackGroupArray createFromParcel(Parcel parcel) {
            return new TrackGroupArray(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public TrackGroupArray[] newArray(int i) {
            return new TrackGroupArray[i];
        }
    }

    public TrackGroupArray(Parcel parcel) {
        int readInt = parcel.readInt();
        this.f1042a = readInt;
        this.f1043b = new TrackGroup[readInt];
        for (int i = 0; i < this.f1042a; i++) {
            this.f1043b[i] = (TrackGroup) parcel.readParcelable(TrackGroup.class.getClassLoader());
        }
    }

    public TrackGroupArray(TrackGroup... trackGroupArr) {
        this.f1043b = trackGroupArr;
        this.f1042a = trackGroupArr.length;
    }

    /* renamed from: a */
    public int m42825a(TrackGroup trackGroup) {
        for (int i = 0; i < this.f1042a; i++) {
            if (this.f1043b[i] == trackGroup) {
                return i;
            }
        }
        return -1;
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
        if (obj == null || TrackGroupArray.class != obj.getClass()) {
            return false;
        }
        TrackGroupArray trackGroupArray = (TrackGroupArray) obj;
        if (this.f1042a != trackGroupArray.f1042a || !Arrays.equals(this.f1043b, trackGroupArray.f1043b)) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        if (this.f1044c == 0) {
            this.f1044c = Arrays.hashCode(this.f1043b);
        }
        return this.f1044c;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.f1042a);
        for (int i2 = 0; i2 < this.f1042a; i2++) {
            parcel.writeParcelable(this.f1043b[i2], 0);
        }
    }
}
