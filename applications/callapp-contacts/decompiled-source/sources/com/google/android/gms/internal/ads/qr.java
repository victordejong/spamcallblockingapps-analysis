package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.BlockingQueue;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/qr.class */
final class qr implements cb {

    /* renamed from: b  reason: collision with root package name */
    private final jz f28341b;

    /* renamed from: d  reason: collision with root package name */
    private final dzu f28343d;
    private final BlockingQueue<z<?>> e;

    /* renamed from: a  reason: collision with root package name */
    private final Map<String, List<z<?>>> f28340a = new HashMap();

    /* renamed from: c  reason: collision with root package name */
    private final dz f28342c = null;

    /* JADX INFO: Access modifiers changed from: package-private */
    public qr(dzu dzuVar, BlockingQueue<z<?>> blockingQueue, jz jzVar) {
        this.f28341b = jzVar;
        this.f28343d = dzuVar;
        this.e = blockingQueue;
    }

    @Override // com.google.android.gms.internal.ads.cb
    public final void a(z<?> zVar) {
        BlockingQueue<z<?>> blockingQueue;
        synchronized (this) {
            String zze = zVar.zze();
            List<z<?>> remove = this.f28340a.remove(zze);
            if (remove != null && !remove.isEmpty()) {
                if (mz.f28207a) {
                    mz.a("%d waiting requests for cacheKey=%s; resend to network", Integer.valueOf(remove.size()), zze);
                }
                z<?> remove2 = remove.remove(0);
                this.f28340a.put(zze, remove);
                remove2.zza((cb) this);
                if (!(this.f28343d == null || (blockingQueue = this.e) == null)) {
                    try {
                        blockingQueue.put(remove2);
                    } catch (InterruptedException e) {
                        mz.c("Couldn't add request to queue. %s", e.toString());
                        Thread.currentThread().interrupt();
                        this.f28343d.a();
                    }
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.cb
    public final void a(z<?> zVar, fa<?> faVar) {
        List<z<?>> remove;
        if (faVar.f27993b == null || faVar.f27993b.a()) {
            a(zVar);
            return;
        }
        String zze = zVar.zze();
        synchronized (this) {
            remove = this.f28340a.remove(zze);
        }
        if (remove != null) {
            if (mz.f28207a) {
                mz.a("Releasing %d waiting requests for cacheKey=%s.", Integer.valueOf(remove.size()), zze);
            }
            for (z<?> zVar2 : remove) {
                this.f28341b.a(zVar2, faVar);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean b(z<?> zVar) {
        synchronized (this) {
            String zze = zVar.zze();
            if (this.f28340a.containsKey(zze)) {
                List<z<?>> list = this.f28340a.get(zze);
                List<z<?>> list2 = list;
                if (list == null) {
                    list2 = new ArrayList<>();
                }
                zVar.zzc("waiting-for-response");
                list2.add(zVar);
                this.f28340a.put(zze, list2);
                if (mz.f28207a) {
                    mz.b("Request for cacheKey=%s is in flight, putting on hold.", zze);
                }
                return true;
            }
            this.f28340a.put(zze, null);
            zVar.zza((cb) this);
            if (mz.f28207a) {
                mz.b("new request, sending to network %s", zze);
            }
            return false;
        }
    }
}
