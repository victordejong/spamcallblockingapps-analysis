package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.C2341q;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.Executor;
import javax.annotation.concurrent.GuardedBy;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ate.class */
public class ate<ListenerT> {
    @GuardedBy("this")

    /* renamed from: a */
    private final Map<ListenerT, Executor> f10286a = new HashMap();

    public ate(Set<auq<ListenerT>> set) {
        m12772a(set);
    }

    /* renamed from: a */
    private final void m12772a(Set<auq<ListenerT>> set) {
        synchronized (this) {
            for (auq<ListenerT> auqVar : set) {
                m12774a(auqVar);
            }
        }
    }

    /* renamed from: a */
    public final void m12775a(atg<ListenerT> atgVar) {
        synchronized (this) {
            for (Map.Entry<ListenerT, Executor> entry : this.f10286a.entrySet()) {
                entry.getValue().execute(new Runnable(atgVar, entry.getKey()) { // from class: com.google.android.gms.internal.ads.atd

                    /* renamed from: a */
                    private final atg f10284a;

                    /* renamed from: b */
                    private final Object f10285b;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f10284a = atgVar;
                        this.f10285b = key;
                    }

                    @Override // java.lang.Runnable
                    public final void run() {
                        try {
                            this.f10284a.mo11119a(this.f10285b);
                        } catch (Throwable th) {
                            C2341q.m14740g().m7092b(th, "EventEmitter.notify");
                            C3556uu.m7051a("Event emitter exception.", th);
                        }
                    }
                });
            }
        }
    }

    /* renamed from: a */
    public final void m12774a(auq<ListenerT> auqVar) {
        synchronized (this) {
            m12773a(auqVar.f10394a, auqVar.f10395b);
        }
    }

    /* renamed from: a */
    public final void m12773a(ListenerT listenert, Executor executor) {
        synchronized (this) {
            this.f10286a.put(listenert, executor);
        }
    }
}
