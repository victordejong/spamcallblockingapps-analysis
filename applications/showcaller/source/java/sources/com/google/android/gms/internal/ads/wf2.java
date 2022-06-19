package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.g21;
import com.google.android.gms.internal.ads.xy0;
import java.util.concurrent.Executor;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/wf2.class */
final class wf2<U extends g21<A>, A extends xy0> implements cm2<U, A> {

    /* renamed from: a */
    public final rg2<U> f31561a;

    /* renamed from: b */
    public final tg2 f31562b;

    /* renamed from: c */
    public final zzbdg f31563c;

    /* renamed from: d */
    public final String f31564d;

    /* renamed from: e */
    public final Executor f31565e;

    /* renamed from: f */
    public final zzbdr f31566f;

    /* renamed from: g */
    public final rl2 f31567g;

    public wf2(rg2<U> rg2Var, tg2 tg2Var, zzbdg zzbdgVar, String str, Executor executor, zzbdr zzbdrVar, rl2 rl2Var) {
        this.f31561a = rg2Var;
        this.f31562b = tg2Var;
        this.f31563c = zzbdgVar;
        this.f31564d = str;
        this.f31565e = executor;
        this.f31566f = zzbdrVar;
        this.f31567g = rl2Var;
    }

    @Override // com.google.android.gms.internal.ads.cm2
    /* renamed from: b */
    public final rl2 mo9594b() {
        return this.f31567g;
    }

    @Override // com.google.android.gms.internal.ads.cm2
    public final Executor zza() {
        return this.f31565e;
    }
}
