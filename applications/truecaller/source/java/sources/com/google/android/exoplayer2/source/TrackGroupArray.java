package com.google.android.exoplayer2.source;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;
/* loaded from: classes2-dex2jar.jar:com/google/android/exoplayer2/source/TrackGroupArray.class */
public final class TrackGroupArray implements Parcelable {

    /* renamed from: a */
    public final int f5003a;

    /* renamed from: b */
    public final TrackGroup[] f5004b;

    /* renamed from: c */
    public int f5005c;

    /* renamed from: d */
    public static final TrackGroupArray f5002d = new TrackGroupArray(new TrackGroup[0]);
    public static final Parcelable.Creator<TrackGroupArray> CREATOR = new C2000a();

    /* renamed from: com.google.android.exoplayer2.source.TrackGroupArray$a */
    /* loaded from: classes2-dex2jar.jar:com/google/android/exoplayer2/source/TrackGroupArray$a.class */
    public static final class C2000a implements Parcelable.Creator<TrackGroupArray> {
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
        this.f5003a = readInt;
        this.f5004b = new TrackGroup[readInt];
        for (int i = 0; i < this.f5003a; i++) {
            this.f5004b[i] = (TrackGroup) parcel.readParcelable(TrackGroup.class.getClassLoader());
        }
    }

    public TrackGroupArray(TrackGroup... trackGroupArr) {
        this.f5004b = trackGroupArr;
        this.f5003a = trackGroupArr.length;
    }

    /* renamed from: a */
    public int m39234a(TrackGroup trackGroup) {
        for (int i = 0; i < this.f5003a; i++) {
            if (this.f5004b[i] == trackGroup) {
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
        if (this.f5003a != trackGroupArray.f5003a || !Arrays.equals(this.f5004b, trackGroupArray.f5004b)) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        if (this.f5005c == 0) {
            this.f5005c = Arrays.hashCode(this.f5004b);
        }
        return this.f5005c;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.f5003a);
        for (int i2 = 0; i2 < this.f5003a; i2++) {
            parcel.writeParcelable(this.f5004b[i2], 0);
        }
    }
}
