package com.truecaller.messaging.data.types;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;
import java.util.List;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
/* loaded from: classes7-dex2jar.jar:com/truecaller/messaging/data/types/ImInviteGroupInfo.class */
public final class ImInviteGroupInfo implements Parcelable {
    public static final Parcelable.Creator<ImInviteGroupInfo> CREATOR = new C4201a();

    /* renamed from: a */
    public final String f13340a;

    /* renamed from: b */
    public final String f13341b;

    /* renamed from: c */
    public final String f13342c;

    /* renamed from: d */
    public final int f13343d;

    /* renamed from: e */
    public final List<ImInviteUserInfo> f13344e;

    /* renamed from: com.truecaller.messaging.data.types.ImInviteGroupInfo$a */
    /* loaded from: classes7-dex2jar.jar:com/truecaller/messaging/data/types/ImInviteGroupInfo$a.class */
    public static final class C4201a implements Parcelable.Creator<ImInviteGroupInfo> {
        @Override // android.os.Parcelable.Creator
        public ImInviteGroupInfo createFromParcel(Parcel parcel) {
            ArrayList arrayList;
            l.e(parcel, "in");
            String readString = parcel.readString();
            String readString2 = parcel.readString();
            String readString3 = parcel.readString();
            int readInt = parcel.readInt();
            if (parcel.readInt() != 0) {
                int readInt2 = parcel.readInt();
                ArrayList arrayList2 = new ArrayList(readInt2);
                while (true) {
                    arrayList = arrayList2;
                    if (readInt2 == 0) {
                        break;
                    }
                    arrayList2.add(ImInviteUserInfo.CREATOR.createFromParcel(parcel));
                    readInt2--;
                }
            } else {
                arrayList = null;
            }
            return new ImInviteGroupInfo(readString, readString2, readString3, readInt, arrayList);
        }

        @Override // android.os.Parcelable.Creator
        public ImInviteGroupInfo[] newArray(int i) {
            return new ImInviteGroupInfo[i];
        }
    }

    public ImInviteGroupInfo(String str, String str2, String str3, int i, List<ImInviteUserInfo> list) {
        l.e(str, "inviteKey");
        l.e(str2, "title");
        this.f13340a = str;
        this.f13341b = str2;
        this.f13342c = str3;
        this.f13343d = i;
        this.f13344e = list;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof ImInviteGroupInfo)) {
                return false;
            }
            ImInviteGroupInfo imInviteGroupInfo = (ImInviteGroupInfo) obj;
            return l.a(this.f13340a, imInviteGroupInfo.f13340a) && l.a(this.f13341b, imInviteGroupInfo.f13341b) && l.a(this.f13342c, imInviteGroupInfo.f13342c) && this.f13343d == imInviteGroupInfo.f13343d && l.a(this.f13344e, imInviteGroupInfo.f13344e);
        }
        return true;
    }

    public int hashCode() {
        String str = this.f13340a;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        String str2 = this.f13341b;
        int hashCode2 = str2 != null ? str2.hashCode() : 0;
        String str3 = this.f13342c;
        int hashCode3 = str3 != null ? str3.hashCode() : 0;
        int i2 = this.f13343d;
        List<ImInviteUserInfo> list = this.f13344e;
        if (list != null) {
            i = list.hashCode();
        }
        return (((((((hashCode * 31) + hashCode2) * 31) + hashCode3) * 31) + i2) * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("ImInviteGroupInfo(inviteKey=");
        m8728C.append(this.f13340a);
        m8728C.append(", title=");
        m8728C.append(this.f13341b);
        m8728C.append(", avatar=");
        m8728C.append(this.f13342c);
        m8728C.append(", groupSize=");
        m8728C.append(this.f13343d);
        m8728C.append(", userInfoList=");
        return C22128a.m8602l(m8728C, this.f13344e, ")");
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        l.e(parcel, "parcel");
        parcel.writeString(this.f13340a);
        parcel.writeString(this.f13341b);
        parcel.writeString(this.f13342c);
        parcel.writeInt(this.f13343d);
        List<ImInviteUserInfo> list = this.f13344e;
        if (list == null) {
            parcel.writeInt(0);
            return;
        }
        parcel.writeInt(1);
        parcel.writeInt(list.size());
        for (ImInviteUserInfo imInviteUserInfo : list) {
            imInviteUserInfo.writeToParcel(parcel, 0);
        }
    }
}
