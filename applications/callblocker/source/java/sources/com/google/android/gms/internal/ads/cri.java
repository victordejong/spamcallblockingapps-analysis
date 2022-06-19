package com.google.android.gms.internal.ads;

import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/cri.class */
public final class cri<V> implements Runnable {

    /* renamed from: a */
    private final Future<V> f13606a;

    /* renamed from: b */
    private final crh<? super V> f13607b;

    public cri(Future<V> future, crh<? super V> crhVar) {
        this.f13606a = future;
        this.f13607b = crhVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Throwable m10737a;
        if ((this.f13606a instanceof csj) && (m10737a = csn.m10737a((csj) this.f13606a)) != null) {
            this.f13607b.mo6718a(m10737a);
            return;
        }
        try {
            this.f13607b.mo6719a((crh<? super V>) crg.m10776a((Future<Object>) this.f13606a));
        } catch (Error e) {
            e = e;
            this.f13607b.mo6718a(e);
        } catch (RuntimeException e2) {
            e = e2;
            this.f13607b.mo6718a(e);
        } catch (ExecutionException e3) {
            this.f13607b.mo6718a(e3.getCause());
        }
    }

    public final String toString() {
        return coi.m10947a(this).m10946a(this.f13607b).toString();
    }
}
