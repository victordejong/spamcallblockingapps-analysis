package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.C5845s;
import java.util.concurrent.Executor;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zg1.class */
public final class zg1 implements cj3<ja1<C5845s.AbstractC5846a>> {

    /* renamed from: a */
    private final sg1 f32922a;

    /* renamed from: b */
    private final pj3<ak1> f32923b;

    /* renamed from: c */
    private final pj3<Executor> f32924c;

    public zg1(sg1 sg1Var, pj3<ak1> pj3Var, pj3<Executor> pj3Var2) {
        this.f32922a = sg1Var;
        this.f32923b = pj3Var;
        this.f32924c = pj3Var2;
    }

    @Override // com.google.android.gms.internal.ads.pj3
    /* renamed from: b */
    public final /* bridge */ /* synthetic */ Object mo8141b() {
        return new ja1(((bk1) this.f32923b).mo8141b(), this.f32924c.mo8141b());
    }
}
