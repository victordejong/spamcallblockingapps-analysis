package androidx.media2.exoplayer.external.source;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.media2.exoplayer.external.Format;
import java.util.Arrays;
import p012b.p076s.p078b.p079a.p080a1.C1160a;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/TrackGroup.class */
public final class TrackGroup implements Parcelable {
    public static final Parcelable.Creator<TrackGroup> CREATOR = new C0325a();

    /* renamed from: a */
    public final int f1855a;

    /* renamed from: b */
    public final Format[] f1856b;

    /* renamed from: c */
    public int f1857c;

    /* renamed from: androidx.media2.exoplayer.external.source.TrackGroup$a */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/TrackGroup$a.class */
    public class C0325a implements Parcelable.Creator<TrackGroup> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public TrackGroup createFromParcel(Parcel parcel) {
            return new TrackGroup(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public TrackGroup[] newArray(int i) {
            return new TrackGroup[i];
        }
    }

    public TrackGroup(Parcel parcel) {
        int readInt = parcel.readInt();
        this.f1855a = readInt;
        this.f1856b = new Format[readInt];
        for (int i = 0; i < this.f1855a; i++) {
            this.f1856b[i] = (Format) parcel.readParcelable(Format.class.getClassLoader());
        }
    }

    public TrackGroup(Format... formatArr) {
        C1160a.m34518b(formatArr.length > 0);
        this.f1856b = formatArr;
        this.f1855a = formatArr.length;
    }

    /* renamed from: a */
    public int m37991a(Format format) {
        int i = 0;
        while (true) {
            Format[] formatArr = this.f1856b;
            if (i >= formatArr.length) {
                return -1;
            }
            if (format == formatArr[i]) {
                return i;
            }
            i++;
        }
    }

    /* renamed from: a */
    public Format m37992a(int i) {
        return this.f1856b[i];
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
        if (this.f1855a != trackGroup.f1855a || !Arrays.equals(this.f1856b, trackGroup.f1856b)) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        if (this.f1857c == 0) {
            this.f1857c = 527 + Arrays.hashCode(this.f1856b);
        }
        return this.f1857c;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.f1855a);
        for (int i2 = 0; i2 < this.f1855a; i2++) {
            parcel.writeParcelable(this.f1856b[i2], 0);
        }
    }
}
