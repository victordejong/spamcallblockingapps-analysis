package com.google.android.exoplayer2.source;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.exoplayer2.Format;
import java.util.Arrays;
import p131c.p161d.p170b.p188c.p203g1.C2877e;
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/source/TrackGroup.class */
public final class TrackGroup implements Parcelable {
    public static final Parcelable.Creator<TrackGroup> CREATOR = new C7171a();

    /* renamed from: a */
    public final int f22257a;

    /* renamed from: b */
    public final Format[] f22258b;

    /* renamed from: c */
    public int f22259c;

    /* renamed from: com.google.android.exoplayer2.source.TrackGroup$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/source/TrackGroup$a.class */
    public static final class C7171a implements Parcelable.Creator<TrackGroup> {
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
        this.f22257a = readInt;
        this.f22258b = new Format[readInt];
        for (int i = 0; i < this.f22257a; i++) {
            this.f22258b[i] = (Format) parcel.readParcelable(Format.class.getClassLoader());
        }
    }

    public TrackGroup(Format... formatArr) {
        C2877e.m28731b(formatArr.length > 0);
        this.f22258b = formatArr;
        this.f22257a = formatArr.length;
    }

    /* renamed from: a */
    public int m18481a(Format format) {
        int i = 0;
        while (true) {
            Format[] formatArr = this.f22258b;
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
    public Format m18482a(int i) {
        return this.f22258b[i];
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
        if (this.f22257a != trackGroup.f22257a || !Arrays.equals(this.f22258b, trackGroup.f22258b)) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        if (this.f22259c == 0) {
            this.f22259c = 527 + Arrays.hashCode(this.f22258b);
        }
        return this.f22259c;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.f22257a);
        for (int i2 = 0; i2 < this.f22257a; i2++) {
            parcel.writeParcelable(this.f22258b[i2], 0);
        }
    }
}
