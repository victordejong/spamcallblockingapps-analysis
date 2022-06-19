package com.truecaller.voip;

import android.os.Parcel;
import android.os.Parcelable;
import com.razorpay.AnalyticsConstants;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
/* loaded from: classes15-dex2jar.jar:com/truecaller/voip/VoipUser.class */
public final class VoipUser implements Parcelable {
    public static final Parcelable.Creator<VoipUser> CREATOR = new C4790a();

    /* renamed from: a */
    public final String f16283a;

    /* renamed from: b */
    public final String f16284b;

    /* renamed from: c */
    public final String f16285c;

    /* renamed from: d */
    public final String f16286d;

    /* renamed from: e */
    public final boolean f16287e;

    /* renamed from: f */
    public final Integer f16288f;

    /* renamed from: g */
    public final VoipUserBadge f16289g;

    /* renamed from: h */
    public final Integer f16290h;

    /* renamed from: i */
    public final boolean f16291i;

    /* renamed from: j */
    public final boolean f16292j;

    /* renamed from: com.truecaller.voip.VoipUser$a */
    /* loaded from: classes15-dex2jar.jar:com/truecaller/voip/VoipUser$a.class */
    public static final class C4790a implements Parcelable.Creator<VoipUser> {
        @Override // android.os.Parcelable.Creator
        public VoipUser createFromParcel(Parcel parcel) {
            l.e(parcel, "in");
            String readString = parcel.readString();
            String readString2 = parcel.readString();
            String readString3 = parcel.readString();
            String readString4 = parcel.readString();
            boolean z = parcel.readInt() != 0;
            Integer num = null;
            Integer valueOf = parcel.readInt() != 0 ? Integer.valueOf(parcel.readInt()) : null;
            VoipUserBadge createFromParcel = VoipUserBadge.CREATOR.createFromParcel(parcel);
            if (parcel.readInt() != 0) {
                num = Integer.valueOf(parcel.readInt());
            }
            return new VoipUser(readString, readString2, readString3, readString4, z, valueOf, createFromParcel, num, parcel.readInt() != 0, parcel.readInt() != 0);
        }

        @Override // android.os.Parcelable.Creator
        public VoipUser[] newArray(int i) {
            return new VoipUser[i];
        }
    }

    public VoipUser(String str, String str2, String str3, String str4, boolean z, Integer num, VoipUserBadge voipUserBadge, Integer num2, boolean z2, boolean z3) {
        l.e(str, "id");
        l.e(str2, "number");
        l.e(str3, AnalyticsConstants.NAME);
        l.e(voipUserBadge, "badge");
        this.f16283a = str;
        this.f16284b = str2;
        this.f16285c = str3;
        this.f16286d = str4;
        this.f16287e = z;
        this.f16288f = num;
        this.f16289g = voipUserBadge;
        this.f16290h = num2;
        this.f16291i = z2;
        this.f16292j = z3;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof VoipUser)) {
                return false;
            }
            VoipUser voipUser = (VoipUser) obj;
            return l.a(this.f16283a, voipUser.f16283a) && l.a(this.f16284b, voipUser.f16284b) && l.a(this.f16285c, voipUser.f16285c) && l.a(this.f16286d, voipUser.f16286d) && this.f16287e == voipUser.f16287e && l.a(this.f16288f, voipUser.f16288f) && l.a(this.f16289g, voipUser.f16289g) && l.a(this.f16290h, voipUser.f16290h) && this.f16291i == voipUser.f16291i && this.f16292j == voipUser.f16292j;
        }
        return true;
    }

    public int hashCode() {
        String str = this.f16283a;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        String str2 = this.f16284b;
        int hashCode2 = str2 != null ? str2.hashCode() : 0;
        String str3 = this.f16285c;
        int hashCode3 = str3 != null ? str3.hashCode() : 0;
        String str4 = this.f16286d;
        int hashCode4 = str4 != null ? str4.hashCode() : 0;
        boolean z = this.f16287e;
        int i2 = 1;
        int i3 = z ? 1 : 0;
        if (z) {
            i3 = 1;
        }
        Integer num = this.f16288f;
        int hashCode5 = num != null ? num.hashCode() : 0;
        VoipUserBadge voipUserBadge = this.f16289g;
        int hashCode6 = voipUserBadge != null ? voipUserBadge.hashCode() : 0;
        Integer num2 = this.f16290h;
        if (num2 != null) {
            i = num2.hashCode();
        }
        boolean z2 = this.f16291i;
        int i4 = z2 ? 1 : 0;
        if (z2) {
            i4 = 1;
        }
        boolean z3 = this.f16292j;
        if (!z3) {
            i2 = z3 ? 1 : 0;
        }
        return (((((((((((((((((hashCode * 31) + hashCode2) * 31) + hashCode3) * 31) + hashCode4) * 31) + i3) * 31) + hashCode5) * 31) + hashCode6) * 31) + i) * 31) + i4) * 31) + i2;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("VoipUser(id=");
        m8728C.append(this.f16283a);
        m8728C.append(", number=");
        m8728C.append(this.f16284b);
        m8728C.append(", name=");
        m8728C.append(this.f16285c);
        m8728C.append(", pictureUrl=");
        m8728C.append(this.f16286d);
        m8728C.append(", blocked=");
        m8728C.append(this.f16287e);
        m8728C.append(", spamScore=");
        m8728C.append(this.f16288f);
        m8728C.append(", badge=");
        m8728C.append(this.f16289g);
        m8728C.append(", rtcUid=");
        m8728C.append(this.f16290h);
        m8728C.append(", isPhoneBookUser=");
        m8728C.append(this.f16291i);
        m8728C.append(", isUnknown=");
        return C22128a.m8590o(m8728C, this.f16292j, ")");
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        l.e(parcel, "parcel");
        parcel.writeString(this.f16283a);
        parcel.writeString(this.f16284b);
        parcel.writeString(this.f16285c);
        parcel.writeString(this.f16286d);
        parcel.writeInt(this.f16287e ? 1 : 0);
        Integer num = this.f16288f;
        if (num != null) {
            parcel.writeInt(1);
            parcel.writeInt(num.intValue());
        } else {
            parcel.writeInt(0);
        }
        this.f16289g.writeToParcel(parcel, 0);
        Integer num2 = this.f16290h;
        if (num2 != null) {
            parcel.writeInt(1);
            parcel.writeInt(num2.intValue());
        } else {
            parcel.writeInt(0);
        }
        parcel.writeInt(this.f16291i ? 1 : 0);
        parcel.writeInt(this.f16292j ? 1 : 0);
    }
}
