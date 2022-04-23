package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.common.util.VisibleForTesting;
import p131c.p161d.p170b.p224d.p252g.p253a.C3567g2;
import p131c.p161d.p170b.p224d.p252g.p253a.C3604h2;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzamb.class */
public final class zzamb {
    @VisibleForTesting

    /* renamed from: b */
    public static final zzbad<zzaki> f24182b = new C3604h2();
    @VisibleForTesting

    /* renamed from: c */
    public static final zzbad<zzaki> f24183c = new C3567g2();

    /* renamed from: a */
    public final zzakr f24184a;

    public zzamb(Context context, zzbbx zzbbxVar, String str) {
        this.f24184a = new zzakr(context, zzbbxVar, str, f24182b, f24183c);
    }

    /* renamed from: a */
    public final <I, O> zzalt<I, O> m16663a(String str, zzaly<I> zzalyVar, zzalv<O> zzalvVar) {
        return new zzamg(this.f24184a, str, zzalyVar, zzalvVar);
    }

    /* renamed from: a */
    public final zzamk m16664a() {
        return new zzamk(this.f24184a);
    }
}
