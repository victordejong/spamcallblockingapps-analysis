package com.google.android.gms.internal.ads;

import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/lz0.class */
public final class lz0 {

    /* renamed from: a */
    private final Executor f26352a;

    /* renamed from: b */
    private final ScheduledExecutorService f26353b;

    /* renamed from: c */
    private final r03<ez0> f26354c;

    /* renamed from: d */
    private volatile boolean f26355d = true;

    public lz0(Executor executor, ScheduledExecutorService scheduledExecutorService, r03<ez0> r03Var) {
        this.f26352a = executor;
        this.f26353b = scheduledExecutorService;
        this.f26354c = r03Var;
    }

    /* renamed from: b */
    public static /* synthetic */ void m13391b(lz0 lz0Var, List list, f03 f03Var) {
        if (list == null || list.isEmpty()) {
            lz0Var.f26352a.execute(new Runnable(f03Var) { // from class: com.google.android.gms.internal.ads.fz0

                /* renamed from: d */
                private final f03 f23201d;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f23201d = f03Var;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.f23201d.mo8126a(new zzdym(3));
                }
            });
            return;
        }
        r03 m14003a = k03.m14003a(null);
        Iterator it = list.iterator();
        r03 r03Var = m14003a;
        while (true) {
            r03 r03Var2 = r03Var;
            if (!it.hasNext()) {
                k03.m13988p(r03Var2, new kz0(lz0Var, f03Var), lz0Var.f26352a);
                return;
            } else {
                r03Var = k03.m13995i(k03.m13997g(r03Var2, Throwable.class, new uz2(f03Var) { // from class: com.google.android.gms.internal.ads.gz0

                    /* renamed from: a */
                    private final f03 f23755a;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f23755a = f03Var;
                    }

                    @Override // com.google.android.gms.internal.ads.uz2
                    /* renamed from: a */
                    public final r03 mo8403a(Object obj) {
                        this.f23755a.mo8126a((Throwable) obj);
                        return k03.m14003a(null);
                    }
                }, lz0Var.f26352a), new uz2(lz0Var, f03Var, (r03) it.next()) { // from class: com.google.android.gms.internal.ads.hz0

                    /* renamed from: a */
                    private final lz0 f24091a;

                    /* renamed from: b */
                    private final f03 f24092b;

                    /* renamed from: c */
                    private final r03 f24093c;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f24091a = lz0Var;
                        this.f24092b = f03Var;
                        this.f24093c = r03Var3;
                    }

                    @Override // com.google.android.gms.internal.ads.uz2
                    /* renamed from: a */
                    public final r03 mo8403a(Object obj) {
                        return this.f24091a.m13387f(this.f24092b, this.f24093c, (xy0) obj);
                    }
                }, lz0Var.f26352a);
            }
        }
    }

    /* renamed from: a */
    public final void m13392a(f03<xy0> f03Var) {
        k03.m13988p(this.f26354c, new jz0(this, f03Var), this.f26352a);
    }

    /* renamed from: c */
    public final boolean m13390c() {
        return this.f26355d;
    }

    /* renamed from: e */
    public final /* synthetic */ void m13388e() {
        this.f26355d = false;
    }

    /* renamed from: f */
    public final /* synthetic */ r03 m13387f(f03 f03Var, r03 r03Var, xy0 xy0Var) {
        if (xy0Var != null) {
            f03Var.mo8125b(xy0Var);
        }
        return k03.m13996h(r03Var, C6681ky.f25880b.m12799e().longValue(), TimeUnit.MILLISECONDS, this.f26353b);
    }
}
