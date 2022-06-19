package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.BlockingQueue;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.gms.internal.ads.qr */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/qr.class */
public final class C12860qr implements AbstractC12262cb {

    /* renamed from: b */
    private final AbstractC12678jz f49746b;

    /* renamed from: d */
    private final dzu f49748d;

    /* renamed from: e */
    private final BlockingQueue<AbstractC13087z<?>> f49749e;

    /* renamed from: a */
    private final Map<String, List<AbstractC13087z<?>>> f49745a = new HashMap();

    /* renamed from: c */
    private final C12433dz f49747c = null;

    public C12860qr(dzu dzuVar, BlockingQueue<AbstractC13087z<?>> blockingQueue, AbstractC12678jz abstractC12678jz) {
        this.f49746b = abstractC12678jz;
        this.f49748d = dzuVar;
        this.f49749e = blockingQueue;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12262cb
    /* renamed from: a */
    public final void mo14229a(AbstractC13087z<?> abstractC13087z) {
        BlockingQueue<AbstractC13087z<?>> blockingQueue;
        synchronized (this) {
            String zze = abstractC13087z.zze();
            List<AbstractC13087z<?>> remove = this.f49745a.remove(zze);
            if (remove != null && !remove.isEmpty()) {
                if (C12759mz.f49560a) {
                    C12759mz.m14482a("%d waiting requests for cacheKey=%s; resend to network", Integer.valueOf(remove.size()), zze);
                }
                AbstractC13087z<?> remove2 = remove.remove(0);
                this.f49745a.put(zze, remove);
                remove2.zza((AbstractC12262cb) this);
                if (this.f49748d != null && (blockingQueue = this.f49749e) != null) {
                    try {
                        blockingQueue.put(remove2);
                    } catch (InterruptedException e) {
                        C12759mz.m14479c("Couldn't add request to queue. %s", e.toString());
                        Thread.currentThread().interrupt();
                        this.f49748d.m15383a();
                    }
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12262cb
    /* renamed from: a */
    public final void mo14228a(AbstractC13087z<?> abstractC13087z, C12545fa<?> c12545fa) {
        List<AbstractC13087z<?>> remove;
        if (c12545fa.f49281b == null || c12545fa.f49281b.m15364a()) {
            mo14229a(abstractC13087z);
            return;
        }
        String zze = abstractC13087z.zze();
        synchronized (this) {
            remove = this.f49745a.remove(zze);
        }
        if (remove == null) {
            return;
        }
        if (C12759mz.f49560a) {
            C12759mz.m14482a("Releasing %d waiting requests for cacheKey=%s.", Integer.valueOf(remove.size()), zze);
        }
        for (AbstractC13087z<?> abstractC13087z2 : remove) {
            this.f49746b.mo14561a(abstractC13087z2, c12545fa);
        }
    }

    /* renamed from: b */
    public final boolean m14227b(AbstractC13087z<?> abstractC13087z) {
        synchronized (this) {
            String zze = abstractC13087z.zze();
            if (!this.f49745a.containsKey(zze)) {
                this.f49745a.put(zze, null);
                abstractC13087z.zza((AbstractC12262cb) this);
                if (C12759mz.f49560a) {
                    C12759mz.m14480b("new request, sending to network %s", zze);
                }
                return false;
            }
            List<AbstractC13087z<?>> list = this.f49745a.get(zze);
            List<AbstractC13087z<?>> list2 = list;
            if (list == null) {
                list2 = new ArrayList<>();
            }
            abstractC13087z.zzc("waiting-for-response");
            list2.add(abstractC13087z);
            this.f49745a.put(zze, list2);
            if (C12759mz.f49560a) {
                C12759mz.m14480b("Request for cacheKey=%s is in flight, putting on hold.", zze);
            }
            return true;
        }
    }
}
