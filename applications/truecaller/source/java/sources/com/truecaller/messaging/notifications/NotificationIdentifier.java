package com.truecaller.messaging.notifications;

import android.os.Parcel;
import android.os.Parcelable;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
/* loaded from: classes7-dex2jar.jar:com/truecaller/messaging/notifications/NotificationIdentifier.class */
public final class NotificationIdentifier implements Parcelable {
    public static final Parcelable.Creator<NotificationIdentifier> CREATOR = new C4237a();

    /* renamed from: a */
    public final int f13653a;

    /* renamed from: b */
    public final String f13654b;

    /* renamed from: c */
    public final int f13655c;

    /* renamed from: com.truecaller.messaging.notifications.NotificationIdentifier$a */
    /* loaded from: classes7-dex2jar.jar:com/truecaller/messaging/notifications/NotificationIdentifier$a.class */
    public static final class C4237a implements Parcelable.Creator<NotificationIdentifier> {
        @Override // android.os.Parcelable.Creator
        public NotificationIdentifier createFromParcel(Parcel parcel) {
            l.e(parcel, "in");
            return new NotificationIdentifier(parcel.readInt(), parcel.readString(), parcel.readInt());
        }

        @Override // android.os.Parcelable.Creator
        public NotificationIdentifier[] newArray(int i) {
            return new NotificationIdentifier[i];
        }
    }

    public NotificationIdentifier(int i, String str, int i2) {
        this.f13653a = i;
        this.f13654b = str;
        this.f13655c = i2;
    }

    public NotificationIdentifier(int i, String str, int i2, int i3) {
        i2 = (i3 & 4) != 0 ? -1 : i2;
        this.f13653a = i;
        this.f13654b = null;
        this.f13655c = i2;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof NotificationIdentifier)) {
                return false;
            }
            NotificationIdentifier notificationIdentifier = (NotificationIdentifier) obj;
            return this.f13653a == notificationIdentifier.f13653a && l.a(this.f13654b, notificationIdentifier.f13654b) && this.f13655c == notificationIdentifier.f13655c;
        }
        return true;
    }

    public int hashCode() {
        int i = this.f13653a;
        String str = this.f13654b;
        return (((i * 31) + (str != null ? str.hashCode() : 0)) * 31) + this.f13655c;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("NotificationIdentifier(notificationId=");
        m8728C.append(this.f13653a);
        m8728C.append(", notificationTag=");
        m8728C.append(this.f13654b);
        m8728C.append(", requestId=");
        return C22128a.m8697J2(m8728C, this.f13655c, ")");
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        l.e(parcel, "parcel");
        parcel.writeInt(this.f13653a);
        parcel.writeString(this.f13654b);
        parcel.writeInt(this.f13655c);
    }
}
