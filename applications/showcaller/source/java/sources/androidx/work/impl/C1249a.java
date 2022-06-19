package androidx.work.impl;

import android.os.Handler;
import android.os.Looper;
import androidx.core.p008os.C0626d;
import androidx.work.AbstractC1416o;
/* renamed from: androidx.work.impl.a */
/* loaded from: classes-dex2jar.jar:androidx/work/impl/a.class */
public class C1249a implements AbstractC1416o {

    /* renamed from: a */
    private final Handler f5314a = C0626d.m33194a(Looper.getMainLooper());

    @Override // androidx.work.AbstractC1416o
    /* renamed from: a */
    public void mo30148a(long j, Runnable runnable) {
        this.f5314a.postDelayed(runnable, j);
    }

    @Override // androidx.work.AbstractC1416o
    /* renamed from: b */
    public void mo30147b(Runnable runnable) {
        this.f5314a.removeCallbacks(runnable);
    }
}
