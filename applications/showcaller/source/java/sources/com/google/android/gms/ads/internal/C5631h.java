package com.google.android.gms.ads.internal;

import com.google.android.gms.internal.ads.mr2;
import com.google.android.gms.internal.ads.qs2;
/* renamed from: com.google.android.gms.ads.internal.h */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/internal/h.class */
public final class C5631h implements qs2 {

    /* renamed from: a */
    final /* synthetic */ RunnableC5632i f18291a;

    public C5631h(RunnableC5632i runnableC5632i) {
        this.f18291a = runnableC5632i;
    }

    @Override // com.google.android.gms.internal.ads.qs2
    /* renamed from: a */
    public final void mo11808a(int i, long j, String str) {
        mr2 mr2Var;
        mr2Var = this.f18291a.f18299k;
        mr2Var.m13097f(i, System.currentTimeMillis() - j, str);
    }

    @Override // com.google.android.gms.internal.ads.qs2
    /* renamed from: b */
    public final void mo11807b(int i, long j) {
        mr2 mr2Var;
        mr2Var = this.f18291a.f18299k;
        mr2Var.m13101b(i, System.currentTimeMillis() - j);
    }
}
