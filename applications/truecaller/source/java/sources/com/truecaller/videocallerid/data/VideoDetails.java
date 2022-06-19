package com.truecaller.videocallerid.data;

import android.os.Parcel;
import android.os.Parcelable;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
/* loaded from: classes15-dex2jar.jar:com/truecaller/videocallerid/data/VideoDetails.class */
public final class VideoDetails implements Parcelable {
    public static final Parcelable.Creator<VideoDetails> CREATOR = new C4725a();

    /* renamed from: a */
    public final String f16003a;

    /* renamed from: b */
    public final long f16004b;

    /* renamed from: c */
    public final long f16005c;

    /* renamed from: d */
    public final boolean f16006d;

    /* renamed from: com.truecaller.videocallerid.data.VideoDetails$a */
    /* loaded from: classes15-dex2jar.jar:com/truecaller/videocallerid/data/VideoDetails$a.class */
    public static final class C4725a implements Parcelable.Creator<VideoDetails> {
        @Override // android.os.Parcelable.Creator
        public VideoDetails createFromParcel(Parcel parcel) {
            l.e(parcel, "in");
            return new VideoDetails(parcel.readString(), parcel.readLong(), parcel.readLong(), parcel.readInt() != 0);
        }

        @Override // android.os.Parcelable.Creator
        public VideoDetails[] newArray(int i) {
            return new VideoDetails[i];
        }
    }

    public VideoDetails(String str, long j, long j2, boolean z) {
        l.e(str, "videoUrl");
        this.f16003a = str;
        this.f16004b = j;
        this.f16005c = j2;
        this.f16006d = z;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof VideoDetails)) {
                return false;
            }
            VideoDetails videoDetails = (VideoDetails) obj;
            return l.a(this.f16003a, videoDetails.f16003a) && this.f16004b == videoDetails.f16004b && this.f16005c == videoDetails.f16005c && this.f16006d == videoDetails.f16006d;
        }
        return true;
    }

    public int hashCode() {
        String str = this.f16003a;
        int hashCode = str != null ? str.hashCode() : 0;
        int m34274a = C4876d.m34274a(this.f16004b);
        int m34274a2 = C4876d.m34274a(this.f16005c);
        boolean z = this.f16006d;
        int i = z ? 1 : 0;
        if (z) {
            i = 1;
        }
        return (((((hashCode * 31) + m34274a) * 31) + m34274a2) * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("VideoDetails(videoUrl=");
        m8728C.append(this.f16003a);
        m8728C.append(", sizeBytes=");
        m8728C.append(this.f16004b);
        m8728C.append(", durationMillis=");
        m8728C.append(this.f16005c);
        m8728C.append(", mirrorPlayback=");
        return C22128a.m8590o(m8728C, this.f16006d, ")");
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        l.e(parcel, "parcel");
        parcel.writeString(this.f16003a);
        parcel.writeLong(this.f16004b);
        parcel.writeLong(this.f16005c);
        parcel.writeInt(this.f16006d ? 1 : 0);
    }
}
