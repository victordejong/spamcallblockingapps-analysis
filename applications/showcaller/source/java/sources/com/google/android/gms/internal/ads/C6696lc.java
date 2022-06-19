package com.google.android.gms.internal.ads;

import android.os.Handler;
import java.util.Objects;
/* renamed from: com.google.android.gms.internal.ads.lc */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/lc.class */
public final class C6696lc {

    /* renamed from: a */
    private final Handler f26035a;

    /* renamed from: b */
    private final AbstractC6733mc f26036b;

    public C6696lc(Handler handler, AbstractC6733mc abstractC6733mc) {
        Objects.requireNonNull(handler);
        this.f26035a = handler;
        this.f26036b = abstractC6733mc;
    }

    /* renamed from: b */
    public final void m13592b(C6511gd c6511gd) {
        this.f26035a.post(new RunnableC6473fc(this, c6511gd));
    }

    /* renamed from: c */
    public final void m13591c(String str, long j, long j2) {
        this.f26035a.post(new RunnableC6510gc(this, str, j, j2));
    }

    /* renamed from: d */
    public final void m13590d(zzanm zzanmVar) {
        this.f26035a.post(new RunnableC6547hc(this, zzanmVar));
    }

    /* renamed from: e */
    public final void m13589e(int i, long j, long j2) {
        this.f26035a.post(new RunnableC6584ic(this, i, j, j2));
    }

    /* renamed from: f */
    public final void m13588f(C6511gd c6511gd) {
        this.f26035a.post(new RunnableC6622jc(this, c6511gd));
    }

    /* renamed from: g */
    public final void m13587g(int i) {
        this.f26035a.post(new RunnableC6659kc(this, i));
    }
}
