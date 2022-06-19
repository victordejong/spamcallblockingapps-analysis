package androidx.work.impl;

import android.os.Handler;
import android.os.Looper;
import androidx.core.p037os.C0858b;
import androidx.work.AbstractC3161r;
/* renamed from: androidx.work.impl.a */
/* loaded from: classes-dex2jar.jar:androidx/work/impl/a.class */
public final class C3002a implements AbstractC3161r {

    /* renamed from: a */
    private final Handler f11167a;

    public C3002a() {
        this.f11167a = C0858b.m44299a(Looper.getMainLooper());
    }

    public C3002a(Handler handler) {
        this.f11167a = handler;
    }

    @Override // androidx.work.AbstractC3161r
    /* renamed from: a */
    public final void mo39270a(long j, Runnable runnable) {
        this.f11167a.postDelayed(runnable, j);
    }

    @Override // androidx.work.AbstractC3161r
    /* renamed from: a */
    public final void mo39269a(Runnable runnable) {
        this.f11167a.removeCallbacks(runnable);
    }
}
