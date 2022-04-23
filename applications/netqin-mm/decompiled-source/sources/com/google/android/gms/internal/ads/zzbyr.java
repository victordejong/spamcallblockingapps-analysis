package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.zzp;
import com.google.android.gms.internal.ads.zzayp;
import com.google.android.gms.internal.ads.zzbyt;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbyr.class */
public class zzbyr<ListenerT> {

    /* renamed from: a */
    public final Map<ListenerT, Executor> f25597a = new HashMap();

    public zzbyr(Set<zzcab<ListenerT>> set) {
        m14938a(set);
    }

    /* renamed from: a */
    public final void m14941a(final zzbyt<ListenerT> zzbytVar) {
        synchronized (this) {
            for (Map.Entry<ListenerT, Executor> entry : this.f25597a.entrySet()) {
                final ListenerT key = entry.getKey();
                entry.getValue().execute(new Runnable(zzbytVar, key) { // from class: c.d.b.d.g.a.cg

                    /* renamed from: a */
                    public final zzbyt f12557a;

                    /* renamed from: b */
                    public final Object f12558b;

                    {
                        this.f12557a = zzbytVar;
                        this.f12558b = key;
                    }

                    @Override // java.lang.Runnable
                    public final void run() {
                        try {
                            this.f12557a.mo14897a(this.f12558b);
                        } catch (Throwable th) {
                            zzp.m17965g().m16185b(th, "EventEmitter.notify");
                            zzayp.m16154e("Event emitter exception.", th);
                        }
                    }
                });
            }
        }
    }

    /* renamed from: a */
    public final void m14940a(zzcab<ListenerT> zzcabVar) {
        synchronized (this) {
            m14939a(zzcabVar.f25644a, zzcabVar.f25645b);
        }
    }

    /* renamed from: a */
    public final void m14939a(ListenerT listenert, Executor executor) {
        synchronized (this) {
            this.f25597a.put(listenert, executor);
        }
    }

    /* renamed from: a */
    public final void m14938a(Set<zzcab<ListenerT>> set) {
        synchronized (this) {
            for (zzcab<ListenerT> zzcabVar : set) {
                m14940a(zzcabVar);
            }
        }
    }
}
