package com.google.android.gms.internal.ads;

import java.util.HashMap;
import java.util.Map;
import java.util.Set;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bqn.class */
public final class bqn implements cto {

    /* renamed from: a  reason: collision with root package name */
    private final Map<ctj, String> f24898a = new HashMap();

    /* renamed from: b  reason: collision with root package name */
    private final Map<ctj, String> f24899b = new HashMap();

    /* renamed from: c  reason: collision with root package name */
    private final ctz f24900c;

    public bqn(Set<bqm> set, ctz ctzVar) {
        this.f24900c = ctzVar;
        for (bqm bqmVar : set) {
            this.f24898a.put(bqmVar.f24896b, bqmVar.f24895a);
            this.f24899b.put(bqmVar.f24897c, bqmVar.f24895a);
        }
    }

    @Override // com.google.android.gms.internal.ads.cto
    public final void a(ctj ctjVar, String str) {
        ctz ctzVar = this.f24900c;
        String valueOf = String.valueOf(str);
        ctzVar.b(valueOf.length() != 0 ? "task.".concat(valueOf) : new String("task."));
        if (this.f24898a.containsKey(ctjVar)) {
            ctz ctzVar2 = this.f24900c;
            String valueOf2 = String.valueOf(this.f24898a.get(ctjVar));
            ctzVar2.b(valueOf2.length() != 0 ? "label.".concat(valueOf2) : new String("label."));
        }
    }

    @Override // com.google.android.gms.internal.ads.cto
    public final void a(ctj ctjVar, String str, Throwable th) {
        ctz ctzVar = this.f24900c;
        String valueOf = String.valueOf(str);
        ctzVar.b(valueOf.length() != 0 ? "task.".concat(valueOf) : new String("task."), "f.");
        if (this.f24899b.containsKey(ctjVar)) {
            ctz ctzVar2 = this.f24900c;
            String valueOf2 = String.valueOf(this.f24899b.get(ctjVar));
            ctzVar2.b(valueOf2.length() != 0 ? "label.".concat(valueOf2) : new String("label."), "f.");
        }
    }

    @Override // com.google.android.gms.internal.ads.cto
    public final void a(String str) {
    }

    @Override // com.google.android.gms.internal.ads.cto
    public final void b(ctj ctjVar, String str) {
        ctz ctzVar = this.f24900c;
        String valueOf = String.valueOf(str);
        ctzVar.b(valueOf.length() != 0 ? "task.".concat(valueOf) : new String("task."), "s.");
        if (this.f24899b.containsKey(ctjVar)) {
            ctz ctzVar2 = this.f24900c;
            String valueOf2 = String.valueOf(this.f24899b.get(ctjVar));
            ctzVar2.b(valueOf2.length() != 0 ? "label.".concat(valueOf2) : new String("label."), "s.");
        }
    }
}
