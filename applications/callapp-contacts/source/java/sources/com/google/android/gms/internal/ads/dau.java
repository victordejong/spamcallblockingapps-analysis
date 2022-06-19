package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.dak;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dau.class */
public final class dau<V> extends dak<Object, V> {

    /* renamed from: a */
    private daw<?> f46904a;

    public dau(cyt<? extends dbt<?>> cytVar, boolean z, Executor executor, Callable<V> callable) {
        super(cytVar, z, false);
        this.f46904a = new dax(this, callable, executor);
        m16933h();
    }

    @Override // com.google.android.gms.internal.ads.dak
    /* renamed from: a */
    final void mo16919a(int i, Object obj) {
    }

    @Override // com.google.android.gms.internal.ads.dak
    /* renamed from: a */
    public final void mo16918a(dak.EnumC12313a enumC12313a) {
        super.mo16918a(enumC12313a);
        if (enumC12313a == dak.EnumC12313a.OUTPUT_FUTURE_DONE) {
            this.f46904a = null;
        }
    }

    @Override // com.google.android.gms.internal.ads.dag
    /* renamed from: c */
    protected final void mo16916c() {
        daw<?> dawVar = this.f46904a;
        if (dawVar != null) {
            dawVar.m16892e();
        }
    }

    @Override // com.google.android.gms.internal.ads.dak
    /* renamed from: i */
    final void mo16915i() {
        daw<?> dawVar = this.f46904a;
        if (dawVar != null) {
            dawVar.m16914b();
        }
    }
}
