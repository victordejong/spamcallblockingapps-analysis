package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.Set;
import java.util.concurrent.Executor;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/aq0.class */
public final class aq0 implements cj3<Set<ja1<w91>>> {

    /* renamed from: a */
    private final pj3<ou1> f20076a;

    /* renamed from: b */
    private final pj3<Executor> f20077b;

    public aq0(pj3<ou1> pj3Var, pj3<Executor> pj3Var2) {
        this.f20076a = pj3Var;
        this.f20077b = pj3Var2;
    }

    @Override // com.google.android.gms.internal.ads.pj3
    /* renamed from: b */
    public final /* bridge */ /* synthetic */ Object mo8141b() {
        Set set;
        ou1 mo8141b = this.f20076a.mo8141b();
        s03 s03Var = qi0.f28495a;
        kj3.m13879b(s03Var);
        if (((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25784r1)).booleanValue()) {
            if (((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25717i6)).booleanValue()) {
                set = Collections.singleton(new ja1(mo8141b, s03Var));
                kj3.m13879b(set);
                return set;
            }
        }
        set = Collections.emptySet();
        kj3.m13879b(set);
        return set;
    }
}
