package com.truecaller.messaging.data.types;

import android.os.Parcel;
import android.os.Parcelable;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
/* loaded from: classes7-dex2jar.jar:com/truecaller/messaging/data/types/Reaction.class */
public final class Reaction implements Parcelable {
    public static final Parcelable.Creator<Reaction> CREATOR = new C4211a();

    /* renamed from: a */
    public final long f13451a;

    /* renamed from: b */
    public final long f13452b;

    /* renamed from: c */
    public final String f13453c;

    /* renamed from: d */
    public final String f13454d;

    /* renamed from: e */
    public final long f13455e;

    /* renamed from: f */
    public final int f13456f;

    /* renamed from: g */
    public final long f13457g;

    /* renamed from: h */
    public final String f13458h;

    /* renamed from: com.truecaller.messaging.data.types.Reaction$a */
    /* loaded from: classes7-dex2jar.jar:com/truecaller/messaging/data/types/Reaction$a.class */
    public static final class C4211a implements Parcelable.Creator<Reaction> {
        @Override // android.os.Parcelable.Creator
        public Reaction createFromParcel(Parcel parcel) {
            l.e(parcel, "in");
            return new Reaction(parcel.readLong(), parcel.readLong(), parcel.readString(), parcel.readString(), parcel.readLong(), parcel.readInt(), parcel.readLong(), parcel.readString());
        }

        @Override // android.os.Parcelable.Creator
        public Reaction[] newArray(int i) {
            return new Reaction[i];
        }
    }

    public Reaction(long j, long j2, String str, String str2, long j3, int i, long j4, String str3) {
        l.e(str, "fromPeerId");
        this.f13451a = j;
        this.f13452b = j2;
        this.f13453c = str;
        this.f13454d = str2;
        this.f13455e = j3;
        this.f13456f = i;
        this.f13457g = j4;
        this.f13458h = str3;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r15v1 */
    /* JADX WARN: Type inference failed for: r15v2 */
    /* JADX WARN: Type inference failed for: r15v3 */
    /* JADX WARN: Type inference failed for: r17v1 */
    /* JADX WARN: Type inference failed for: r17v2 */
    /* JADX WARN: Type inference failed for: r17v3 */
    /* JADX WARN: Type inference failed for: r24v1 */
    /* JADX WARN: Type inference failed for: r24v2 */
    /* JADX WARN: Type inference failed for: r24v3 */
    public /* synthetic */ Reaction(long j, long j2, String str, String str2, long j3, int i, long j4, String str3, int i2) {
        this((i2 & 1) != 0 ? -1 : j, (i2 & 2) != 0 ? -1 : j2, str, (i2 & 8) != 0 ? null : str2, j3, i, (i2 & 64) != 0 ? -1 : j4, null);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof Reaction)) {
                return false;
            }
            Reaction reaction = (Reaction) obj;
            return this.f13451a == reaction.f13451a && this.f13452b == reaction.f13452b && l.a(this.f13453c, reaction.f13453c) && l.a(this.f13454d, reaction.f13454d) && this.f13455e == reaction.f13455e && this.f13456f == reaction.f13456f && this.f13457g == reaction.f13457g && l.a(this.f13458h, reaction.f13458h);
        }
        return true;
    }

    public int hashCode() {
        int m34274a = C4876d.m34274a(this.f13451a);
        int m34274a2 = C4876d.m34274a(this.f13452b);
        String str = this.f13453c;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        String str2 = this.f13454d;
        int hashCode2 = str2 != null ? str2.hashCode() : 0;
        int m34274a3 = C4876d.m34274a(this.f13455e);
        int i2 = this.f13456f;
        int m34274a4 = C4876d.m34274a(this.f13457g);
        String str3 = this.f13458h;
        if (str3 != null) {
            i = str3.hashCode();
        }
        return (((((((((((((m34274a * 31) + m34274a2) * 31) + hashCode) * 31) + hashCode2) * 31) + m34274a3) * 31) + i2) * 31) + m34274a4) * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("Reaction(id=");
        m8728C.append(this.f13451a);
        m8728C.append(", messageId=");
        m8728C.append(this.f13452b);
        m8728C.append(", fromPeerId=");
        m8728C.append(this.f13453c);
        m8728C.append(", emoji=");
        m8728C.append(this.f13454d);
        m8728C.append(", date=");
        m8728C.append(this.f13455e);
        m8728C.append(", status=");
        m8728C.append(this.f13456f);
        m8728C.append(", conversaitonId=");
        m8728C.append(this.f13457g);
        m8728C.append(", groupName=");
        return C22128a.m8618h(m8728C, this.f13458h, ")");
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        l.e(parcel, "parcel");
        parcel.writeLong(this.f13451a);
        parcel.writeLong(this.f13452b);
        parcel.writeString(this.f13453c);
        parcel.writeString(this.f13454d);
        parcel.writeLong(this.f13455e);
        parcel.writeInt(this.f13456f);
        parcel.writeLong(this.f13457g);
        parcel.writeString(this.f13458h);
    }
}
