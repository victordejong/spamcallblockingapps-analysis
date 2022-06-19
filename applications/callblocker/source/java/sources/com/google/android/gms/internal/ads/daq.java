package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.BlockingQueue;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/daq.class */
public final class daq implements dvo {

    /* renamed from: a */
    private final Map<String, List<dts<?>>> f13906a = new HashMap();

    /* renamed from: b */
    private final aza f13907b;

    public daq(aza azaVar) {
        this.f13907b = azaVar;
    }

    /* renamed from: b */
    public final boolean m10257b(dts<?> dtsVar) {
        boolean z;
        synchronized (this) {
            String m8595f = dtsVar.m8595f();
            if (this.f13906a.containsKey(m8595f)) {
                List<dts<?>> list = this.f13906a.get(m8595f);
                List<dts<?>> list2 = list;
                if (list == null) {
                    list2 = new ArrayList<>();
                }
                dtsVar.m8600b("waiting-for-response");
                list2.add(dtsVar);
                this.f13906a.put(m8595f, list2);
                if (C3128ez.f16642a) {
                    C3128ez.m7851b("Request for cacheKey=%s is in flight, putting on hold.", m8595f);
                }
                z = true;
            } else {
                this.f13906a.put(m8595f, null);
                dtsVar.m8605a((dvo) this);
                z = false;
                if (C3128ez.f16642a) {
                    C3128ez.m7851b("new request, sending to network %s", m8595f);
                    z = false;
                }
            }
        }
        return z;
    }

    @Override // com.google.android.gms.internal.ads.dvo
    /* renamed from: a */
    public final void mo8491a(dts<?> dtsVar) {
        BlockingQueue blockingQueue;
        synchronized (this) {
            String m8595f = dtsVar.m8595f();
            List<dts<?>> remove = this.f13906a.remove(m8595f);
            if (remove != null && !remove.isEmpty()) {
                if (C3128ez.f16642a) {
                    C3128ez.m7853a("%d waiting requests for cacheKey=%s; resend to network", Integer.valueOf(remove.size()), m8595f);
                }
                dts<?> remove2 = remove.remove(0);
                this.f13906a.put(m8595f, remove);
                remove2.m8605a((dvo) this);
                try {
                    blockingQueue = this.f13907b.f10674c;
                    blockingQueue.put(remove2);
                } catch (InterruptedException e) {
                    C3128ez.m7850c("Couldn't add request to queue. %s", e.toString());
                    Thread.currentThread().interrupt();
                    this.f13907b.m12227a();
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.dvo
    /* renamed from: a */
    public final void mo8490a(dts<?> dtsVar, ecj<?> ecjVar) {
        List<dts<?>> remove;
        AbstractC2823b abstractC2823b;
        if (ecjVar.f16284b == null || ecjVar.f16284b.m11531a()) {
            mo8491a(dtsVar);
            return;
        }
        String m8595f = dtsVar.m8595f();
        synchronized (this) {
            remove = this.f13906a.remove(m8595f);
        }
        if (remove == null) {
            return;
        }
        if (C3128ez.f16642a) {
            C3128ez.m7853a("Releasing %d waiting requests for cacheKey=%s.", Integer.valueOf(remove.size()), m8595f);
        }
        for (dts<?> dtsVar2 : remove) {
            abstractC2823b = this.f13907b.f10676e;
            abstractC2823b.mo9085a(dtsVar2, ecjVar);
        }
    }
}
