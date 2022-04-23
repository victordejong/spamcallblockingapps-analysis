package com.google.android.exoplayer2.source;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/source/TrackGroupArray.class */
public final class TrackGroupArray implements Parcelable {

    /* renamed from: a */
    public final int f22261a;

    /* renamed from: b */
    public final TrackGroup[] f22262b;

    /* renamed from: c */
    public int f22263c;

    /* renamed from: d */
    public static final TrackGroupArray f22260d = new TrackGroupArray(new TrackGroup[0]);
    public static final Parcelable.Creator<TrackGroupArray> CREATOR = new C7172a();

    /* renamed from: com.google.android.exoplayer2.source.TrackGroupArray$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/source/TrackGroupArray$a.class */
    public static final class C7172a implements Parcelable.Creator<TrackGroupArray> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public TrackGroupArray createFromParcel(Parcel parcel) {
            return new TrackGroupArray(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public TrackGroupArray[] newArray(int i) {
            return new TrackGroupArray[i];
        }
    }

    public TrackGroupArray(Parcel parcel) {
        int readInt = parcel.readInt();
        this.f22261a = readInt;
        this.f22262b = new TrackGroup[readInt];
        for (int i = 0; i < this.f22261a; i++) {
            this.f22262b[i] = (TrackGroup) parcel.readParcelable(TrackGroup.class.getClassLoader());
        }
    }

    public TrackGroupArray(TrackGroup... trackGroupArr) {
        this.f22262b = trackGroupArr;
        this.f22261a = trackGroupArr.length;
    }

    /* renamed from: a */
    public int m18478a(TrackGroup trackGroup) {
        for (int i = 0; i < this.f22261a; i++) {
            if (this.f22262b[i] == trackGroup) {
                return i;
            }
        }
        return -1;
    }

    /* renamed from: a */
    public TrackGroup m18479a(int i) {
        return this.f22262b[i];
    }

    /* renamed from: a */
    public boolean m18480a() {
        return this.f22261a == 0;
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
        if (this.f22261a != trackGroupArray.f22261a || !Arrays.equals(this.f22262b, trackGroupArray.f22262b)) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        if (this.f22263c == 0) {
            this.f22263c = Arrays.hashCode(this.f22262b);
        }
        return this.f22263c;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.f22261a);
        for (int i2 = 0; i2 < this.f22261a; i2++) {
            parcel.writeParcelable(this.f22262b[i2], 0);
        }
    }
}
