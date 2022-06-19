package com.google.android.gms.internal.ads;

import java.util.HashMap;
import java.util.Map;
import java.util.Set;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/tu1.class */
public final class tu1 implements zn2 {

    /* renamed from: d */
    private final Map<zzfem, String> f30368d = new HashMap();

    /* renamed from: e */
    private final Map<zzfem, String> f30369e = new HashMap();

    /* renamed from: f */
    private final io2 f30370f;

    public tu1(Set<su1> set, io2 io2Var) {
        zzfem zzfemVar;
        String str;
        zzfem zzfemVar2;
        String str2;
        this.f30370f = io2Var;
        for (su1 su1Var : set) {
            Map<zzfem, String> map = this.f30368d;
            zzfemVar = su1Var.f29682b;
            str = su1Var.f29681a;
            map.put(zzfemVar, str);
            Map<zzfem, String> map2 = this.f30369e;
            zzfemVar2 = su1Var.f29683c;
            str2 = su1Var.f29681a;
            map2.put(zzfemVar2, str2);
        }
    }

    @Override // com.google.android.gms.internal.ads.zn2
    /* renamed from: a */
    public final void mo8316a(zzfem zzfemVar, String str) {
        io2 io2Var = this.f30370f;
        String valueOf = String.valueOf(str);
        io2Var.m14334e(valueOf.length() != 0 ? "task.".concat(valueOf) : new String("task."), "s.");
        if (this.f30369e.containsKey(zzfemVar)) {
            io2 io2Var2 = this.f30370f;
            String valueOf2 = String.valueOf(this.f30369e.get(zzfemVar));
            io2Var2.m14334e(valueOf2.length() != 0 ? "label.".concat(valueOf2) : new String("label."), "s.");
        }
    }

    @Override // com.google.android.gms.internal.ads.zn2
    /* renamed from: b */
    public final void mo8315b(zzfem zzfemVar, String str) {
        io2 io2Var = this.f30370f;
        String valueOf = String.valueOf(str);
        io2Var.m14335d(valueOf.length() != 0 ? "task.".concat(valueOf) : new String("task."));
        if (this.f30368d.containsKey(zzfemVar)) {
            io2 io2Var2 = this.f30370f;
            String valueOf2 = String.valueOf(this.f30368d.get(zzfemVar));
            io2Var2.m14335d(valueOf2.length() != 0 ? "label.".concat(valueOf2) : new String("label."));
        }
    }

    @Override // com.google.android.gms.internal.ads.zn2
    /* renamed from: l */
    public final void mo8314l(zzfem zzfemVar, String str) {
    }

    @Override // com.google.android.gms.internal.ads.zn2
    /* renamed from: q */
    public final void mo8313q(zzfem zzfemVar, String str, Throwable th) {
        io2 io2Var = this.f30370f;
        String valueOf = String.valueOf(str);
        io2Var.m14334e(valueOf.length() != 0 ? "task.".concat(valueOf) : new String("task."), "f.");
        if (this.f30369e.containsKey(zzfemVar)) {
            io2 io2Var2 = this.f30370f;
            String valueOf2 = String.valueOf(this.f30369e.get(zzfemVar));
            io2Var2.m14334e(valueOf2.length() != 0 ? "label.".concat(valueOf2) : new String("label."), "f.");
        }
    }
}
