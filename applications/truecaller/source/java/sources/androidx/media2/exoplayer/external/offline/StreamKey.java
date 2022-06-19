package androidx.media2.exoplayer.external.offline;

import android.os.Parcel;
import android.os.Parcelable;
import com.tenor.android.core.constant.StringConstant;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/offline/StreamKey.class */
public final class StreamKey implements Comparable<StreamKey>, Parcelable {
    public static final Parcelable.Creator<StreamKey> CREATOR = new C0245a();

    /* renamed from: a */
    public final int f1035a;

    /* renamed from: b */
    public final int f1036b;

    /* renamed from: c */
    public final int f1037c;

    /* renamed from: androidx.media2.exoplayer.external.offline.StreamKey$a */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/offline/StreamKey$a.class */
    public class C0245a implements Parcelable.Creator<StreamKey> {
        @Override // android.os.Parcelable.Creator
        public StreamKey createFromParcel(Parcel parcel) {
            return new StreamKey(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public StreamKey[] newArray(int i) {
            return new StreamKey[i];
        }
    }

    public StreamKey(Parcel parcel) {
        this.f1035a = parcel.readInt();
        this.f1036b = parcel.readInt();
        this.f1037c = parcel.readInt();
    }

    @Override // java.lang.Comparable
    public int compareTo(StreamKey streamKey) {
        StreamKey streamKey2 = streamKey;
        int i = this.f1035a - streamKey2.f1035a;
        int i2 = i;
        if (i == 0) {
            int i3 = this.f1036b - streamKey2.f1036b;
            i2 = i3;
            if (i3 == 0) {
                i2 = this.f1037c - streamKey2.f1037c;
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
        if (this.f1035a != streamKey.f1035a || this.f1036b != streamKey.f1036b || this.f1037c != streamKey.f1037c) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        return (((this.f1035a * 31) + this.f1036b) * 31) + this.f1037c;
    }

    public String toString() {
        int i = this.f1035a;
        int i2 = this.f1036b;
        int i3 = this.f1037c;
        StringBuilder sb = new StringBuilder(35);
        sb.append(i);
        sb.append(StringConstant.DOT);
        sb.append(i2);
        sb.append(StringConstant.DOT);
        sb.append(i3);
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.f1035a);
        parcel.writeInt(this.f1036b);
        parcel.writeInt(this.f1037c);
    }
}
