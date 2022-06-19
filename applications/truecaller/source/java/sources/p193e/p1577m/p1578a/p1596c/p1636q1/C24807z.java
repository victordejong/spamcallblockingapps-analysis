package p193e.p1577m.p1578a.p1596c.p1636q1;

import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
/* renamed from: e.m.a.c.q1.z */
/* loaded from: classes2-dex2jar.jar:e/m/a/c/q1/z.class */
public final class C24807z implements AbstractC24776f {
    @Override // p193e.p1577m.p1578a.p1596c.p1636q1.AbstractC24776f
    /* renamed from: a */
    public long mo4502a() {
        return SystemClock.elapsedRealtime();
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1636q1.AbstractC24776f
    /* renamed from: b */
    public long mo4501b() {
        return SystemClock.uptimeMillis();
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1636q1.AbstractC24776f
    /* renamed from: c */
    public C24767a0 mo4500c(Looper looper, Handler.Callback callback) {
        return new C24767a0(new Handler(looper, callback));
    }
}
