package p1727n3.p1834m0;

import android.app.Notification;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: n3.m0.i */
/* loaded from: classes-dex2jar.jar:n3/m0/i.class */
public final class C26833i {

    /* renamed from: a */
    public final int f75088a;

    /* renamed from: b */
    public final int f75089b;

    /* renamed from: c */
    public final Notification f75090c;

    public C26833i(int i, Notification notification) {
        this.f75088a = i;
        this.f75090c = notification;
        this.f75089b = 0;
    }

    public C26833i(int i, Notification notification, int i2) {
        this.f75088a = i;
        this.f75090c = notification;
        this.f75089b = i2;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || C26833i.class != obj.getClass()) {
            return false;
        }
        C26833i c26833i = (C26833i) obj;
        if (this.f75088a != c26833i.f75088a || this.f75089b != c26833i.f75089b) {
            return false;
        }
        return this.f75090c.equals(c26833i.f75090c);
    }

    public int hashCode() {
        int i = this.f75088a;
        return this.f75090c.hashCode() + (((i * 31) + this.f75089b) * 31);
    }

    public String toString() {
        StringBuilder m8704I = C22128a.m8704I("ForegroundInfo{", "mNotificationId=");
        m8704I.append(this.f75088a);
        m8704I.append(", mForegroundServiceType=");
        m8704I.append(this.f75089b);
        m8704I.append(", mNotification=");
        m8704I.append(this.f75090c);
        m8704I.append('}');
        return m8704I.toString();
    }
}
