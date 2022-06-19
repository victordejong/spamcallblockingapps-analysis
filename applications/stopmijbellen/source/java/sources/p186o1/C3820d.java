package p186o1;

import android.app.Notification;
/* renamed from: o1.d */
/* loaded from: classes-dex2jar.jar:o1/d.class */
public final class C3820d {

    /* renamed from: a */
    public final int f12307a;

    /* renamed from: b */
    public final int f12308b;

    /* renamed from: c */
    public final Notification f12309c;

    public C3820d(int i, Notification notification, int i2) {
        this.f12307a = i;
        this.f12309c = notification;
        this.f12308b = i2;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || C3820d.class != obj.getClass()) {
            return false;
        }
        C3820d c3820d = (C3820d) obj;
        if (this.f12307a != c3820d.f12307a || this.f12308b != c3820d.f12308b) {
            return false;
        }
        return this.f12309c.equals(c3820d.f12309c);
    }

    public int hashCode() {
        int i = this.f12307a;
        return this.f12309c.hashCode() + (((i * 31) + this.f12308b) * 31);
    }

    public String toString() {
        return "ForegroundInfo{mNotificationId=" + this.f12307a + ", mForegroundServiceType=" + this.f12308b + ", mNotification=" + this.f12309c + '}';
    }
}
