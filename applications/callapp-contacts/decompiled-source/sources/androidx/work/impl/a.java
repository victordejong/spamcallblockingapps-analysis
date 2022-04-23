package androidx.work.impl;

import android.os.Handler;
import android.os.Looper;
import androidx.core.os.b;
import androidx.work.r;
/* loaded from: classes-dex2jar.jar:androidx/work/impl/a.class */
public final class a implements r {

    /* renamed from: a  reason: collision with root package name */
    private final Handler f5986a;

    public a() {
        this.f5986a = b.a(Looper.getMainLooper());
    }

    public a(Handler handler) {
        this.f5986a = handler;
    }

    @Override // androidx.work.r
    public final void a(long j, Runnable runnable) {
        this.f5986a.postDelayed(runnable, j);
    }

    @Override // androidx.work.r
    public final void a(Runnable runnable) {
        this.f5986a.removeCallbacks(runnable);
    }
}
