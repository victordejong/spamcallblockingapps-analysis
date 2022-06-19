package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.util.zzd;
import com.google.android.gms.ads.internal.zzr;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.Executor;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/awl.class */
public class awl<ListenerT> {

    /* renamed from: a */
    private final Map<ListenerT, Executor> f43237a = new HashMap();

    public awl(Set<ayi<ListenerT>> set) {
        m18371a(set);
    }

    /* renamed from: a */
    private final void m18371a(Set<ayi<ListenerT>> set) {
        synchronized (this) {
            for (ayi<ListenerT> ayiVar : set) {
                m18373a(ayiVar);
            }
        }
    }

    /* renamed from: a */
    public final void m18374a(awn<ListenerT> awnVar) {
        synchronized (this) {
            for (Map.Entry<ListenerT, Executor> entry : this.f43237a.entrySet()) {
                entry.getValue().execute(new Runnable(awnVar, entry.getKey()) { // from class: com.google.android.gms.internal.ads.awk

                    /* renamed from: a */
                    private final awn f43235a;

                    /* renamed from: b */
                    private final Object f43236b;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f43235a = awnVar;
                        this.f43236b = key;
                    }

                    @Override // java.lang.Runnable
                    public final void run() {
                        try {
                            this.f43235a.mo17234a(this.f43236b);
                        } catch (Throwable th) {
                            zzr.zzkz().m13977b(th, "EventEmitter.notify");
                            zzd.zza("Event emitter exception.", th);
                        }
                    }
                });
            }
        }
    }

    /* renamed from: a */
    public final void m18373a(ayi<ListenerT> ayiVar) {
        synchronized (this) {
            m18372a(ayiVar.f43318a, ayiVar.f43319b);
        }
    }

    /* renamed from: a */
    public final void m18372a(ListenerT listenert, Executor executor) {
        synchronized (this) {
            this.f43237a.put(listenert, executor);
        }
    }
}
