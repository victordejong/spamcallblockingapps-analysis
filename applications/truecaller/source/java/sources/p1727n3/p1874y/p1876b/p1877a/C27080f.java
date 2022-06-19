package p1727n3.p1874y.p1876b.p1877a;

import android.os.SystemClock;
/* renamed from: n3.y.b.a.f */
/* loaded from: classes-dex2jar.jar:n3/y/b/a/f.class */
public final class C27080f extends Exception {

    /* renamed from: a */
    public final int f75698a;

    /* renamed from: b */
    public final Throwable f75699b;

    public C27080f(int i, Throwable th, int i2) {
        super(th);
        this.f75698a = i;
        this.f75699b = th;
        SystemClock.elapsedRealtime();
    }

    /* renamed from: a */
    public static C27080f m939a(Exception exc, int i) {
        return new C27080f(1, exc, i);
    }
}
