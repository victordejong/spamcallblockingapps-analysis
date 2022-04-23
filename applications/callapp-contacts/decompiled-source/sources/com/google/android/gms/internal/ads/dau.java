package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.dak;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dau.class */
public final class dau<V> extends dak<Object, V> {

    /* renamed from: a  reason: collision with root package name */
    private daw<?> f26685a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public dau(cyt<? extends dbt<?>> cytVar, boolean z, Executor executor, Callable<V> callable) {
        super(cytVar, z, false);
        this.f26685a = new dax(this, callable, executor);
        h();
    }

    @Override // com.google.android.gms.internal.ads.dak
    final void a(int i, Object obj) {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.ads.dak
    public final void a(dak.a aVar) {
        super.a(aVar);
        if (aVar == dak.a.OUTPUT_FUTURE_DONE) {
            this.f26685a = null;
        }
    }

    @Override // com.google.android.gms.internal.ads.dag
    protected final void c() {
        daw<?> dawVar = this.f26685a;
        if (dawVar != null) {
            dawVar.e();
        }
    }

    @Override // com.google.android.gms.internal.ads.dak
    final void i() {
        daw<?> dawVar = this.f26685a;
        if (dawVar != null) {
            dawVar.b();
        }
    }
}
