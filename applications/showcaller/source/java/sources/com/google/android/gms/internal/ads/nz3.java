package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.BlockingQueue;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/nz3.class */
public final class nz3 implements cz3 {

    /* renamed from: a */
    private final Map<String, List<dz3<?>>> f27378a = new HashMap();

    /* renamed from: b */
    private final ry3 f27379b;

    /* renamed from: c */
    private final BlockingQueue<dz3<?>> f27380c;

    /* renamed from: d */
    private final vy3 f27381d;

    /* JADX WARN: Multi-variable type inference failed */
    public nz3(ry3 ry3Var, ry3 ry3Var2, BlockingQueue<dz3<?>> blockingQueue, vy3 vy3Var) {
        this.f27381d = blockingQueue;
        this.f27379b = ry3Var;
        this.f27380c = ry3Var2;
    }

    @Override // com.google.android.gms.internal.ads.cz3
    /* renamed from: a */
    public final void mo12767a(dz3<?> dz3Var) {
        synchronized (this) {
            String m15633l = dz3Var.m15633l();
            List<dz3<?>> remove = this.f27378a.remove(m15633l);
            if (remove == null || remove.isEmpty()) {
                return;
            }
            if (mz3.f26925b) {
                mz3.m13040a("%d waiting requests for cacheKey=%s; resend to network", Integer.valueOf(remove.size()), m15633l);
            }
            dz3<?> remove2 = remove.remove(0);
            this.f27378a.put(m15633l, remove);
            remove2.m15622x(this);
            try {
                this.f27380c.put(remove2);
            } catch (InterruptedException e) {
                mz3.m13038c("Couldn't add request to queue. %s", e.toString());
                Thread.currentThread().interrupt();
                this.f27379b.m11251b();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.cz3
    /* renamed from: b */
    public final void mo12766b(dz3<?> dz3Var, jz3<?> jz3Var) {
        List<dz3<?>> remove;
        oy3 oy3Var = jz3Var.f25036b;
        if (oy3Var == null || oy3Var.m12472a(System.currentTimeMillis())) {
            mo12767a(dz3Var);
            return;
        }
        String m15633l = dz3Var.m15633l();
        synchronized (this) {
            remove = this.f27378a.remove(m15633l);
        }
        if (remove == null) {
            return;
        }
        if (mz3.f26925b) {
            mz3.m13040a("Releasing %d waiting requests for cacheKey=%s.", Integer.valueOf(remove.size()), m15633l);
        }
        for (dz3<?> dz3Var2 : remove) {
            this.f27381d.m9835a(dz3Var2, jz3Var, null);
        }
    }

    /* renamed from: c */
    public final boolean m12765c(dz3<?> dz3Var) {
        synchronized (this) {
            String m15633l = dz3Var.m15633l();
            if (!this.f27378a.containsKey(m15633l)) {
                this.f27378a.put(m15633l, null);
                dz3Var.m15622x(this);
                if (mz3.f26925b) {
                    mz3.m13039b("new request, sending to network %s", m15633l);
                }
                return false;
            }
            List<dz3<?>> list = this.f27378a.get(m15633l);
            List<dz3<?>> list2 = list;
            if (list == null) {
                list2 = new ArrayList<>();
            }
            dz3Var.m15639f("waiting-for-response");
            list2.add(dz3Var);
            this.f27378a.put(m15633l, list2);
            if (mz3.f26925b) {
                mz3.m13039b("Request for cacheKey=%s is in flight, putting on hold.", m15633l);
            }
            return true;
        }
    }
}
