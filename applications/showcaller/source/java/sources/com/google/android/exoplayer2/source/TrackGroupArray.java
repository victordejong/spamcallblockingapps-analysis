package com.google.android.exoplayer2.source;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/source/TrackGroupArray.class */
public final class TrackGroupArray implements Parcelable {

    /* renamed from: e */
    public final int f16308e;

    /* renamed from: f */
    private final TrackGroup[] f16309f;

    /* renamed from: g */
    private int f16310g;

    /* renamed from: d */
    public static final TrackGroupArray f16307d = new TrackGroupArray(new TrackGroup[0]);
    public static final Parcelable.Creator<TrackGroupArray> CREATOR = new C5201a();

    /* renamed from: com.google.android.exoplayer2.source.TrackGroupArray$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/source/TrackGroupArray$a.class */
    static final class C5201a implements Parcelable.Creator<TrackGroupArray> {
        C5201a() {
        }

        /* renamed from: a */
        public TrackGroupArray createFromParcel(Parcel parcel) {
            return new TrackGroupArray(parcel);
        }

        /* renamed from: b */
        public TrackGroupArray[] newArray(int i) {
            return new TrackGroupArray[i];
        }
    }

    TrackGroupArray(Parcel parcel) {
        int readInt = parcel.readInt();
        this.f16308e = readInt;
        this.f16309f = new TrackGroup[readInt];
        for (int i = 0; i < this.f16308e; i++) {
            this.f16309f[i] = (TrackGroup) parcel.readParcelable(TrackGroup.class.getClassLoader());
        }
    }

    public TrackGroupArray(TrackGroup... trackGroupArr) {
        this.f16309f = trackGroupArr;
        this.f16308e = trackGroupArr.length;
    }

    /* renamed from: a */
    public TrackGroup m20155a(int i) {
        return this.f16309f[i];
    }

    /* renamed from: b */
    public int m20154b(TrackGroup trackGroup) {
        for (int i = 0; i < this.f16308e; i++) {
            if (this.f16309f[i] == trackGroup) {
                return i;
            }
        }
        return -1;
    }

    /* renamed from: c */
    public boolean m20153c() {
        return this.f16308e == 0;
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
        if (this.f16308e != trackGroupArray.f16308e || !Arrays.equals(this.f16309f, trackGroupArray.f16309f)) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        if (this.f16310g == 0) {
            this.f16310g = Arrays.hashCode(this.f16309f);
        }
        return this.f16310g;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.f16308e);
        for (int i2 = 0; i2 < this.f16308e; i2++) {
            parcel.writeParcelable(this.f16309f[i2], 0);
        }
    }
}
