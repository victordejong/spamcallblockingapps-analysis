package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.C1407r;
import com.google.android.gms.ads.internal.util.y0;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.Executor;
import javax.annotation.concurrent.GuardedBy;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/tc0.class */
public class tc0<ListenerT> {
    @GuardedBy("this")

    /* renamed from: b */
    protected final Map<ListenerT, Executor> f8595b = new HashMap();

    protected tc0(Set<ne0<ListenerT>> set) {
        m5529x0(set);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: B0 */
    public final void m5532B0(final sc0<ListenerT> sc0Var) {
        synchronized (this) {
            for (Map.Entry<ListenerT, Executor> entry : this.f8595b.entrySet()) {
                final ListenerT key = entry.getKey();
                entry.getValue().execute(new Runnable(sc0Var, key) { // from class: com.google.android.gms.internal.ads.rc0

                    /* renamed from: b */
                    private final sc0 f8329b;

                    /* renamed from: c */
                    private final Object f8330c;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f8329b = sc0Var;
                        this.f8330c = key;
                    }

                    @Override // java.lang.Runnable
                    public final void run() {
                        try {
                            this.f8329b.m5755a(this.f8330c);
                        } catch (Throwable th) {
                            C1407r.m8916h().m4589h(th, "EventEmitter.notify");
                            y0.l("Event emitter exception.", th);
                        }
                    }
                });
            }
        }
    }

    /* renamed from: m0 */
    public final void m5531m0(ne0<ListenerT> ne0Var) {
        synchronized (this) {
            m5530t0(ne0Var.f7687a, ne0Var.f7688b);
        }
    }

    /* renamed from: t0 */
    public final void m5530t0(ListenerT listenert, Executor executor) {
        synchronized (this) {
            this.f8595b.put(listenert, executor);
        }
    }

    /* renamed from: x0 */
    public final void m5529x0(Set<ne0<ListenerT>> set) {
        synchronized (this) {
            for (ne0<ListenerT> ne0Var : set) {
                m5531m0(ne0Var);
            }
        }
    }
}
