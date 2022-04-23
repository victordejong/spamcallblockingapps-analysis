package com.google.android.gms.internal.ads;

import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ir0.class */
public final class ir0 {

    /* renamed from: a */
    private final Map<String, String> f6837a = new ConcurrentHashMap();

    /* renamed from: b */
    final /* synthetic */ jr0 f6838b;

    public ir0(jr0 jr0Var) {
        this.f6838b = jr0Var;
    }

    /* renamed from: g */
    public static /* synthetic */ ir0 m7100g(ir0 ir0Var) {
        Map<? extends String, ? extends String> map;
        Map<String, String> map2 = ir0Var.f6837a;
        map = ir0Var.f6838b.f6936c;
        map2.putAll(map);
        return ir0Var;
    }

    /* renamed from: a */
    public final ir0 m7106a(dl1 dl1Var) {
        this.f6837a.put("gqi", dl1Var.f6335b);
        return this;
    }

    /* renamed from: b */
    public final ir0 m7105b(al1 al1Var) {
        this.f6837a.put("aai", al1Var.f6035v);
        return this;
    }

    /* renamed from: c */
    public final ir0 m7104c(String str, String str2) {
        this.f6837a.put(str, str2);
        return this;
    }

    /* renamed from: d */
    public final void m7103d() {
        Executor executor;
        executor = this.f6838b.f6935b;
        executor.execute(new Runnable(this) { // from class: com.google.android.gms.internal.ads.hr0

            /* renamed from: b */
            private final ir0 f6765b;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f6765b = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f6765b.m7101f();
            }
        });
    }

    /* renamed from: e */
    public final String m7102e() {
        or0 or0Var;
        or0Var = this.f6838b.f6934a;
        return or0Var.m6065b(this.f6837a);
    }

    /* renamed from: f */
    public final /* synthetic */ void m7101f() {
        or0 or0Var;
        or0Var = this.f6838b.f6934a;
        or0Var.m6066a(this.f6837a);
    }
}
