package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.Set;
import java.util.concurrent.Executor;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/im1.class */
public final class im1 implements cj3<Set<ja1<zn2>>> {

    /* renamed from: a */
    private final pj3<Executor> f24355a;

    /* renamed from: b */
    private final pj3<an1> f24356b;

    public im1(pj3<Executor> pj3Var, pj3<an1> pj3Var2) {
        this.f24355a = pj3Var;
        this.f24356b = pj3Var2;
    }

    @Override // com.google.android.gms.internal.ads.pj3
    /* renamed from: b */
    public final /* bridge */ /* synthetic */ Object mo8141b() {
        s03 s03Var = qi0.f28495a;
        kj3.m13879b(s03Var);
        Set singleton = ((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25762o3)).booleanValue() ? Collections.singleton(new ja1(((bn1) this.f24356b).mo8141b(), s03Var)) : Collections.emptySet();
        kj3.m13879b(singleton);
        return singleton;
    }
}
