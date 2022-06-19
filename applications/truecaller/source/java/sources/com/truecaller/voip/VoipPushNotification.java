package com.truecaller.voip;

import android.os.Parcel;
import android.os.Parcelable;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
/* loaded from: classes15-dex2jar.jar:com/truecaller/voip/VoipPushNotification.class */
public final class VoipPushNotification implements Parcelable {
    public static final Parcelable.Creator<VoipPushNotification> CREATOR = new C4789a();

    /* renamed from: a */
    public final long f16270a;

    /* renamed from: b */
    public final String f16271b;

    /* renamed from: c */
    public final String f16272c;

    /* renamed from: d */
    public final String f16273d;

    /* renamed from: e */
    public final String f16274e;

    /* renamed from: f */
    public final String f16275f;

    /* renamed from: g */
    public final Integer f16276g;

    /* renamed from: h */
    public final String f16277h;

    /* renamed from: i */
    public final String f16278i;

    /* renamed from: j */
    public final String f16279j;

    /* renamed from: k */
    public final Long f16280k;

    /* renamed from: l */
    public final String f16281l;

    /* renamed from: m */
    public final boolean f16282m;

    /* renamed from: com.truecaller.voip.VoipPushNotification$a */
    /* loaded from: classes15-dex2jar.jar:com/truecaller/voip/VoipPushNotification$a.class */
    public static final class C4789a implements Parcelable.Creator<VoipPushNotification> {
        @Override // android.os.Parcelable.Creator
        public VoipPushNotification createFromParcel(Parcel parcel) {
            l.e(parcel, "in");
            long readLong = parcel.readLong();
            String readString = parcel.readString();
            String readString2 = parcel.readString();
            String readString3 = parcel.readString();
            String readString4 = parcel.readString();
            String readString5 = parcel.readString();
            Long l = null;
            Integer valueOf = parcel.readInt() != 0 ? Integer.valueOf(parcel.readInt()) : null;
            String readString6 = parcel.readString();
            String readString7 = parcel.readString();
            String readString8 = parcel.readString();
            if (parcel.readInt() != 0) {
                l = Long.valueOf(parcel.readLong());
            }
            return new VoipPushNotification(readLong, readString, readString2, readString3, readString4, readString5, valueOf, readString6, readString7, readString8, l, parcel.readString(), parcel.readInt() != 0);
        }

        @Override // android.os.Parcelable.Creator
        public VoipPushNotification[] newArray(int i) {
            return new VoipPushNotification[i];
        }
    }

    public VoipPushNotification(long j, String str, String str2, String str3, String str4, String str5, Integer num, String str6, String str7, String str8, Long l, String str9, boolean z) {
        this.f16270a = j;
        this.f16271b = str;
        this.f16272c = str2;
        this.f16273d = str3;
        this.f16274e = str4;
        this.f16275f = str5;
        this.f16276g = num;
        this.f16277h = str6;
        this.f16278i = str7;
        this.f16279j = str8;
        this.f16280k = l;
        this.f16281l = str9;
        this.f16282m = z;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof VoipPushNotification)) {
                return false;
            }
            VoipPushNotification voipPushNotification = (VoipPushNotification) obj;
            return this.f16270a == voipPushNotification.f16270a && l.a(this.f16271b, voipPushNotification.f16271b) && l.a(this.f16272c, voipPushNotification.f16272c) && l.a(this.f16273d, voipPushNotification.f16273d) && l.a(this.f16274e, voipPushNotification.f16274e) && l.a(this.f16275f, voipPushNotification.f16275f) && l.a(this.f16276g, voipPushNotification.f16276g) && l.a(this.f16277h, voipPushNotification.f16277h) && l.a(this.f16278i, voipPushNotification.f16278i) && l.a(this.f16279j, voipPushNotification.f16279j) && l.a(this.f16280k, voipPushNotification.f16280k) && l.a(this.f16281l, voipPushNotification.f16281l) && this.f16282m == voipPushNotification.f16282m;
        }
        return true;
    }

    public int hashCode() {
        int m34274a = C4876d.m34274a(this.f16270a);
        String str = this.f16271b;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        String str2 = this.f16272c;
        int hashCode2 = str2 != null ? str2.hashCode() : 0;
        String str3 = this.f16273d;
        int hashCode3 = str3 != null ? str3.hashCode() : 0;
        String str4 = this.f16274e;
        int hashCode4 = str4 != null ? str4.hashCode() : 0;
        String str5 = this.f16275f;
        int hashCode5 = str5 != null ? str5.hashCode() : 0;
        Integer num = this.f16276g;
        int hashCode6 = num != null ? num.hashCode() : 0;
        String str6 = this.f16277h;
        int hashCode7 = str6 != null ? str6.hashCode() : 0;
        String str7 = this.f16278i;
        int hashCode8 = str7 != null ? str7.hashCode() : 0;
        String str8 = this.f16279j;
        int hashCode9 = str8 != null ? str8.hashCode() : 0;
        Long l = this.f16280k;
        int hashCode10 = l != null ? l.hashCode() : 0;
        String str9 = this.f16281l;
        if (str9 != null) {
            i = str9.hashCode();
        }
        boolean z = this.f16282m;
        int i2 = z ? 1 : 0;
        if (z) {
            i2 = 1;
        }
        return (((((((((((((((((((((((m34274a * 31) + hashCode) * 31) + hashCode2) * 31) + hashCode3) * 31) + hashCode4) * 31) + hashCode5) * 31) + hashCode6) * 31) + hashCode7) * 31) + hashCode8) * 31) + hashCode9) * 31) + hashCode10) * 31) + i) * 31) + i2;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("VoipPushNotification(sentTime=");
        m8728C.append(this.f16270a);
        m8728C.append(", action=");
        m8728C.append(this.f16271b);
        m8728C.append(", senderId=");
        m8728C.append(this.f16272c);
        m8728C.append(", senderNumber=");
        m8728C.append(this.f16273d);
        m8728C.append(", rtmToken=");
        m8728C.append(this.f16274e);
        m8728C.append(", rtcToken=");
        m8728C.append(this.f16275f);
        m8728C.append(", rtcTokenUid=");
        m8728C.append(this.f16276g);
        m8728C.append(", rtcEncryptionSecret=");
        m8728C.append(this.f16277h);
        m8728C.append(", rtcEncryptionMode=");
        m8728C.append(this.f16278i);
        m8728C.append(", channelId=");
        m8728C.append(this.f16279j);
        m8728C.append(", idExpiryEpochSeconds=");
        m8728C.append(this.f16280k);
        m8728C.append(", crossDcSenderId=");
        m8728C.append(this.f16281l);
        m8728C.append(", isCrossDc=");
        return C22128a.m8590o(m8728C, this.f16282m, ")");
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        l.e(parcel, "parcel");
        parcel.writeLong(this.f16270a);
        parcel.writeString(this.f16271b);
        parcel.writeString(this.f16272c);
        parcel.writeString(this.f16273d);
        parcel.writeString(this.f16274e);
        parcel.writeString(this.f16275f);
        Integer num = this.f16276g;
        if (num != null) {
            parcel.writeInt(1);
            parcel.writeInt(num.intValue());
        } else {
            parcel.writeInt(0);
        }
        parcel.writeString(this.f16277h);
        parcel.writeString(this.f16278i);
        parcel.writeString(this.f16279j);
        Long l = this.f16280k;
        if (l != null) {
            parcel.writeInt(1);
            parcel.writeLong(l.longValue());
        } else {
            parcel.writeInt(0);
        }
        parcel.writeString(this.f16281l);
        parcel.writeInt(this.f16282m ? 1 : 0);
    }
}
