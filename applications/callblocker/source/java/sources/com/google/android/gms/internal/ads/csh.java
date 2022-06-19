package com.google.android.gms.internal.ads;

import java.util.concurrent.Callable;
import java.util.concurrent.Executors;
import java.util.concurrent.RunnableFuture;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/csh.class */
public final class csh<V> extends cra<V> implements RunnableFuture<V> {

    /* renamed from: a */
    private volatile crp<?> f13638a;

    public csh(cqr<V> cqrVar) {
        this.f13638a = new csg(this, cqrVar);
    }

    private csh(Callable<V> callable) {
        this.f13638a = new csi(this, callable);
    }

    /* renamed from: a */
    public static <V> csh<V> m10746a(Runnable runnable, @NullableDecl V v) {
        return new csh<>(Executors.callable(runnable, v));
    }

    /* renamed from: a */
    public static <V> csh<V> m10745a(Callable<V> callable) {
        return new csh<>(callable);
    }

    @Override // com.google.android.gms.internal.ads.cqf
    /* renamed from: a */
    public final String mo10747a() {
        String a;
        crp<?> crpVar = this.f13638a;
        if (crpVar != null) {
            String valueOf = String.valueOf(crpVar);
            a = new StringBuilder(String.valueOf(valueOf).length() + 7).append("task=[").append(valueOf).append("]").toString();
        } else {
            a = super.mo10747a();
        }
        return a;
    }

    @Override // com.google.android.gms.internal.ads.cqf
    /* renamed from: b */
    public final void mo10744b() {
        crp<?> crpVar;
        super.mo10744b();
        if (m10837d() && (crpVar = this.f13638a) != null) {
            crpVar.m10769e();
        }
        this.f13638a = null;
    }

    @Override // java.util.concurrent.RunnableFuture, java.lang.Runnable
    public final void run() {
        crp<?> crpVar = this.f13638a;
        if (crpVar != null) {
            crpVar.run();
        }
        this.f13638a = null;
    }
}
