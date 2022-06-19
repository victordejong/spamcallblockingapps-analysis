package androidx.work;

import android.app.Notification;
/* renamed from: androidx.work.f */
/* loaded from: classes-dex2jar.jar:androidx/work/f.class */
public final class C2995f {

    /* renamed from: a */
    public final int f11153a;

    /* renamed from: b */
    public final int f11154b;

    /* renamed from: c */
    public final Notification f11155c;

    public C2995f(int i, Notification notification) {
        this(i, notification, 0);
    }

    public C2995f(int i, Notification notification, int i2) {
        this.f11153a = i;
        this.f11155c = notification;
        this.f11154b = i2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        C2995f c2995f = (C2995f) obj;
        if (this.f11153a != c2995f.f11153a || this.f11154b != c2995f.f11154b) {
            return false;
        }
        return this.f11155c.equals(c2995f.f11155c);
    }

    public final int hashCode() {
        return (((this.f11153a * 31) + this.f11154b) * 31) + this.f11155c.hashCode();
    }

    public final String toString() {
        return "ForegroundInfo{mNotificationId=" + this.f11153a + ", mForegroundServiceType=" + this.f11154b + ", mNotification=" + this.f11155c + '}';
    }
}
