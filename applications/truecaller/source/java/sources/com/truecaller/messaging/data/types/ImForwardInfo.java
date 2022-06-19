package com.truecaller.messaging.data.types;

import android.os.Parcel;
import android.os.Parcelable;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
/* loaded from: classes7-dex2jar.jar:com/truecaller/messaging/data/types/ImForwardInfo.class */
public final class ImForwardInfo implements Parcelable {
    public static final Parcelable.Creator<ImForwardInfo> CREATOR = new C4198a();

    /* renamed from: a */
    public final String f13315a;

    /* renamed from: b */
    public final String f13316b;

    /* renamed from: c */
    public final String f13317c;

    /* renamed from: d */
    public final String f13318d;

    /* renamed from: com.truecaller.messaging.data.types.ImForwardInfo$a */
    /* loaded from: classes7-dex2jar.jar:com/truecaller/messaging/data/types/ImForwardInfo$a.class */
    public static final class C4198a implements Parcelable.Creator<ImForwardInfo> {
        @Override // android.os.Parcelable.Creator
        public ImForwardInfo createFromParcel(Parcel parcel) {
            l.e(parcel, "in");
            return new ImForwardInfo(parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString());
        }

        @Override // android.os.Parcelable.Creator
        public ImForwardInfo[] newArray(int i) {
            return new ImForwardInfo[i];
        }
    }

    public ImForwardInfo(String str, String str2, String str3, String str4) {
        l.e(str, "rawMessageId");
        this.f13315a = str;
        this.f13316b = str2;
        this.f13317c = str3;
        this.f13318d = str4;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof ImForwardInfo)) {
                return false;
            }
            ImForwardInfo imForwardInfo = (ImForwardInfo) obj;
            return l.a(this.f13315a, imForwardInfo.f13315a) && l.a(this.f13316b, imForwardInfo.f13316b) && l.a(this.f13317c, imForwardInfo.f13317c) && l.a(this.f13318d, imForwardInfo.f13318d);
        }
        return true;
    }

    public int hashCode() {
        String str = this.f13315a;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        String str2 = this.f13316b;
        int hashCode2 = str2 != null ? str2.hashCode() : 0;
        String str3 = this.f13317c;
        int hashCode3 = str3 != null ? str3.hashCode() : 0;
        String str4 = this.f13318d;
        if (str4 != null) {
            i = str4.hashCode();
        }
        return (((((hashCode * 31) + hashCode2) * 31) + hashCode3) * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("ImForwardInfo(rawMessageId=");
        m8728C.append(this.f13315a);
        m8728C.append(", peerId=");
        m8728C.append(this.f13316b);
        m8728C.append(", context=");
        m8728C.append(this.f13317c);
        m8728C.append(", forwardingId=");
        return C22128a.m8618h(m8728C, this.f13318d, ")");
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        l.e(parcel, "parcel");
        parcel.writeString(this.f13315a);
        parcel.writeString(this.f13316b);
        parcel.writeString(this.f13317c);
        parcel.writeString(this.f13318d);
    }
}
