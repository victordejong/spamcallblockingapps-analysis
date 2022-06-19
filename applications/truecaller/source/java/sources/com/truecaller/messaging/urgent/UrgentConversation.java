package com.truecaller.messaging.urgent;

import android.os.Parcel;
import android.os.Parcelable;
import com.truecaller.messaging.data.types.Conversation;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
/* loaded from: classes11-dex2jar.jar:com/truecaller/messaging/urgent/UrgentConversation.class */
public final class UrgentConversation implements Parcelable {
    public static final Parcelable.Creator<UrgentConversation> CREATOR = new C4270a();

    /* renamed from: a */
    public final Conversation f13900a;

    /* renamed from: b */
    public final int f13901b;

    /* renamed from: c */
    public final long f13902c;

    /* renamed from: com.truecaller.messaging.urgent.UrgentConversation$a */
    /* loaded from: classes11-dex2jar.jar:com/truecaller/messaging/urgent/UrgentConversation$a.class */
    public static final class C4270a implements Parcelable.Creator<UrgentConversation> {
        @Override // android.os.Parcelable.Creator
        public UrgentConversation createFromParcel(Parcel parcel) {
            l.e(parcel, "in");
            return new UrgentConversation((Conversation) parcel.readParcelable(UrgentConversation.class.getClassLoader()), parcel.readInt(), parcel.readLong());
        }

        @Override // android.os.Parcelable.Creator
        public UrgentConversation[] newArray(int i) {
            return new UrgentConversation[i];
        }
    }

    public UrgentConversation(Conversation conversation, int i, long j) {
        l.e(conversation, "conversation");
        this.f13900a = conversation;
        this.f13901b = i;
        this.f13902c = j;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v9, types: [long] */
    /* JADX WARN: Type inference failed for: r10v1 */
    /* JADX WARN: Type inference failed for: r10v2 */
    /* JADX WARN: Type inference failed for: r10v3 */
    /* renamed from: a */
    public static UrgentConversation m34877a(UrgentConversation urgentConversation, Conversation conversation, int i, long j, int i2) {
        Conversation conversation2 = (i2 & 1) != 0 ? urgentConversation.f13900a : null;
        if ((i2 & 2) != 0) {
            i = urgentConversation.f13901b;
        }
        ?? r10 = j;
        if ((i2 & 4) != 0) {
            r10 = urgentConversation.f13902c;
        }
        l.e(conversation2, "conversation");
        return new UrgentConversation(conversation2, i, r10);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof UrgentConversation)) {
                return false;
            }
            UrgentConversation urgentConversation = (UrgentConversation) obj;
            return l.a(this.f13900a, urgentConversation.f13900a) && this.f13901b == urgentConversation.f13901b && this.f13902c == urgentConversation.f13902c;
        }
        return true;
    }

    public int hashCode() {
        Conversation conversation = this.f13900a;
        return ((((conversation != null ? conversation.hashCode() : 0) * 31) + this.f13901b) * 31) + C4876d.m34274a(this.f13902c);
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("UrgentConversation(conversation=");
        m8728C.append(this.f13900a);
        m8728C.append(", unreadCount=");
        m8728C.append(this.f13901b);
        m8728C.append(", openElapsedRealtime=");
        return C22128a.m8693K2(m8728C, this.f13902c, ")");
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        l.e(parcel, "parcel");
        parcel.writeParcelable(this.f13900a, i);
        parcel.writeInt(this.f13901b);
        parcel.writeLong(this.f13902c);
    }
}
