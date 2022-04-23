package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.util.zzd;
import com.google.android.gms.ads.internal.zzr;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.Executor;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/awl.class */
public class awl<ListenerT> {

    /* renamed from: a  reason: collision with root package name */
    private final Map<ListenerT, Executor> f23948a = new HashMap();

    /* JADX INFO: Access modifiers changed from: protected */
    public awl(Set<ayi<ListenerT>> set) {
        a(set);
    }

    private final void a(Set<ayi<ListenerT>> set) {
        synchronized (this) {
            for (ayi<ListenerT> ayiVar : set) {
                a(ayiVar);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void a(final awn<ListenerT> awnVar) {
        synchronized (this) {
            for (Map.Entry<ListenerT, Executor> entry : this.f23948a.entrySet()) {
                final ListenerT key = entry.getKey();
                entry.getValue().execute(new Runnable(awnVar, key) { // from class: com.google.android.gms.internal.ads.awk

                    /* renamed from: a  reason: collision with root package name */
                    private final awn f23946a;

                    /* renamed from: b  reason: collision with root package name */
                    private final Object f23947b;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f23946a = awnVar;
                        this.f23947b = key;
                    }

                    @Override // java.lang.Runnable
                    public final void run() {
                        try {
                            this.f23946a.a(this.f23947b);
                        } catch (Throwable th) {
                            zzr.zzkz().b(th, "EventEmitter.notify");
                            zzd.zza("Event emitter exception.", th);
                        }
                    }
                });
            }
        }
    }

    public final void a(ayi<ListenerT> ayiVar) {
        synchronized (this) {
            a(ayiVar.f24004a, ayiVar.f24005b);
        }
    }

    public final void a(ListenerT listenert, Executor executor) {
        synchronized (this) {
            this.f23948a.put(listenert, executor);
        }
    }
}
