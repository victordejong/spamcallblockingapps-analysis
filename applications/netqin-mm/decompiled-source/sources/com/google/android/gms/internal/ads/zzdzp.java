package com.google.android.gms.internal.ads;

import p131c.p161d.p170b.p224d.p252g.p253a.q20;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdzp.class */
public final class zzdzp extends zzdyy<zzdzc<V>> {
    public final zzdyb<V> zzhtx;
    public final /* synthetic */ q20 zzhty;

    public zzdzp(q20 q20Var, zzdyb<V> zzdybVar) {
        this.zzhty = q20Var;
        zzdwd.m13096a(zzdybVar);
        this.zzhtx = zzdybVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdyy
    public final boolean isDone() {
        return this.zzhty.isDone();
    }

    @Override // com.google.android.gms.internal.ads.zzdyy
    public final /* synthetic */ Object zzayd() throws Exception {
        zzdzc a = this.zzhtx.mo13005a();
        zzdwd.m13094a(a, "AsyncCallable.call returned null instead of a Future. Did you mean to return immediateFuture(null)? %s", this.zzhtx);
        return a;
    }

    @Override // com.google.android.gms.internal.ads.zzdyy
    public final String zzaye() {
        return this.zzhtx.toString();
    }

    @Override // com.google.android.gms.internal.ads.zzdyy
    public final /* synthetic */ void zzb(Object obj, Throwable th) {
        zzdzc zzdzcVar = (zzdzc) obj;
        if (th == null) {
            this.zzhty.m13064a(zzdzcVar);
        } else {
            this.zzhty.mo12971a(th);
        }
    }
}
