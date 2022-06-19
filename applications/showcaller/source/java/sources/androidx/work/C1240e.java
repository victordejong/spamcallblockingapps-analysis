package androidx.work;

import android.app.Notification;
/* renamed from: androidx.work.e */
/* loaded from: classes-dex2jar.jar:androidx/work/e.class */
public final class C1240e {

    /* renamed from: a */
    private final int f5300a;

    /* renamed from: b */
    private final int f5301b;

    /* renamed from: c */
    private final Notification f5302c;

    public C1240e(int i, Notification notification, int i2) {
        this.f5300a = i;
        this.f5302c = notification;
        this.f5301b = i2;
    }

    /* renamed from: a */
    public int m30542a() {
        return this.f5301b;
    }

    /* renamed from: b */
    public Notification m30541b() {
        return this.f5302c;
    }

    /* renamed from: c */
    public int m30540c() {
        return this.f5300a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || C1240e.class != obj.getClass()) {
            return false;
        }
        C1240e c1240e = (C1240e) obj;
        if (this.f5300a != c1240e.f5300a || this.f5301b != c1240e.f5301b) {
            return false;
        }
        return this.f5302c.equals(c1240e.f5302c);
    }

    public int hashCode() {
        return (((this.f5300a * 31) + this.f5301b) * 31) + this.f5302c.hashCode();
    }

    public String toString() {
        return "ForegroundInfo{mNotificationId=" + this.f5300a + ", mForegroundServiceType=" + this.f5301b + ", mNotification=" + this.f5302c + '}';
    }
}
