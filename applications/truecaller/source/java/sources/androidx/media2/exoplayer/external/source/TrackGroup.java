package androidx.media2.exoplayer.external.source;

import android.os.Parcel;
import android.os.Parcelable;
import android.support.p001v4.media.session.MediaSessionCompat;
import androidx.media2.exoplayer.external.Format;
import java.util.Arrays;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/TrackGroup.class */
public final class TrackGroup implements Parcelable {
    public static final Parcelable.Creator<TrackGroup> CREATOR = new C0246a();

    /* renamed from: a */
    public final int f1038a;

    /* renamed from: b */
    public final Format[] f1039b;

    /* renamed from: c */
    public int f1040c;

    /* renamed from: androidx.media2.exoplayer.external.source.TrackGroup$a */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/TrackGroup$a.class */
    public class C0246a implements Parcelable.Creator<TrackGroup> {
        @Override // android.os.Parcelable.Creator
        public TrackGroup createFromParcel(Parcel parcel) {
            return new TrackGroup(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public TrackGroup[] newArray(int i) {
            return new TrackGroup[i];
        }
    }

    public TrackGroup(Parcel parcel) {
        int readInt = parcel.readInt();
        this.f1038a = readInt;
        this.f1039b = new Format[readInt];
        for (int i = 0; i < this.f1038a; i++) {
            this.f1039b[i] = (Format) parcel.readParcelable(Format.class.getClassLoader());
        }
    }

    public TrackGroup(Format... formatArr) {
        MediaSessionCompat.m43184y(formatArr.length > 0);
        this.f1039b = formatArr;
        this.f1038a = formatArr.length;
    }

    /* renamed from: a */
    public int m42826a(Format format) {
        int i = 0;
        while (true) {
            Format[] formatArr = this.f1039b;
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
        if (this.f1038a != trackGroup.f1038a || !Arrays.equals(this.f1039b, trackGroup.f1039b)) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        if (this.f1040c == 0) {
            this.f1040c = 527 + Arrays.hashCode(this.f1039b);
        }
        return this.f1040c;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.f1038a);
        for (int i2 = 0; i2 < this.f1038a; i2++) {
            parcel.writeParcelable(this.f1039b[i2], 0);
        }
    }
}
