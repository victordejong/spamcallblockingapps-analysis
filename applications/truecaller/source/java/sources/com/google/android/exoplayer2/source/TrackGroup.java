package com.google.android.exoplayer2.source;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.exoplayer2.Format;
import java.util.Arrays;
import p1727n3.p1789g0.C26232y;
/* loaded from: classes2-dex2jar.jar:com/google/android/exoplayer2/source/TrackGroup.class */
public final class TrackGroup implements Parcelable {
    public static final Parcelable.Creator<TrackGroup> CREATOR = new C1999a();

    /* renamed from: a */
    public final int f4999a;

    /* renamed from: b */
    public final Format[] f5000b;

    /* renamed from: c */
    public int f5001c;

    /* renamed from: com.google.android.exoplayer2.source.TrackGroup$a */
    /* loaded from: classes2-dex2jar.jar:com/google/android/exoplayer2/source/TrackGroup$a.class */
    public static final class C1999a implements Parcelable.Creator<TrackGroup> {
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
        this.f4999a = readInt;
        this.f5000b = new Format[readInt];
        for (int i = 0; i < this.f4999a; i++) {
            this.f5000b[i] = (Format) parcel.readParcelable(Format.class.getClassLoader());
        }
    }

    public TrackGroup(Format... formatArr) {
        C26232y.m2286x(formatArr.length > 0);
        this.f5000b = formatArr;
        this.f4999a = formatArr.length;
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
        if (this.f4999a != trackGroup.f4999a || !Arrays.equals(this.f5000b, trackGroup.f5000b)) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        if (this.f5001c == 0) {
            this.f5001c = 527 + Arrays.hashCode(this.f5000b);
        }
        return this.f5001c;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.f4999a);
        for (int i2 = 0; i2 < this.f4999a; i2++) {
            parcel.writeParcelable(this.f5000b[i2], 0);
        }
    }
}
