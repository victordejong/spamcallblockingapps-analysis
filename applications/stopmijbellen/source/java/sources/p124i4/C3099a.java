package p124i4;

import android.app.PendingIntent;
/* renamed from: i4.a */
/* loaded from: classes-dex2jar.jar:i4/a.class */
public class C3099a {

    /* renamed from: a */
    public final int f10488a;

    /* renamed from: b */
    public final int f10489b;

    /* renamed from: c */
    public final long f10490c;

    /* renamed from: d */
    public final long f10491d;

    /* renamed from: e */
    public final PendingIntent f10492e;

    /* renamed from: f */
    public final PendingIntent f10493f;

    /* renamed from: g */
    public final PendingIntent f10494g;

    /* renamed from: h */
    public final PendingIntent f10495h;

    /* renamed from: i */
    public boolean f10496i = false;

    public C3099a(String str, int i, int i2, int i3, Integer num, int i4, long j, long j2, long j3, long j4, PendingIntent pendingIntent, PendingIntent pendingIntent2, PendingIntent pendingIntent3, PendingIntent pendingIntent4) {
        this.f10488a = i2;
        this.f10489b = i3;
        this.f10490c = j3;
        this.f10491d = j4;
        this.f10492e = pendingIntent;
        this.f10493f = pendingIntent2;
        this.f10494g = pendingIntent3;
        this.f10495h = pendingIntent4;
    }

    /* renamed from: a */
    public final PendingIntent m2654a(AbstractC3101c abstractC3101c) {
        if (abstractC3101c.mo2599b() == 0) {
            PendingIntent pendingIntent = this.f10493f;
            if (pendingIntent != null) {
                return pendingIntent;
            }
            if (!m2653b(abstractC3101c)) {
                return null;
            }
            return this.f10495h;
        } else if (abstractC3101c.mo2599b() != 1) {
            return null;
        } else {
            PendingIntent pendingIntent2 = this.f10492e;
            if (pendingIntent2 != null) {
                return pendingIntent2;
            }
            if (!m2653b(abstractC3101c)) {
                return null;
            }
            return this.f10494g;
        }
    }

    /* renamed from: b */
    public final boolean m2653b(AbstractC3101c abstractC3101c) {
        return abstractC3101c.mo2600a() && this.f10490c <= this.f10491d;
    }
}
