package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.util.zzd;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.Executor;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/blq.class */
public abstract class blq {

    /* renamed from: b */
    protected final C13090zc f44212b;

    /* renamed from: d */
    private final Executor f44214d;

    /* renamed from: e */
    private final boolean f44215e;

    /* renamed from: f */
    private final cuj f44216f;

    /* renamed from: c */
    private final String f44213c = C12273ci.f45829b.mo17481a();

    /* renamed from: a */
    protected final Map<String, String> f44211a = new HashMap();

    public blq(Executor executor, C13090zc c13090zc, cuj cujVar) {
        this.f44214d = executor;
        this.f44212b = c13090zc;
        this.f44215e = ((Boolean) ekb.m14831e().m18571a(C12187aq.f42728bl)).booleanValue() ? ((Boolean) ekb.m14831e().m18571a(C12187aq.f42729bm)).booleanValue() : ((double) ekb.m14828h().nextFloat()) <= C12273ci.f45828a.mo17481a().doubleValue();
        this.f44216f = cujVar;
    }

    /* renamed from: a */
    public final void m17761a(Map<String, String> map) {
        String m17759b = m17759b(map);
        if (this.f44215e) {
            this.f44214d.execute(new Runnable(this, m17759b) { // from class: com.google.android.gms.internal.ads.blp

                /* renamed from: a */
                private final blq f44209a;

                /* renamed from: b */
                private final String f44210b;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f44209a = this;
                    this.f44210b = m17759b;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    blq blqVar = this.f44209a;
                    blqVar.f44212b.zzen(this.f44210b);
                }
            });
        }
        zzd.zzed(m17759b);
    }

    /* renamed from: b */
    public final String m17759b(Map<String, String> map) {
        return this.f44216f.m17217a(map);
    }

    /* renamed from: b */
    public abstract void mo17760b();
}
