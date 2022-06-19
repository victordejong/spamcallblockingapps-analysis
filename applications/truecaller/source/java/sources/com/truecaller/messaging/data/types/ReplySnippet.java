package com.truecaller.messaging.data.types;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;
import java.util.List;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
/* loaded from: classes7-dex2jar.jar:com/truecaller/messaging/data/types/ReplySnippet.class */
public final class ReplySnippet implements Parcelable {
    public static final Parcelable.Creator<ReplySnippet> CREATOR = new C4212a();

    /* renamed from: a */
    public final long f13459a;

    /* renamed from: b */
    public final int f13460b;

    /* renamed from: c */
    public final List<Entity> f13461c;

    /* renamed from: d */
    public final String f13462d;

    /* renamed from: e */
    public final String f13463e;

    /* renamed from: f */
    public final Integer f13464f;

    /* renamed from: com.truecaller.messaging.data.types.ReplySnippet$a */
    /* loaded from: classes7-dex2jar.jar:com/truecaller/messaging/data/types/ReplySnippet$a.class */
    public static final class C4212a implements Parcelable.Creator<ReplySnippet> {
        @Override // android.os.Parcelable.Creator
        public ReplySnippet createFromParcel(Parcel parcel) {
            l.e(parcel, "in");
            long readLong = parcel.readLong();
            int readInt = parcel.readInt();
            int readInt2 = parcel.readInt();
            ArrayList arrayList = new ArrayList(readInt2);
            while (readInt2 != 0) {
                arrayList.add((Entity) parcel.readParcelable(ReplySnippet.class.getClassLoader()));
                readInt2--;
            }
            return new ReplySnippet(readLong, readInt, arrayList, parcel.readString(), parcel.readString(), parcel.readInt() != 0 ? Integer.valueOf(parcel.readInt()) : null);
        }

        @Override // android.os.Parcelable.Creator
        public ReplySnippet[] newArray(int i) {
            return new ReplySnippet[i];
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public ReplySnippet(long j, int i, List<? extends Entity> list, String str, String str2, Integer num) {
        l.e(list, "entities");
        this.f13459a = j;
        this.f13460b = i;
        this.f13461c = list;
        this.f13462d = str;
        this.f13463e = str2;
        this.f13464f = num;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public ReplySnippet(com.truecaller.messaging.data.types.Message r10) {
        /*
            r9 = this;
            r0 = r10
            java.lang.String r1 = "message"
            s1.z.c.l.e(r0, r1)
            r0 = r10
            long r0 = r0.f13380a
            r11 = r0
            r0 = r10
            int r0 = r0.f13386g
            r13 = r0
            r0 = r10
            com.truecaller.messaging.data.types.Entity[] r0 = r0.f13394o
            r14 = r0
            r0 = r14
            java.lang.String r1 = "message.entities"
            s1.z.c.l.d(r0, r1)
            r0 = r14
            java.util.List r0 = p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3897h3(r0)
            r14 = r0
            r0 = r10
            com.truecaller.data.entity.messaging.Participant r0 = r0.f13382c
            r15 = r0
            r0 = r15
            java.lang.String r1 = "message.participant"
            s1.z.c.l.d(r0, r1)
            r0 = r15
            java.lang.String r0 = p193e.p194a.p195a.p241i1.C6405h.m31301c(r0)
            r15 = r0
            r0 = r10
            com.truecaller.data.entity.messaging.Participant r0 = r0.f13382c
            r10 = r0
            r0 = r9
            r1 = r11
            r2 = r13
            r3 = r14
            r4 = r15
            r5 = r10
            java.lang.String r5 = r5.f11572e
            r6 = r10
            int r6 = r6.f11569b
            java.lang.Integer r6 = java.lang.Integer.valueOf(r6)
            r0.<init>(r1, r2, r3, r4, r5, r6)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.truecaller.messaging.data.types.ReplySnippet.<init>(com.truecaller.messaging.data.types.Message):void");
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof ReplySnippet)) {
                return false;
            }
            ReplySnippet replySnippet = (ReplySnippet) obj;
            return this.f13459a == replySnippet.f13459a && this.f13460b == replySnippet.f13460b && l.a(this.f13461c, replySnippet.f13461c) && l.a(this.f13462d, replySnippet.f13462d) && l.a(this.f13463e, replySnippet.f13463e) && l.a(this.f13464f, replySnippet.f13464f);
        }
        return true;
    }

    public int hashCode() {
        int m34274a = C4876d.m34274a(this.f13459a);
        int i = this.f13460b;
        List<Entity> list = this.f13461c;
        int i2 = 0;
        int hashCode = list != null ? list.hashCode() : 0;
        String str = this.f13462d;
        int hashCode2 = str != null ? str.hashCode() : 0;
        String str2 = this.f13463e;
        int hashCode3 = str2 != null ? str2.hashCode() : 0;
        Integer num = this.f13464f;
        if (num != null) {
            i2 = num.hashCode();
        }
        return (((((((((m34274a * 31) + i) * 31) + hashCode) * 31) + hashCode2) * 31) + hashCode3) * 31) + i2;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("ReplySnippet(id=");
        m8728C.append(this.f13459a);
        m8728C.append(", status=");
        m8728C.append(this.f13460b);
        m8728C.append(", entities=");
        m8728C.append(this.f13461c);
        m8728C.append(", participantName=");
        m8728C.append(this.f13462d);
        m8728C.append(", participantNormalizedAddress=");
        m8728C.append(this.f13463e);
        m8728C.append(", participantType=");
        return C22128a.m8689L2(m8728C, this.f13464f, ")");
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int i2;
        l.e(parcel, "parcel");
        parcel.writeLong(this.f13459a);
        parcel.writeInt(this.f13460b);
        List<Entity> list = this.f13461c;
        parcel.writeInt(list.size());
        for (Entity entity : list) {
            parcel.writeParcelable(entity, i);
        }
        parcel.writeString(this.f13462d);
        parcel.writeString(this.f13463e);
        Integer num = this.f13464f;
        if (num != null) {
            parcel.writeInt(1);
            i2 = num.intValue();
        } else {
            i2 = 0;
        }
        parcel.writeInt(i2);
    }
}
