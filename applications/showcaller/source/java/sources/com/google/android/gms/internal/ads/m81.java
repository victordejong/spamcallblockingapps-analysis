package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.C5667s;
import com.google.android.gms.ads.internal.util.C5722o1;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.Executor;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/m81.class */
public class m81<ListenerT> {

    /* renamed from: d */
    protected final Map<ListenerT, Executor> f26482d = new HashMap();

    public m81(Set<ja1<ListenerT>> set) {
        m13340P0(set);
    }

    /* renamed from: C0 */
    public final void m13342C0(ja1<ListenerT> ja1Var) {
        synchronized (this) {
            m13341D0(ja1Var.f24830a, ja1Var.f24831b);
        }
    }

    /* renamed from: D0 */
    public final void m13341D0(ListenerT listenert, Executor executor) {
        synchronized (this) {
            this.f26482d.put(listenert, executor);
        }
    }

    /* renamed from: P0 */
    public final void m13340P0(Set<ja1<ListenerT>> set) {
        synchronized (this) {
            for (ja1<ListenerT> ja1Var : set) {
                m13342C0(ja1Var);
            }
        }
    }

    /* renamed from: Q0 */
    public final void m13339Q0(l81<ListenerT> l81Var) {
        synchronized (this) {
            for (Map.Entry<ListenerT, Executor> entry : this.f26482d.entrySet()) {
                entry.getValue().execute(new Runnable(l81Var, entry.getKey()) { // from class: com.google.android.gms.internal.ads.k81

                    /* renamed from: d */
                    private final l81 f25083d;

                    /* renamed from: e */
                    private final Object f25084e;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f25083d = l81Var;
                        this.f25084e = key;
                    }

                    @Override // java.lang.Runnable
                    public final void run() {
                        try {
                            this.f25083d.mo8530a(this.f25084e);
                        } catch (Throwable th) {
                            C5667s.m18156h().m12234l(th, "EventEmitter.notify");
                            C5722o1.m17989l("Event emitter exception.", th);
                        }
                    }
                });
            }
        }
    }
}
