package androidx.work;

import android.app.Notification;
/* loaded from: classes-dex2jar.jar:androidx/work/f.class */
public final class f {

    /* renamed from: a  reason: collision with root package name */
    public final int f5980a;

    /* renamed from: b  reason: collision with root package name */
    public final int f5981b;

    /* renamed from: c  reason: collision with root package name */
    public final Notification f5982c;

    public f(int i, Notification notification) {
        this(i, notification, 0);
    }

    public f(int i, Notification notification, int i2) {
        this.f5980a = i;
        this.f5982c = notification;
        this.f5981b = i2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        f fVar = (f) obj;
        if (this.f5980a == fVar.f5980a && this.f5981b == fVar.f5981b) {
            return this.f5982c.equals(fVar.f5982c);
        }
        return false;
    }

    public final int hashCode() {
        return (((this.f5980a * 31) + this.f5981b) * 31) + this.f5982c.hashCode();
    }

    public final String toString() {
        return "ForegroundInfo{mNotificationId=" + this.f5980a + ", mForegroundServiceType=" + this.f5981b + ", mNotification=" + this.f5982c + '}';
    }
}
