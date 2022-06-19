package com.truecaller.videocallerid.data;

import android.os.Parcel;
import android.os.Parcelable;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
/* loaded from: classes15-dex2jar.jar:com/truecaller/videocallerid/data/OutgoingVideoDetails.class */
public final class OutgoingVideoDetails implements Parcelable {
    public static final Parcelable.Creator<OutgoingVideoDetails> CREATOR = new C4724a();

    /* renamed from: a */
    public final String f15999a;

    /* renamed from: b */
    public final String f16000b;

    /* renamed from: c */
    public final VideoDetails f16001c;

    /* renamed from: com.truecaller.videocallerid.data.OutgoingVideoDetails$a */
    /* loaded from: classes15-dex2jar.jar:com/truecaller/videocallerid/data/OutgoingVideoDetails$a.class */
    public static final class C4724a implements Parcelable.Creator<OutgoingVideoDetails> {
        @Override // android.os.Parcelable.Creator
        public OutgoingVideoDetails createFromParcel(Parcel parcel) {
            l.e(parcel, "in");
            return new OutgoingVideoDetails(parcel.readString(), parcel.readString(), VideoDetails.CREATOR.createFromParcel(parcel));
        }

        @Override // android.os.Parcelable.Creator
        public OutgoingVideoDetails[] newArray(int i) {
            return new OutgoingVideoDetails[i];
        }
    }

    public OutgoingVideoDetails(String str, String str2, VideoDetails videoDetails) {
        l.e(str, "id");
        l.e(videoDetails, "video");
        this.f15999a = str;
        this.f16000b = str2;
        this.f16001c = videoDetails;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof OutgoingVideoDetails)) {
                return false;
            }
            OutgoingVideoDetails outgoingVideoDetails = (OutgoingVideoDetails) obj;
            return l.a(this.f15999a, outgoingVideoDetails.f15999a) && l.a(this.f16000b, outgoingVideoDetails.f16000b) && l.a(this.f16001c, outgoingVideoDetails.f16001c);
        }
        return true;
    }

    public int hashCode() {
        String str = this.f15999a;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        String str2 = this.f16000b;
        int hashCode2 = str2 != null ? str2.hashCode() : 0;
        VideoDetails videoDetails = this.f16001c;
        if (videoDetails != null) {
            i = videoDetails.hashCode();
        }
        return (((hashCode * 31) + hashCode2) * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("OutgoingVideoDetails(id=");
        m8728C.append(this.f15999a);
        m8728C.append(", rawVideoPath=");
        m8728C.append(this.f16000b);
        m8728C.append(", video=");
        m8728C.append(this.f16001c);
        m8728C.append(")");
        return m8728C.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        l.e(parcel, "parcel");
        parcel.writeString(this.f15999a);
        parcel.writeString(this.f16000b);
        this.f16001c.writeToParcel(parcel, 0);
    }
}
