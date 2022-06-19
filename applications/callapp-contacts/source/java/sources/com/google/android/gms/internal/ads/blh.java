package com.google.android.gms.internal.ads;

import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/blh.class */
public final class blh {

    /* renamed from: a */
    final Map<String, String> f44190a = new ConcurrentHashMap();

    /* renamed from: b */
    final /* synthetic */ bli f44191b;

    public blh(bli bliVar) {
        this.f44191b = bliVar;
    }

    /* renamed from: a */
    public final blh m17769a(cov covVar) {
        this.f44190a.put("aai", covVar.f46275v);
        return this;
    }

    /* renamed from: a */
    public final blh m17768a(coz cozVar) {
        this.f44190a.put("gqi", cozVar.f46290b);
        return this;
    }

    /* renamed from: a */
    public final blh m17767a(String str, String str2) {
        this.f44190a.put(str, str2);
        return this;
    }

    /* renamed from: a */
    public final void m17771a() {
        this.f44191b.f44193b.execute(new Runnable(this) { // from class: com.google.android.gms.internal.ads.blk

            /* renamed from: a */
            private final blh f44197a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f44197a = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                blh blhVar = this.f44197a;
                blhVar.f44191b.f44192a.m17761a(blhVar.f44190a);
            }
        });
    }

    /* renamed from: b */
    public final String m17766b() {
        return this.f44191b.f44192a.m17759b(this.f44190a);
    }
}
