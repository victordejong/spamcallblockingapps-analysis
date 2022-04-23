package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.HashMap;
import p131c.p161d.p170b.p224d.p252g.p253a.C4010ry;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdqo.class */
public final class zzdqo {

    /* renamed from: a */
    public HashMap<zzdqf, zzdqn<? extends zzbqo>> f27753a = new HashMap<>();

    /* renamed from: a */
    public final <AdT extends zzbqo> zzdqn<AdT> m13308a(zzdqf zzdqfVar, Context context, zzdpw zzdpwVar, zzdqv<AdT> zzdqvVar) {
        zzdqn<? extends zzbqo> zzdqnVar = this.f27753a.get(zzdqfVar);
        zzdqn<AdT> zzdqnVar2 = (zzdqn<AdT>) zzdqnVar;
        if (zzdqnVar == null) {
            C4010ry ryVar = new C4010ry(zzdqg.m13313a(zzdqfVar, context));
            zzdqnVar2 = new zzdqn<>(ryVar, new zzdqs(ryVar, zzdpwVar, zzdqvVar));
            this.f27753a.put(zzdqfVar, zzdqnVar2);
        }
        return zzdqnVar2;
    }
}
