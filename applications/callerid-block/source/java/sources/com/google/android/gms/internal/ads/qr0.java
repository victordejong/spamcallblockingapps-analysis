package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.util.y0;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/qr0.class */
public class qr0 {

    /* renamed from: a */
    protected final Map<String, String> f8254a = new HashMap();

    /* renamed from: b */
    protected final Executor f8255b;

    /* renamed from: c */
    protected final to f8256c;

    /* renamed from: d */
    protected final boolean f8257d;

    /* renamed from: e */
    private final kq1 f8258e;

    protected qr0(Executor executor, to toVar, kq1 kq1Var) {
        C1990v4.f8865b.m6222e();
        this.f8255b = executor;
        this.f8256c = toVar;
        this.f8257d = ((Boolean) C1674c.m7906c().m6878b(C1842m3.f7393d1)).booleanValue() ? ((Boolean) C1674c.m7906c().m6878b(C1842m3.f7400e1)).booleanValue() : ((double) m03.m6632e().nextFloat()) <= C1990v4.f8864a.m6222e().doubleValue();
        this.f8258e = kq1Var;
    }

    /* renamed from: a */
    public final void m6066a(Map<String, String> map) {
        String m6770a = this.f8258e.m6770a(map);
        if (this.f8257d) {
            this.f8255b.execute(new Runnable(this, m6770a) { // from class: com.google.android.gms.internal.ads.pr0

                /* renamed from: b */
                private final qr0 f8144b;

                /* renamed from: c */
                private final String f8145c;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f8144b = this;
                    this.f8145c = m6770a;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    qr0 qr0Var = this.f8144b;
                    qr0Var.f8256c.g(this.f8145c);
                }
            });
        }
        y0.k(m6770a);
    }

    /* renamed from: b */
    public final String m6065b(Map<String, String> map) {
        return this.f8258e.m6770a(map);
    }
}
