package p012b.p076s.p078b.p079a.p080a1;

import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
/* renamed from: b.s.b.a.a1.w */
/* loaded from: classes-dex2jar.jar:b/s/b/a/a1/w.class */
public final class C1193w implements AbstractC1162b {
    @Override // p012b.p076s.p078b.p079a.p080a1.AbstractC1162b
    /* renamed from: a */
    public long mo34313a() {
        return SystemClock.elapsedRealtime();
    }

    @Override // p012b.p076s.p078b.p079a.p080a1.AbstractC1162b
    /* renamed from: a */
    public AbstractC1174i mo34312a(Looper looper, Handler.Callback callback) {
        return new C1194x(new Handler(looper, callback));
    }

    @Override // p012b.p076s.p078b.p079a.p080a1.AbstractC1162b
    /* renamed from: b */
    public long mo34311b() {
        return SystemClock.uptimeMillis();
    }
}
