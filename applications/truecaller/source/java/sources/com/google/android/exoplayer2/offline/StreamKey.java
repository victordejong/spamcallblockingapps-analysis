package com.google.android.exoplayer2.offline;

import android.os.Parcel;
import android.os.Parcelable;
import com.tenor.android.core.constant.StringConstant;
/* loaded from: classes2-dex2jar.jar:com/google/android/exoplayer2/offline/StreamKey.class */
public final class StreamKey implements Comparable<StreamKey>, Parcelable {
    public static final Parcelable.Creator<StreamKey> CREATOR = new C1997a();

    /* renamed from: a */
    public final int f4995a;

    /* renamed from: b */
    public final int f4996b;

    /* renamed from: c */
    public final int f4997c;

    /* renamed from: com.google.android.exoplayer2.offline.StreamKey$a */
    /* loaded from: classes2-dex2jar.jar:com/google/android/exoplayer2/offline/StreamKey$a.class */
    public static final class C1997a implements Parcelable.Creator<StreamKey> {
        @Override // android.os.Parcelable.Creator
        public StreamKey createFromParcel(Parcel parcel) {
            return new StreamKey(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public StreamKey[] newArray(int i) {
            return new StreamKey[i];
        }
    }

    public StreamKey(int i, int i2, int i3) {
        this.f4995a = i;
        this.f4996b = i2;
        this.f4997c = i3;
    }

    public StreamKey(Parcel parcel) {
        this.f4995a = parcel.readInt();
        this.f4996b = parcel.readInt();
        this.f4997c = parcel.readInt();
    }

    @Override // java.lang.Comparable
    public int compareTo(StreamKey streamKey) {
        StreamKey streamKey2 = streamKey;
        int i = this.f4995a - streamKey2.f4995a;
        int i2 = i;
        if (i == 0) {
            int i3 = this.f4996b - streamKey2.f4996b;
            i2 = i3;
            if (i3 == 0) {
                i2 = this.f4997c - streamKey2.f4997c;
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
        if (this.f4995a != streamKey.f4995a || this.f4996b != streamKey.f4996b || this.f4997c != streamKey.f4997c) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        return (((this.f4995a * 31) + this.f4996b) * 31) + this.f4997c;
    }

    public String toString() {
        return this.f4995a + StringConstant.DOT + this.f4996b + StringConstant.DOT + this.f4997c;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.f4995a);
        parcel.writeInt(this.f4996b);
        parcel.writeInt(this.f4997c);
    }
}
