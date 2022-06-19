package com.google.android.exoplayer2.source;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.util.C5508e;
import java.util.Arrays;
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/source/TrackGroup.class */
public final class TrackGroup implements Parcelable {
    public static final Parcelable.Creator<TrackGroup> CREATOR = new C5200a();

    /* renamed from: d */
    public final int f16304d;

    /* renamed from: e */
    private final Format[] f16305e;

    /* renamed from: f */
    private int f16306f;

    /* renamed from: com.google.android.exoplayer2.source.TrackGroup$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/source/TrackGroup$a.class */
    static final class C5200a implements Parcelable.Creator<TrackGroup> {
        C5200a() {
        }

        /* renamed from: a */
        public TrackGroup createFromParcel(Parcel parcel) {
            return new TrackGroup(parcel);
        }

        /* renamed from: b */
        public TrackGroup[] newArray(int i) {
            return new TrackGroup[i];
        }
    }

    TrackGroup(Parcel parcel) {
        int readInt = parcel.readInt();
        this.f16304d = readInt;
        this.f16305e = new Format[readInt];
        for (int i = 0; i < this.f16304d; i++) {
            this.f16305e[i] = (Format) parcel.readParcelable(Format.class.getClassLoader());
        }
    }

    public TrackGroup(Format... formatArr) {
        C5508e.m18910f(formatArr.length > 0);
        this.f16305e = formatArr;
        this.f16304d = formatArr.length;
    }

    /* renamed from: a */
    public Format m20159a(int i) {
        return this.f16305e[i];
    }

    /* renamed from: b */
    public int m20158b(Format format) {
        int i = 0;
        while (true) {
            Format[] formatArr = this.f16305e;
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
        if (this.f16304d != trackGroup.f16304d || !Arrays.equals(this.f16305e, trackGroup.f16305e)) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        if (this.f16306f == 0) {
            this.f16306f = 527 + Arrays.hashCode(this.f16305e);
        }
        return this.f16306f;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.f16304d);
        for (int i2 = 0; i2 < this.f16304d; i2++) {
            parcel.writeParcelable(this.f16305e[i2], 0);
        }
    }
}
