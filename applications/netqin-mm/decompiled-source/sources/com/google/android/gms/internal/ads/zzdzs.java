package com.google.android.gms.internal.ads;

import java.util.concurrent.Callable;
import p131c.p161d.p170b.p224d.p252g.p253a.q20;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdzs.class */
public final class zzdzs extends zzdyy<V> {
    public final Callable<V> zzhta;
    public final /* synthetic */ q20 zzhty;

    public zzdzs(q20 q20Var, Callable<V> callable) {
        this.zzhty = q20Var;
        zzdwd.m13096a(callable);
        this.zzhta = callable;
    }

    @Override // com.google.android.gms.internal.ads.zzdyy
    public final boolean isDone() {
        return this.zzhty.isDone();
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [V, java.lang.Object] */
    @Override // com.google.android.gms.internal.ads.zzdyy
    public final V zzayd() throws Exception {
        return this.zzhta.call();
    }

    @Override // com.google.android.gms.internal.ads.zzdyy
    public final String zzaye() {
        return this.zzhta.toString();
    }

    @Override // com.google.android.gms.internal.ads.zzdyy
    public final void zzb(V v, Throwable th) {
        if (th == null) {
            this.zzhty.mo12972a((q20) v);
        } else {
            this.zzhty.mo12971a(th);
        }
    }
}
