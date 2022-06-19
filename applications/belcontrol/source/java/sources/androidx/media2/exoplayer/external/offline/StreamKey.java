package androidx.media2.exoplayer.external.offline;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/offline/StreamKey.class */
public final class StreamKey implements Comparable<StreamKey>, Parcelable {
    public static final Parcelable.Creator<StreamKey> CREATOR = new C0153a();

    /* renamed from: a */
    public final int f1145a;

    /* renamed from: b */
    public final int f1146b;

    /* renamed from: c */
    public final int f1147c;

    /* renamed from: androidx.media2.exoplayer.external.offline.StreamKey$a */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/offline/StreamKey$a.class */
    public class C0153a implements Parcelable.Creator<StreamKey> {
        /* renamed from: a */
        public StreamKey createFromParcel(Parcel parcel) {
            return new StreamKey(parcel);
        }

        /* renamed from: b */
        public StreamKey[] newArray(int i) {
            return new StreamKey[i];
        }
    }

    public StreamKey(Parcel parcel) {
        this.f1145a = parcel.readInt();
        this.f1146b = parcel.readInt();
        this.f1147c = parcel.readInt();
    }

    /* renamed from: a */
    public int compareTo(StreamKey streamKey) {
        int i = this.f1145a - streamKey.f1145a;
        int i2 = i;
        if (i == 0) {
            int i3 = this.f1146b - streamKey.f1146b;
            i2 = i3;
            if (i3 == 0) {
                i2 = this.f1147c - streamKey.f1147c;
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
        if (this.f1145a != streamKey.f1145a || this.f1146b != streamKey.f1146b || this.f1147c != streamKey.f1147c) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        return (((this.f1145a * 31) + this.f1146b) * 31) + this.f1147c;
    }

    public String toString() {
        int i = this.f1145a;
        int i2 = this.f1146b;
        int i3 = this.f1147c;
        StringBuilder sb = new StringBuilder(35);
        sb.append(i);
        sb.append(".");
        sb.append(i2);
        sb.append(".");
        sb.append(i3);
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.f1145a);
        parcel.writeInt(this.f1146b);
        parcel.writeInt(this.f1147c);
    }
}
