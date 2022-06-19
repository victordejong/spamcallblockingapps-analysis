package androidx.work;

import android.app.Notification;
/* renamed from: androidx.work.h */
/* loaded from: classes-dex2jar.jar:androidx/work/h.class */
public final class C1137h {

    /* renamed from: a */
    private final int f3926a;

    /* renamed from: b */
    private final int f3927b;

    /* renamed from: c */
    private final Notification f3928c;

    public C1137h(int i, Notification notification, int i2) {
        this.f3926a = i;
        this.f3928c = notification;
        this.f3927b = i2;
    }

    /* renamed from: a */
    public int m17907a() {
        return this.f3926a;
    }

    /* renamed from: b */
    public int m17906b() {
        return this.f3927b;
    }

    /* renamed from: c */
    public Notification m17905c() {
        return this.f3928c;
    }

    public boolean equals(Object obj) {
        boolean z;
        if (this == obj) {
            z = true;
        } else {
            z = false;
            if (obj != null) {
                z = false;
                if (getClass() == obj.getClass()) {
                    C1137h c1137h = (C1137h) obj;
                    z = false;
                    if (this.f3926a == c1137h.f3926a) {
                        z = false;
                        if (this.f3927b == c1137h.f3927b) {
                            z = this.f3928c.equals(c1137h.f3928c);
                        }
                    }
                }
            }
        }
        return z;
    }

    public int hashCode() {
        return (((this.f3926a * 31) + this.f3927b) * 31) + this.f3928c.hashCode();
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("ForegroundInfo{");
        sb.append("mNotificationId=").append(this.f3926a);
        sb.append(", mForegroundServiceType=").append(this.f3927b);
        sb.append(", mNotification=").append(this.f3928c);
        sb.append('}');
        return sb.toString();
    }
}
