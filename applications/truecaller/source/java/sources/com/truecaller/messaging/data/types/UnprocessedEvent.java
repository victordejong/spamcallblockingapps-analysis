package com.truecaller.messaging.data.types;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
/* loaded from: classes7-dex2jar.jar:com/truecaller/messaging/data/types/UnprocessedEvent.class */
public final class UnprocessedEvent implements Parcelable {
    public static final Parcelable.Creator<UnprocessedEvent> CREATOR = new C4214a();

    /* renamed from: a */
    public final int f13468a;

    /* renamed from: b */
    public final byte[] f13469b;

    /* renamed from: c */
    public final String f13470c;

    /* renamed from: d */
    public final String f13471d;

    /* renamed from: e */
    public final long f13472e;

    /* renamed from: f */
    public final int f13473f;

    /* renamed from: com.truecaller.messaging.data.types.UnprocessedEvent$a */
    /* loaded from: classes7-dex2jar.jar:com/truecaller/messaging/data/types/UnprocessedEvent$a.class */
    public static final class C4214a implements Parcelable.Creator<UnprocessedEvent> {
        @Override // android.os.Parcelable.Creator
        public UnprocessedEvent createFromParcel(Parcel parcel) {
            l.e(parcel, "in");
            return new UnprocessedEvent(parcel.readInt(), parcel.createByteArray(), parcel.readString(), parcel.readString(), parcel.readLong(), parcel.readInt());
        }

        @Override // android.os.Parcelable.Creator
        public UnprocessedEvent[] newArray(int i) {
            return new UnprocessedEvent[i];
        }
    }

    public UnprocessedEvent(int i, byte[] bArr, String str, String str2, long j, int i2) {
        l.e(bArr, "eventData");
        l.e(str, "groupId");
        l.e(str2, "referenceRawId");
        this.f13468a = i;
        this.f13469b = bArr;
        this.f13470c = str;
        this.f13471d = str2;
        this.f13472e = j;
        this.f13473f = i2;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof UnprocessedEvent)) {
                return false;
            }
            UnprocessedEvent unprocessedEvent = (UnprocessedEvent) obj;
            return this.f13468a == unprocessedEvent.f13468a && l.a(this.f13469b, unprocessedEvent.f13469b) && l.a(this.f13470c, unprocessedEvent.f13470c) && l.a(this.f13471d, unprocessedEvent.f13471d) && this.f13472e == unprocessedEvent.f13472e && this.f13473f == unprocessedEvent.f13473f;
        }
        return true;
    }

    public int hashCode() {
        int i = this.f13468a;
        byte[] bArr = this.f13469b;
        int i2 = 0;
        int hashCode = bArr != null ? Arrays.hashCode(bArr) : 0;
        String str = this.f13470c;
        int hashCode2 = str != null ? str.hashCode() : 0;
        String str2 = this.f13471d;
        if (str2 != null) {
            i2 = str2.hashCode();
        }
        return (((((((((i * 31) + hashCode) * 31) + hashCode2) * 31) + i2) * 31) + C4876d.m34274a(this.f13472e)) * 31) + this.f13473f;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("UnprocessedEvent(id=");
        m8728C.append(this.f13468a);
        m8728C.append(", eventData=");
        m8728C.append(Arrays.toString(this.f13469b));
        m8728C.append(", groupId=");
        m8728C.append(this.f13470c);
        m8728C.append(", referenceRawId=");
        m8728C.append(this.f13471d);
        m8728C.append(", seqNumber=");
        m8728C.append(this.f13472e);
        m8728C.append(", eventType=");
        return C22128a.m8697J2(m8728C, this.f13473f, ")");
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        l.e(parcel, "parcel");
        parcel.writeInt(this.f13468a);
        parcel.writeByteArray(this.f13469b);
        parcel.writeString(this.f13470c);
        parcel.writeString(this.f13471d);
        parcel.writeLong(this.f13472e);
        parcel.writeInt(this.f13473f);
    }
}
