package com.truecaller.messaging.data.types;

import android.os.Parcel;
import android.os.Parcelable;
import com.razorpay.AnalyticsConstants;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
/* loaded from: classes7-dex2jar.jar:com/truecaller/messaging/data/types/ImInviteUserInfo.class */
public final class ImInviteUserInfo implements Parcelable {
    public static final Parcelable.Creator<ImInviteUserInfo> CREATOR = new C4202a();

    /* renamed from: a */
    public final String f13345a;

    /* renamed from: b */
    public final String f13346b;

    /* renamed from: com.truecaller.messaging.data.types.ImInviteUserInfo$a */
    /* loaded from: classes7-dex2jar.jar:com/truecaller/messaging/data/types/ImInviteUserInfo$a.class */
    public static final class C4202a implements Parcelable.Creator<ImInviteUserInfo> {
        @Override // android.os.Parcelable.Creator
        public ImInviteUserInfo createFromParcel(Parcel parcel) {
            l.e(parcel, "in");
            return new ImInviteUserInfo(parcel.readString(), parcel.readString());
        }

        @Override // android.os.Parcelable.Creator
        public ImInviteUserInfo[] newArray(int i) {
            return new ImInviteUserInfo[i];
        }
    }

    public ImInviteUserInfo(String str, String str2) {
        l.e(str, AnalyticsConstants.NAME);
        this.f13345a = str;
        this.f13346b = str2;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof ImInviteUserInfo)) {
                return false;
            }
            ImInviteUserInfo imInviteUserInfo = (ImInviteUserInfo) obj;
            return l.a(this.f13345a, imInviteUserInfo.f13345a) && l.a(this.f13346b, imInviteUserInfo.f13346b);
        }
        return true;
    }

    public int hashCode() {
        String str = this.f13345a;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        String str2 = this.f13346b;
        if (str2 != null) {
            i = str2.hashCode();
        }
        return (hashCode * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("ImInviteUserInfo(name=");
        m8728C.append(this.f13345a);
        m8728C.append(", avatar=");
        return C22128a.m8618h(m8728C, this.f13346b, ")");
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        l.e(parcel, "parcel");
        parcel.writeString(this.f13345a);
        parcel.writeString(this.f13346b);
    }
}
