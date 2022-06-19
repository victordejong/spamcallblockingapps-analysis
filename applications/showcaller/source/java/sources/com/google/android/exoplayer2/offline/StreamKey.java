package com.google.android.exoplayer2.offline;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/offline/StreamKey.class */
public final class StreamKey implements Comparable<StreamKey>, Parcelable {
    public static final Parcelable.Creator<StreamKey> CREATOR = new C5170a();

    /* renamed from: d */
    public final int f16238d;

    /* renamed from: e */
    public final int f16239e;

    /* renamed from: f */
    public final int f16240f;

    /* renamed from: com.google.android.exoplayer2.offline.StreamKey$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/offline/StreamKey$a.class */
    static final class C5170a implements Parcelable.Creator<StreamKey> {
        C5170a() {
        }

        /* renamed from: a */
        public StreamKey createFromParcel(Parcel parcel) {
            return new StreamKey(parcel);
        }

        /* renamed from: b */
        public StreamKey[] newArray(int i) {
            return new StreamKey[i];
        }
    }

    StreamKey(Parcel parcel) {
        this.f16238d = parcel.readInt();
        this.f16239e = parcel.readInt();
        this.f16240f = parcel.readInt();
    }

    /* renamed from: a */
    public int compareTo(StreamKey streamKey) {
        int i = this.f16238d - streamKey.f16238d;
        int i2 = i;
        if (i == 0) {
            int i3 = this.f16239e - streamKey.f16239e;
            i2 = i3;
            if (i3 == 0) {
                i2 = this.f16240f - streamKey.f16240f;
            }
        }
        return i2;
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
        if (obj == null || StreamKey.class != obj.getClass()) {
            return false;
        }
        StreamKey streamKey = (StreamKey) obj;
        if (this.f16238d != streamKey.f16238d || this.f16239e != streamKey.f16239e || this.f16240f != streamKey.f16240f) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        return (((this.f16238d * 31) + this.f16239e) * 31) + this.f16240f;
    }

    public String toString() {
        return this.f16238d + "." + this.f16239e + "." + this.f16240f;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.f16238d);
        parcel.writeInt(this.f16239e);
        parcel.writeInt(this.f16240f);
    }
}
