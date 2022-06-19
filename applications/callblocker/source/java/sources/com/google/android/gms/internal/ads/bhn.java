package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.AbstractC2708e;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/bhn.class */
public final class bhn implements clg {

    /* renamed from: b */
    private final bhg f11259b;

    /* renamed from: c */
    private final AbstractC2708e f11260c;

    /* renamed from: a */
    private final Map<ckw, Long> f11258a = new HashMap();

    /* renamed from: d */
    private final Map<ckw, bhm> f11261d = new HashMap();

    public bhn(bhg bhgVar, Set<bhm> set, AbstractC2708e abstractC2708e) {
        ckw ckwVar;
        this.f11259b = bhgVar;
        for (bhm bhmVar : set) {
            Map<ckw, bhm> map = this.f11261d;
            ckwVar = bhmVar.f11257c;
            map.put(ckwVar, bhmVar);
        }
        this.f11260c = abstractC2708e;
    }

    /* renamed from: a */
    private final void m11926a(ckw ckwVar, boolean z) {
        ckw ckwVar2;
        String str;
        ckwVar2 = this.f11261d.get(ckwVar).f11256b;
        String str2 = z ? "s." : "f.";
        if (this.f11258a.containsKey(ckwVar2)) {
            long mo13861b = this.f11260c.mo13861b();
            long longValue = this.f11258a.get(ckwVar2).longValue();
            Map<String, String> m11945a = this.f11259b.m11945a();
            str = this.f11261d.get(ckwVar).f11255a;
            String valueOf = String.valueOf(str);
            String concat = valueOf.length() != 0 ? "label.".concat(valueOf) : new String("label.");
            String valueOf2 = String.valueOf(str2);
            String valueOf3 = String.valueOf(Long.toString(mo13861b - longValue));
            m11945a.put(concat, valueOf3.length() != 0 ? valueOf2.concat(valueOf3) : new String(valueOf2));
        }
    }

    @Override // com.google.android.gms.internal.ads.clg
    /* renamed from: a */
    public final void mo11108a(ckw ckwVar, String str) {
    }

    @Override // com.google.android.gms.internal.ads.clg
    /* renamed from: a */
    public final void mo11107a(ckw ckwVar, String str, Throwable th) {
        if (this.f11258a.containsKey(ckwVar)) {
            long mo13861b = this.f11260c.mo13861b();
            long longValue = this.f11258a.get(ckwVar).longValue();
            Map<String, String> m11945a = this.f11259b.m11945a();
            String valueOf = String.valueOf(str);
            String concat = valueOf.length() != 0 ? "task.".concat(valueOf) : new String("task.");
            String valueOf2 = String.valueOf(Long.toString(mo13861b - longValue));
            m11945a.put(concat, valueOf2.length() != 0 ? "f.".concat(valueOf2) : new String("f."));
        }
        if (this.f11261d.containsKey(ckwVar)) {
            m11926a(ckwVar, false);
        }
    }

    @Override // com.google.android.gms.internal.ads.clg
    /* renamed from: b */
    public final void mo11106b(ckw ckwVar, String str) {
        this.f11258a.put(ckwVar, Long.valueOf(this.f11260c.mo13861b()));
    }

    @Override // com.google.android.gms.internal.ads.clg
    /* renamed from: c */
    public final void mo11105c(ckw ckwVar, String str) {
        if (this.f11258a.containsKey(ckwVar)) {
            long mo13861b = this.f11260c.mo13861b();
            long longValue = this.f11258a.get(ckwVar).longValue();
            Map<String, String> m11945a = this.f11259b.m11945a();
            String valueOf = String.valueOf(str);
            String concat = valueOf.length() != 0 ? "task.".concat(valueOf) : new String("task.");
            String valueOf2 = String.valueOf(Long.toString(mo13861b - longValue));
            m11945a.put(concat, valueOf2.length() != 0 ? "s.".concat(valueOf2) : new String("s."));
        }
        if (this.f11261d.containsKey(ckwVar)) {
            m11926a(ckwVar, true);
        }
    }
}
