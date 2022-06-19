package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.cqn;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/cqu.class */
public final class cqu<V> extends cqn<Object, V> {

    /* renamed from: a */
    private cqw<?> f13596a;

    public cqu(cpb<? extends crt<?>> cpbVar, boolean z, Executor executor, Callable<V> callable) {
        super(cpbVar, z, false);
        this.f13596a = new cqx(this, callable, executor);
        m10812h();
    }

    @Override // com.google.android.gms.internal.ads.cqn
    /* renamed from: a */
    final void mo10801a(int i, @NullableDecl Object obj) {
    }

    @Override // com.google.android.gms.internal.ads.cqn
    /* renamed from: a */
    public final void mo10800a(cqn.EnumC2889a enumC2889a) {
        super.mo10800a(enumC2889a);
        if (enumC2889a == cqn.EnumC2889a.OUTPUT_FUTURE_DONE) {
            this.f13596a = null;
        }
    }

    @Override // com.google.android.gms.internal.ads.cqf
    /* renamed from: c */
    protected final void mo10798c() {
        cqw<?> cqwVar = this.f13596a;
        if (cqwVar != null) {
            cqwVar.m10769e();
        }
    }

    @Override // com.google.android.gms.internal.ads.cqn
    /* renamed from: i */
    final void mo10797i() {
        cqw<?> cqwVar = this.f13596a;
        if (cqwVar != null) {
            cqwVar.m10795b();
        }
    }
}
