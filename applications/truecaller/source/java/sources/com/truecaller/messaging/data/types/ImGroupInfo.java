package com.truecaller.messaging.data.types;

import android.os.Parcel;
import android.os.Parcelable;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
/* loaded from: classes7-dex2jar.jar:com/truecaller/messaging/data/types/ImGroupInfo.class */
public final class ImGroupInfo implements Parcelable {
    public static final Parcelable.Creator<ImGroupInfo> CREATOR = new C4199a();

    /* renamed from: a */
    public final String f13319a;

    /* renamed from: b */
    public final String f13320b;

    /* renamed from: c */
    public final String f13321c;

    /* renamed from: d */
    public final long f13322d;

    /* renamed from: e */
    public final String f13323e;

    /* renamed from: f */
    public final int f13324f;

    /* renamed from: g */
    public final ImGroupPermissions f13325g;

    /* renamed from: h */
    public final int f13326h;

    /* renamed from: i */
    public final int f13327i;

    /* renamed from: j */
    public final long f13328j;

    /* renamed from: k */
    public final long f13329k;

    /* renamed from: l */
    public final boolean f13330l;

    /* renamed from: m */
    public final long f13331m;

    /* renamed from: n */
    public final long f13332n;

    /* renamed from: o */
    public final int f13333o;

    /* renamed from: p */
    public final int f13334p;

    /* renamed from: q */
    public final String f13335q;

    /* renamed from: com.truecaller.messaging.data.types.ImGroupInfo$a */
    /* loaded from: classes7-dex2jar.jar:com/truecaller/messaging/data/types/ImGroupInfo$a.class */
    public static final class C4199a implements Parcelable.Creator<ImGroupInfo> {
        @Override // android.os.Parcelable.Creator
        public ImGroupInfo createFromParcel(Parcel parcel) {
            l.e(parcel, "in");
            return new ImGroupInfo(parcel.readString(), parcel.readString(), parcel.readString(), parcel.readLong(), parcel.readString(), parcel.readInt(), ImGroupPermissions.CREATOR.createFromParcel(parcel), parcel.readInt(), parcel.readInt(), parcel.readLong(), parcel.readLong(), parcel.readInt() != 0, parcel.readLong(), parcel.readLong(), parcel.readInt(), parcel.readInt(), parcel.readString());
        }

        @Override // android.os.Parcelable.Creator
        public ImGroupInfo[] newArray(int i) {
            return new ImGroupInfo[i];
        }
    }

    public ImGroupInfo(String str, String str2, String str3, long j, String str4, int i, ImGroupPermissions imGroupPermissions, int i2, int i3, long j2, long j3, boolean z, long j4, long j5, int i4, int i5, String str5) {
        l.e(str, "groupId");
        l.e(imGroupPermissions, "permissions");
        this.f13319a = str;
        this.f13320b = str2;
        this.f13321c = str3;
        this.f13322d = j;
        this.f13323e = str4;
        this.f13324f = i;
        this.f13325g = imGroupPermissions;
        this.f13326h = i2;
        this.f13327i = i3;
        this.f13328j = j2;
        this.f13329k = j3;
        this.f13330l = z;
        this.f13331m = j4;
        this.f13332n = j5;
        this.f13333o = i4;
        this.f13334p = i5;
        this.f13335q = str5;
    }

    public /* synthetic */ ImGroupInfo(String str, String str2, String str3, long j, String str4, int i, ImGroupPermissions imGroupPermissions, int i2, int i3, long j2, long j3, boolean z, long j4, long j5, int i4, int i5, String str5, int i6) {
        this(str, str2, str3, j, str4, i, imGroupPermissions, i2, i3, j2, j3, z, j4, j5, i4, i5, null);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof ImGroupInfo)) {
                return false;
            }
            ImGroupInfo imGroupInfo = (ImGroupInfo) obj;
            return l.a(this.f13319a, imGroupInfo.f13319a) && l.a(this.f13320b, imGroupInfo.f13320b) && l.a(this.f13321c, imGroupInfo.f13321c) && this.f13322d == imGroupInfo.f13322d && l.a(this.f13323e, imGroupInfo.f13323e) && this.f13324f == imGroupInfo.f13324f && l.a(this.f13325g, imGroupInfo.f13325g) && this.f13326h == imGroupInfo.f13326h && this.f13327i == imGroupInfo.f13327i && this.f13328j == imGroupInfo.f13328j && this.f13329k == imGroupInfo.f13329k && this.f13330l == imGroupInfo.f13330l && this.f13331m == imGroupInfo.f13331m && this.f13332n == imGroupInfo.f13332n && this.f13333o == imGroupInfo.f13333o && this.f13334p == imGroupInfo.f13334p && l.a(this.f13335q, imGroupInfo.f13335q);
        }
        return true;
    }

    public int hashCode() {
        String str = this.f13319a;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        String str2 = this.f13320b;
        int hashCode2 = str2 != null ? str2.hashCode() : 0;
        String str3 = this.f13321c;
        int hashCode3 = str3 != null ? str3.hashCode() : 0;
        int m34274a = C4876d.m34274a(this.f13322d);
        String str4 = this.f13323e;
        int hashCode4 = str4 != null ? str4.hashCode() : 0;
        int i2 = this.f13324f;
        ImGroupPermissions imGroupPermissions = this.f13325g;
        int hashCode5 = imGroupPermissions != null ? imGroupPermissions.hashCode() : 0;
        int i3 = this.f13326h;
        int i4 = this.f13327i;
        int m34274a2 = C4876d.m34274a(this.f13328j);
        int m34274a3 = C4876d.m34274a(this.f13329k);
        boolean z = this.f13330l;
        int i5 = z ? 1 : 0;
        if (z) {
            i5 = 1;
        }
        int m34274a4 = C4876d.m34274a(this.f13331m);
        int m34274a5 = C4876d.m34274a(this.f13332n);
        int i6 = this.f13333o;
        int i7 = this.f13334p;
        String str5 = this.f13335q;
        if (str5 != null) {
            i = str5.hashCode();
        }
        return (((((((((((((((((((((((((((((((hashCode * 31) + hashCode2) * 31) + hashCode3) * 31) + m34274a) * 31) + hashCode4) * 31) + i2) * 31) + hashCode5) * 31) + i3) * 31) + i4) * 31) + m34274a2) * 31) + m34274a3) * 31) + i5) * 31) + m34274a4) * 31) + m34274a5) * 31) + i6) * 31) + i7) * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("ImGroupInfo(groupId=");
        m8728C.append(this.f13319a);
        m8728C.append(", title=");
        m8728C.append(this.f13320b);
        m8728C.append(", avatar=");
        m8728C.append(this.f13321c);
        m8728C.append(", invitedDate=");
        m8728C.append(this.f13322d);
        m8728C.append(", invitedBy=");
        m8728C.append(this.f13323e);
        m8728C.append(", roles=");
        m8728C.append(this.f13324f);
        m8728C.append(", permissions=");
        m8728C.append(this.f13325g);
        m8728C.append(", notificationSettings=");
        m8728C.append(this.f13326h);
        m8728C.append(", historyStatus=");
        m8728C.append(this.f13327i);
        m8728C.append(", historySequenceNumber=");
        m8728C.append(this.f13328j);
        m8728C.append(", historyMessageCount=");
        m8728C.append(this.f13329k);
        m8728C.append(", areParticipantsStale=");
        m8728C.append(this.f13330l);
        m8728C.append(", currentSequenceNumber=");
        m8728C.append(this.f13331m);
        m8728C.append(", inviteNotificationDate=");
        m8728C.append(this.f13332n);
        m8728C.append(", inviteNotificationCount=");
        m8728C.append(this.f13333o);
        m8728C.append(", joinMode=");
        m8728C.append(this.f13334p);
        m8728C.append(", inviteKey=");
        return C22128a.m8618h(m8728C, this.f13335q, ")");
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        l.e(parcel, "parcel");
        parcel.writeString(this.f13319a);
        parcel.writeString(this.f13320b);
        parcel.writeString(this.f13321c);
        parcel.writeLong(this.f13322d);
        parcel.writeString(this.f13323e);
        parcel.writeInt(this.f13324f);
        this.f13325g.writeToParcel(parcel, 0);
        parcel.writeInt(this.f13326h);
        parcel.writeInt(this.f13327i);
        parcel.writeLong(this.f13328j);
        parcel.writeLong(this.f13329k);
        parcel.writeInt(this.f13330l ? 1 : 0);
        parcel.writeLong(this.f13331m);
        parcel.writeLong(this.f13332n);
        parcel.writeInt(this.f13333o);
        parcel.writeInt(this.f13334p);
        parcel.writeString(this.f13335q);
    }
}
