package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.f;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/blm.class */
public final class blm implements cto {

    /* renamed from: b  reason: collision with root package name */
    private final blf f24644b;

    /* renamed from: c  reason: collision with root package name */
    private final f f24645c;

    /* renamed from: a  reason: collision with root package name */
    private final Map<ctj, Long> f24643a = new HashMap();

    /* renamed from: d  reason: collision with root package name */
    private final Map<ctj, bll> f24646d = new HashMap();

    public blm(blf blfVar, Set<bll> set, f fVar) {
        this.f24644b = blfVar;
        for (bll bllVar : set) {
            this.f24646d.put(bllVar.f24642c, bllVar);
        }
        this.f24645c = fVar;
    }

    private final void a(ctj ctjVar, boolean z) {
        ctj ctjVar2 = this.f24646d.get(ctjVar).f24641b;
        String str = z ? "s." : "f.";
        if (this.f24643a.containsKey(ctjVar2)) {
            long b2 = this.f24645c.b();
            long longValue = this.f24643a.get(ctjVar2).longValue();
            ConcurrentHashMap<String, String> concurrentHashMap = this.f24644b.f24630a;
            String valueOf = String.valueOf(this.f24646d.get(ctjVar).f24640a);
            String concat = valueOf.length() != 0 ? "label.".concat(valueOf) : new String("label.");
            String valueOf2 = String.valueOf(Long.toString(b2 - longValue));
            concurrentHashMap.put(concat, valueOf2.length() != 0 ? str.concat(valueOf2) : new String(str));
        }
    }

    @Override // com.google.android.gms.internal.ads.cto
    public final void a(ctj ctjVar, String str) {
        this.f24643a.put(ctjVar, Long.valueOf(this.f24645c.b()));
    }

    @Override // com.google.android.gms.internal.ads.cto
    public final void a(ctj ctjVar, String str, Throwable th) {
        if (this.f24643a.containsKey(ctjVar)) {
            long b2 = this.f24645c.b();
            long longValue = this.f24643a.get(ctjVar).longValue();
            ConcurrentHashMap<String, String> concurrentHashMap = this.f24644b.f24630a;
            String valueOf = String.valueOf(str);
            String concat = valueOf.length() != 0 ? "task.".concat(valueOf) : new String("task.");
            String valueOf2 = String.valueOf(Long.toString(b2 - longValue));
            concurrentHashMap.put(concat, valueOf2.length() != 0 ? "f.".concat(valueOf2) : new String("f."));
        }
        if (this.f24646d.containsKey(ctjVar)) {
            a(ctjVar, false);
        }
    }

    @Override // com.google.android.gms.internal.ads.cto
    public final void a(String str) {
    }

    @Override // com.google.android.gms.internal.ads.cto
    public final void b(ctj ctjVar, String str) {
        if (this.f24643a.containsKey(ctjVar)) {
            long b2 = this.f24645c.b();
            long longValue = this.f24643a.get(ctjVar).longValue();
            ConcurrentHashMap<String, String> concurrentHashMap = this.f24644b.f24630a;
            String valueOf = String.valueOf(str);
            String concat = valueOf.length() != 0 ? "task.".concat(valueOf) : new String("task.");
            String valueOf2 = String.valueOf(Long.toString(b2 - longValue));
            concurrentHashMap.put(concat, valueOf2.length() != 0 ? "s.".concat(valueOf2) : new String("s."));
        }
        if (this.f24646d.containsKey(ctjVar)) {
            a(ctjVar, true);
        }
    }
}
