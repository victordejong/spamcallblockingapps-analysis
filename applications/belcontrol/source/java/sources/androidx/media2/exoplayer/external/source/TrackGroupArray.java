package androidx.media2.exoplayer.external.source;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/TrackGroupArray.class */
public final class TrackGroupArray implements Parcelable {

    /* renamed from: a */
    public final int f1152a;

    /* renamed from: b */
    public final TrackGroup[] f1153b;

    /* renamed from: c */
    public int f1154c;

    /* renamed from: d */
    public static final TrackGroupArray f1151d = new TrackGroupArray(new TrackGroup[0]);
    public static final Parcelable.Creator<TrackGroupArray> CREATOR = new C0155a();

    /* renamed from: androidx.media2.exoplayer.external.source.TrackGroupArray$a */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/TrackGroupArray$a.class */
    public class C0155a implements Parcelable.Creator<TrackGroupArray> {
        /* renamed from: a */
        public TrackGroupArray createFromParcel(Parcel parcel) {
            return new TrackGroupArray(parcel);
        }

        /* renamed from: b */
        public TrackGroupArray[] newArray(int i) {
            return new TrackGroupArray[i];
        }
    }

    public TrackGroupArray(Parcel parcel) {
        int readInt = parcel.readInt();
        this.f1152a = readInt;
        this.f1153b = new TrackGroup[readInt];
        for (int i = 0; i < this.f1152a; i++) {
            this.f1153b[i] = (TrackGroup) parcel.readParcelable(TrackGroup.class.getClassLoader());
        }
    }

    public TrackGroupArray(TrackGroup... trackGroupArr) {
        this.f1153b = trackGroupArr;
        this.f1152a = trackGroupArr.length;
    }

    /* renamed from: a */
    public TrackGroup m6409a(int i) {
        return this.f1153b[i];
    }

    /* renamed from: b */
    public int m6408b(TrackGroup trackGroup) {
        for (int i = 0; i < this.f1152a; i++) {
            if (this.f1153b[i] == trackGroup) {
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
        if (this.f1152a != trackGroupArray.f1152a || !Arrays.equals(this.f1153b, trackGroupArray.f1153b)) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        if (this.f1154c == 0) {
            this.f1154c = Arrays.hashCode(this.f1153b);
        }
        return this.f1154c;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.f1152a);
        for (int i2 = 0; i2 < this.f1152a; i2++) {
            parcel.writeParcelable(this.f1153b[i2], 0);
        }
    }
}
