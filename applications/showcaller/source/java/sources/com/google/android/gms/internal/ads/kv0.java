package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.Set;
import java.util.concurrent.Executor;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/kv0.class */
public final class kv0 implements cj3<Set<ja1<t31>>> {

    /* renamed from: a */
    private final pj3<ev0> f25421a;

    /* renamed from: b */
    private final pj3<Executor> f25422b;

    /* renamed from: c */
    private final pj3<JSONObject> f25423c;

    public kv0(pj3<ev0> pj3Var, pj3<Executor> pj3Var2, pj3<JSONObject> pj3Var3) {
        this.f25421a = pj3Var;
        this.f25422b = pj3Var2;
        this.f25423c = pj3Var3;
    }

    @Override // com.google.android.gms.internal.ads.pj3
    /* renamed from: b */
    public final /* bridge */ /* synthetic */ Object mo8141b() {
        ev0 mo8141b = this.f25421a.mo8141b();
        s03 s03Var = qi0.f28495a;
        kj3.m13879b(s03Var);
        Set emptySet = this.f25423c.mo8141b() == null ? Collections.emptySet() : Collections.singleton(new ja1(mo8141b, s03Var));
        kj3.m13879b(emptySet);
        return emptySet;
    }
}
