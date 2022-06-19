package com.truecaller.voip;

import android.os.Parcel;
import android.os.Parcelable;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
/* loaded from: classes15-dex2jar.jar:com/truecaller/voip/VoipGroupPushNotification.class */
public final class VoipGroupPushNotification implements Parcelable {
    public static final Parcelable.Creator<VoipGroupPushNotification> CREATOR = new C4788a();

    /* renamed from: a */
    public final long f16266a;

    /* renamed from: b */
    public final String f16267b;

    /* renamed from: c */
    public final String f16268c;

    /* renamed from: d */
    public final Long f16269d;

    /* renamed from: com.truecaller.voip.VoipGroupPushNotification$a */
    /* loaded from: classes15-dex2jar.jar:com/truecaller/voip/VoipGroupPushNotification$a.class */
    public static final class C4788a implements Parcelable.Creator<VoipGroupPushNotification> {
        @Override // android.os.Parcelable.Creator
        public VoipGroupPushNotification createFromParcel(Parcel parcel) {
            l.e(parcel, "in");
            return new VoipGroupPushNotification(parcel.readLong(), parcel.readString(), parcel.readString(), parcel.readInt() != 0 ? Long.valueOf(parcel.readLong()) : null);
        }

        @Override // android.os.Parcelable.Creator
        public VoipGroupPushNotification[] newArray(int i) {
            return new VoipGroupPushNotification[i];
        }
    }

    public VoipGroupPushNotification(long j, String str, String str2, Long l) {
        this.f16266a = j;
        this.f16267b = str;
        this.f16268c = str2;
        this.f16269d = l;
    }

    /* renamed from: a */
    public final String m34349a() {
        String str = this.f16267b;
        if (str != null) {
            return str;
        }
        throw new IllegalStateException("Channel id is null");
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof VoipGroupPushNotification)) {
                return false;
            }
            VoipGroupPushNotification voipGroupPushNotification = (VoipGroupPushNotification) obj;
            return this.f16266a == voipGroupPushNotification.f16266a && l.a(this.f16267b, voipGroupPushNotification.f16267b) && l.a(this.f16268c, voipGroupPushNotification.f16268c) && l.a(this.f16269d, voipGroupPushNotification.f16269d);
        }
        return true;
    }

    public int hashCode() {
        int m34274a = C4876d.m34274a(this.f16266a);
        String str = this.f16267b;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        String str2 = this.f16268c;
        int hashCode2 = str2 != null ? str2.hashCode() : 0;
        Long l = this.f16269d;
        if (l != null) {
            i = l.hashCode();
        }
        return (((((m34274a * 31) + hashCode) * 31) + hashCode2) * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("VoipGroupPushNotification(sentTime=");
        m8728C.append(this.f16266a);
        m8728C.append(", channelId=");
        m8728C.append(this.f16267b);
        m8728C.append(", senderId=");
        m8728C.append(this.f16268c);
        m8728C.append(", senderIdEpochSeconds=");
        m8728C.append(this.f16269d);
        m8728C.append(")");
        return m8728C.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        l.e(parcel, "parcel");
        parcel.writeLong(this.f16266a);
        parcel.writeString(this.f16267b);
        parcel.writeString(this.f16268c);
        Long l = this.f16269d;
        if (l == null) {
            parcel.writeInt(0);
            return;
        }
        parcel.writeInt(1);
        parcel.writeLong(l.longValue());
    }
}
