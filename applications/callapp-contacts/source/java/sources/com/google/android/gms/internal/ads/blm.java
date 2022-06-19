package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.AbstractC12102f;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/blm.class */
public final class blm implements cto {

    /* renamed from: b */
    private final blf f44202b;

    /* renamed from: c */
    private final AbstractC12102f f44203c;

    /* renamed from: a */
    private final Map<ctj, Long> f44201a = new HashMap();

    /* renamed from: d */
    private final Map<ctj, bll> f44204d = new HashMap();

    public blm(blf blfVar, Set<bll> set, AbstractC12102f abstractC12102f) {
        this.f44202b = blfVar;
        for (bll bllVar : set) {
            this.f44204d.put(bllVar.f44200c, bllVar);
        }
        this.f44203c = abstractC12102f;
    }

    /* renamed from: a */
    private final void m17764a(ctj ctjVar, boolean z) {
        ctj ctjVar2 = this.f44204d.get(ctjVar).f44199b;
        String str = z ? "s." : "f.";
        if (this.f44201a.containsKey(ctjVar2)) {
            long mo19038b = this.f44203c.mo19038b();
            long longValue = this.f44201a.get(ctjVar2).longValue();
            ConcurrentHashMap<String, String> concurrentHashMap = this.f44202b.f44188a;
            String valueOf = String.valueOf(this.f44204d.get(ctjVar).f44198a);
            String concat = valueOf.length() != 0 ? "label.".concat(valueOf) : new String("label.");
            String valueOf2 = String.valueOf(Long.toString(mo19038b - longValue));
            concurrentHashMap.put(concat, valueOf2.length() != 0 ? str.concat(valueOf2) : new String(str));
        }
    }

    @Override // com.google.android.gms.internal.ads.cto
    /* renamed from: a */
    public final void mo17238a(ctj ctjVar, String str) {
        this.f44201a.put(ctjVar, Long.valueOf(this.f44203c.mo19038b()));
    }

    @Override // com.google.android.gms.internal.ads.cto
    /* renamed from: a */
    public final void mo17237a(ctj ctjVar, String str, Throwable th) {
        if (this.f44201a.containsKey(ctjVar)) {
            long mo19038b = this.f44203c.mo19038b();
            long longValue = this.f44201a.get(ctjVar).longValue();
            ConcurrentHashMap<String, String> concurrentHashMap = this.f44202b.f44188a;
            String valueOf = String.valueOf(str);
            String concat = valueOf.length() != 0 ? "task.".concat(valueOf) : new String("task.");
            String valueOf2 = String.valueOf(Long.toString(mo19038b - longValue));
            concurrentHashMap.put(concat, valueOf2.length() != 0 ? "f.".concat(valueOf2) : new String("f."));
        }
        if (this.f44204d.containsKey(ctjVar)) {
            m17764a(ctjVar, false);
        }
    }

    @Override // com.google.android.gms.internal.ads.cto
    /* renamed from: a */
    public final void mo17236a(String str) {
    }

    @Override // com.google.android.gms.internal.ads.cto
    /* renamed from: b */
    public final void mo17235b(ctj ctjVar, String str) {
        if (this.f44201a.containsKey(ctjVar)) {
            long mo19038b = this.f44203c.mo19038b();
            long longValue = this.f44201a.get(ctjVar).longValue();
            ConcurrentHashMap<String, String> concurrentHashMap = this.f44202b.f44188a;
            String valueOf = String.valueOf(str);
            String concat = valueOf.length() != 0 ? "task.".concat(valueOf) : new String("task.");
            String valueOf2 = String.valueOf(Long.toString(mo19038b - longValue));
            concurrentHashMap.put(concat, valueOf2.length() != 0 ? "s.".concat(valueOf2) : new String("s."));
        }
        if (this.f44204d.containsKey(ctjVar)) {
            m17764a(ctjVar, true);
        }
    }
}
