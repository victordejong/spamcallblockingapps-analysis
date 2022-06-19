package com.google.android.gms.internal.ads;

import android.os.Handler;
import android.view.Surface;
import java.util.Objects;
/* renamed from: com.google.android.gms.internal.ads.jj */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/jj.class */
public final class C6629jj {

    /* renamed from: a */
    private final Handler f24891a;

    /* renamed from: b */
    private final AbstractC6666kj f24892b;

    public C6629jj(Handler handler, AbstractC6666kj abstractC6666kj) {
        Objects.requireNonNull(handler);
        this.f24891a = handler;
        this.f24892b = abstractC6666kj;
    }

    /* renamed from: b */
    public final void m14114b(C6511gd c6511gd) {
        this.f24891a.post(new RunnableC6368cj(this, c6511gd));
    }

    /* renamed from: c */
    public final void m14113c(String str, long j, long j2) {
        this.f24891a.post(new RunnableC6405dj(this, str, j, j2));
    }

    /* renamed from: d */
    public final void m14112d(zzanm zzanmVar) {
        this.f24891a.post(new RunnableC6443ej(this, zzanmVar));
    }

    /* renamed from: e */
    public final void m14111e(int i, long j) {
        this.f24891a.post(new RunnableC6480fj(this, i, j));
    }

    /* renamed from: f */
    public final void m14110f(int i, int i2, int i3, float f) {
        this.f24891a.post(new RunnableC6517gj(this, i, i2, i3, f));
    }

    /* renamed from: g */
    public final void m14109g(Surface surface) {
        this.f24891a.post(new RunnableC6554hj(this, surface));
    }

    /* renamed from: h */
    public final void m14108h(C6511gd c6511gd) {
        this.f24891a.post(new RunnableC6592ij(this, c6511gd));
    }
}
