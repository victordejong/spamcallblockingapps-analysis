package com.google.android.gms.internal.ads;

import java.util.HashMap;
import java.util.Map;
import java.util.Set;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bqn.class */
public final class bqn implements cto {

    /* renamed from: a */
    private final Map<ctj, String> f44501a = new HashMap();

    /* renamed from: b */
    private final Map<ctj, String> f44502b = new HashMap();

    /* renamed from: c */
    private final ctz f44503c;

    public bqn(Set<bqm> set, ctz ctzVar) {
        this.f44503c = ctzVar;
        for (bqm bqmVar : set) {
            this.f44501a.put(bqmVar.f44499b, bqmVar.f44498a);
            this.f44502b.put(bqmVar.f44500c, bqmVar.f44498a);
        }
    }

    @Override // com.google.android.gms.internal.ads.cto
    /* renamed from: a */
    public final void mo17238a(ctj ctjVar, String str) {
        ctz ctzVar = this.f44503c;
        String valueOf = String.valueOf(str);
        ctzVar.m17224b(valueOf.length() != 0 ? "task.".concat(valueOf) : new String("task."));
        if (this.f44501a.containsKey(ctjVar)) {
            ctz ctzVar2 = this.f44503c;
            String valueOf2 = String.valueOf(this.f44501a.get(ctjVar));
            ctzVar2.m17224b(valueOf2.length() != 0 ? "label.".concat(valueOf2) : new String("label."));
        }
    }

    @Override // com.google.android.gms.internal.ads.cto
    /* renamed from: a */
    public final void mo17237a(ctj ctjVar, String str, Throwable th) {
        ctz ctzVar = this.f44503c;
        String valueOf = String.valueOf(str);
        ctzVar.m17223b(valueOf.length() != 0 ? "task.".concat(valueOf) : new String("task."), "f.");
        if (this.f44502b.containsKey(ctjVar)) {
            ctz ctzVar2 = this.f44503c;
            String valueOf2 = String.valueOf(this.f44502b.get(ctjVar));
            ctzVar2.m17223b(valueOf2.length() != 0 ? "label.".concat(valueOf2) : new String("label."), "f.");
        }
    }

    @Override // com.google.android.gms.internal.ads.cto
    /* renamed from: a */
    public final void mo17236a(String str) {
    }

    @Override // com.google.android.gms.internal.ads.cto
    /* renamed from: b */
    public final void mo17235b(ctj ctjVar, String str) {
        ctz ctzVar = this.f44503c;
        String valueOf = String.valueOf(str);
        ctzVar.m17223b(valueOf.length() != 0 ? "task.".concat(valueOf) : new String("task."), "s.");
        if (this.f44502b.containsKey(ctjVar)) {
            ctz ctzVar2 = this.f44503c;
            String valueOf2 = String.valueOf(this.f44502b.get(ctjVar));
            ctzVar2.m17223b(valueOf2.length() != 0 ? "label.".concat(valueOf2) : new String("label."), "s.");
        }
    }
}
