package com.google.android.gms.ads.nonagon.signalgeneration;

import android.content.Context;
import com.google.android.gms.internal.ads.C7016u;
import com.google.android.gms.internal.ads.bp2;
import com.google.android.gms.internal.ads.cj3;
import com.google.android.gms.internal.ads.gq0;
import com.google.android.gms.internal.ads.jo2;
import com.google.android.gms.internal.ads.kj3;
import com.google.android.gms.internal.ads.pj3;
import com.google.android.gms.internal.ads.pk2;
import com.google.android.gms.internal.ads.qi0;
import com.google.android.gms.internal.ads.qj1;
import com.google.android.gms.internal.ads.rn1;
import com.google.android.gms.internal.ads.s03;
import com.google.android.gms.internal.ads.sp0;
import com.google.android.gms.internal.ads.xp0;
import com.google.android.gms.internal.ads.zzcgz;
import java.util.concurrent.ScheduledExecutorService;
/* renamed from: com.google.android.gms.ads.nonagon.signalgeneration.f0 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/nonagon/signalgeneration/f0.class */
public final class C5816f0 implements cj3<BinderC5814e0> {

    /* renamed from: a */
    private final pj3<sp0> f18736a;

    /* renamed from: b */
    private final pj3<Context> f18737b;

    /* renamed from: c */
    private final pj3<C7016u> f18738c;

    /* renamed from: d */
    private final pj3<pk2<qj1>> f18739d;

    /* renamed from: e */
    private final pj3<s03> f18740e;

    /* renamed from: f */
    private final pj3<ScheduledExecutorService> f18741f;

    /* renamed from: g */
    private final pj3<rn1> f18742g;

    /* renamed from: h */
    private final pj3<jo2> f18743h;

    /* renamed from: i */
    private final pj3<bp2> f18744i;

    /* renamed from: j */
    private final pj3<zzcgz> f18745j;

    public C5816f0(pj3<sp0> pj3Var, pj3<Context> pj3Var2, pj3<C7016u> pj3Var3, pj3<pk2<qj1>> pj3Var4, pj3<s03> pj3Var5, pj3<ScheduledExecutorService> pj3Var6, pj3<rn1> pj3Var7, pj3<jo2> pj3Var8, pj3<bp2> pj3Var9, pj3<zzcgz> pj3Var10) {
        this.f18736a = pj3Var;
        this.f18737b = pj3Var2;
        this.f18738c = pj3Var3;
        this.f18739d = pj3Var4;
        this.f18740e = pj3Var5;
        this.f18741f = pj3Var6;
        this.f18742g = pj3Var7;
        this.f18743h = pj3Var8;
        this.f18744i = pj3Var9;
        this.f18745j = pj3Var10;
    }

    @Override // com.google.android.gms.internal.ads.pj3
    /* renamed from: b */
    public final /* bridge */ /* synthetic */ Object mo8141b() {
        sp0 mo8141b = this.f18736a.mo8141b();
        Context m9095a = ((xp0) this.f18737b).m9095a();
        C7016u mo8141b2 = this.f18738c.mo8141b();
        pk2<qj1> mo8141b3 = this.f18739d.mo8141b();
        s03 s03Var = qi0.f28495a;
        kj3.m13879b(s03Var);
        return new BinderC5814e0(mo8141b, m9095a, mo8141b2, mo8141b3, s03Var, this.f18741f.mo8141b(), this.f18742g.mo8141b(), this.f18743h.mo8141b(), this.f18744i.mo8141b(), ((gq0) this.f18745j).m14874a());
    }
}
