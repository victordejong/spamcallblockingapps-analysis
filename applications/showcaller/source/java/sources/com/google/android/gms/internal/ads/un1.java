package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.AbstractC6227e;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/un1.class */
public final class un1 implements zn2 {

    /* renamed from: e */
    private final nn1 f30680e;

    /* renamed from: f */
    private final AbstractC6227e f30681f;

    /* renamed from: d */
    private final Map<zzfem, Long> f30679d = new HashMap();

    /* renamed from: g */
    private final Map<zzfem, tn1> f30682g = new HashMap();

    public un1(nn1 nn1Var, Set<tn1> set, AbstractC6227e abstractC6227e) {
        zzfem zzfemVar;
        this.f30680e = nn1Var;
        for (tn1 tn1Var : set) {
            Map<zzfem, tn1> map = this.f30682g;
            zzfemVar = tn1Var.f30085c;
            map.put(zzfemVar, tn1Var);
        }
        this.f30681f = abstractC6227e;
    }

    /* renamed from: c */
    private final void m10288c(zzfem zzfemVar, boolean z) {
        zzfem zzfemVar2;
        String str;
        zzfemVar2 = this.f30682g.get(zzfemVar).f30084b;
        String str2 = true != z ? "f." : "s.";
        if (this.f30679d.containsKey(zzfemVar2)) {
            long mo16806b = this.f30681f.mo16806b();
            long longValue = this.f30679d.get(zzfemVar2).longValue();
            Map<String, String> m12841c = this.f30680e.m12841c();
            str = this.f30682g.get(zzfemVar).f30083a;
            String concat = str.length() != 0 ? "label.".concat(str) : new String("label.");
            String valueOf = String.valueOf(Long.toString(mo16806b - longValue));
            m12841c.put(concat, valueOf.length() != 0 ? str2.concat(valueOf) : new String(str2));
        }
    }

    @Override // com.google.android.gms.internal.ads.zn2
    /* renamed from: a */
    public final void mo8316a(zzfem zzfemVar, String str) {
        if (this.f30679d.containsKey(zzfemVar)) {
            long mo16806b = this.f30681f.mo16806b();
            long longValue = this.f30679d.get(zzfemVar).longValue();
            Map<String, String> m12841c = this.f30680e.m12841c();
            String valueOf = String.valueOf(str);
            String concat = valueOf.length() != 0 ? "task.".concat(valueOf) : new String("task.");
            String valueOf2 = String.valueOf(Long.toString(mo16806b - longValue));
            m12841c.put(concat, valueOf2.length() != 0 ? "s.".concat(valueOf2) : new String("s."));
        }
        if (this.f30682g.containsKey(zzfemVar)) {
            m10288c(zzfemVar, true);
        }
    }

    @Override // com.google.android.gms.internal.ads.zn2
    /* renamed from: b */
    public final void mo8315b(zzfem zzfemVar, String str) {
        this.f30679d.put(zzfemVar, Long.valueOf(this.f30681f.mo16806b()));
    }

    @Override // com.google.android.gms.internal.ads.zn2
    /* renamed from: l */
    public final void mo8314l(zzfem zzfemVar, String str) {
    }

    @Override // com.google.android.gms.internal.ads.zn2
    /* renamed from: q */
    public final void mo8313q(zzfem zzfemVar, String str, Throwable th) {
        if (this.f30679d.containsKey(zzfemVar)) {
            long mo16806b = this.f30681f.mo16806b();
            long longValue = this.f30679d.get(zzfemVar).longValue();
            Map<String, String> m12841c = this.f30680e.m12841c();
            String valueOf = String.valueOf(str);
            String concat = valueOf.length() != 0 ? "task.".concat(valueOf) : new String("task.");
            String valueOf2 = String.valueOf(Long.toString(mo16806b - longValue));
            m12841c.put(concat, valueOf2.length() != 0 ? "f.".concat(valueOf2) : new String("f."));
        }
        if (this.f30682g.containsKey(zzfemVar)) {
            m10288c(zzfemVar, false);
        }
    }
}
