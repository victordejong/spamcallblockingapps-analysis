package com.google.android.gms.internal.ads;

import java.util.concurrent.atomic.AtomicInteger;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/aj0.class */
public final class aj0 implements f03 {

    /* renamed from: a */
    final /* synthetic */ cj0 f19970a;

    public aj0(cj0 cj0Var) {
        this.f19970a = cj0Var;
    }

    @Override // com.google.android.gms.internal.ads.f03
    /* renamed from: a */
    public final void mo8126a(Throwable th) {
        AtomicInteger atomicInteger;
        atomicInteger = this.f19970a.f21262b;
        atomicInteger.set(-1);
    }

    @Override // com.google.android.gms.internal.ads.f03
    /* renamed from: b */
    public final void mo8125b(Object obj) {
        AtomicInteger atomicInteger;
        atomicInteger = this.f19970a.f21262b;
        atomicInteger.set(1);
    }
}
