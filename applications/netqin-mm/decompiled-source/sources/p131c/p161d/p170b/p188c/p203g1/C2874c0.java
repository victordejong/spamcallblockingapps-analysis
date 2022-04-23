package p131c.p161d.p170b.p188c.p203g1;

import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
/* renamed from: c.d.b.c.g1.c0 */
/* loaded from: classes-dex2jar.jar:c/d/b/c/g1/c0.class */
public final class C2874c0 implements AbstractC2882g {
    @Override // p131c.p161d.p170b.p188c.p203g1.AbstractC2882g
    /* renamed from: a */
    public long mo28705a() {
        return SystemClock.elapsedRealtime();
    }

    @Override // p131c.p161d.p170b.p188c.p203g1.AbstractC2882g
    /* renamed from: a */
    public AbstractC2893n mo28704a(Looper looper, Handler.Callback callback) {
        return new C2876d0(new Handler(looper, callback));
    }

    @Override // p131c.p161d.p170b.p188c.p203g1.AbstractC2882g
    /* renamed from: b */
    public long mo28703b() {
        return SystemClock.uptimeMillis();
    }
}
