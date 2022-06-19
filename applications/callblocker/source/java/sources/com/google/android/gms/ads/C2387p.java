package com.google.android.gms.ads;

import android.os.RemoteException;
import com.google.android.gms.common.internal.C2662s;
import com.google.android.gms.internal.ads.C3645yb;
import com.google.android.gms.internal.ads.eba;
import com.google.android.gms.internal.ads.eco;
import javax.annotation.concurrent.GuardedBy;
/* renamed from: com.google.android.gms.ads.p */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/p.class */
public final class C2387p {

    /* renamed from: a */
    private final Object f6856a = new Object();
    @GuardedBy("lock")

    /* renamed from: b */
    private eba f6857b;
    @GuardedBy("lock")

    /* renamed from: c */
    private C2388a f6858c;

    /* renamed from: com.google.android.gms.ads.p$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/p$a.class */
    public static class C2388a {
        /* renamed from: a */
        public void mo12071a() {
        }

        /* renamed from: a */
        public void m14614a(boolean z) {
        }

        /* renamed from: b */
        public void m14613b() {
        }

        /* renamed from: c */
        public void mo12069c() {
        }

        /* renamed from: d */
        public void mo12068d() {
        }
    }

    /* renamed from: a */
    public final eba m14617a() {
        eba ebaVar;
        synchronized (this.f6856a) {
            ebaVar = this.f6857b;
        }
        return ebaVar;
    }

    /* renamed from: a */
    public final void m14616a(C2388a c2388a) {
        C2662s.m13980a(c2388a, "VideoLifecycleCallbacks may not be null.");
        synchronized (this.f6856a) {
            this.f6858c = c2388a;
            if (this.f6857b == null) {
                return;
            }
            try {
                this.f6857b.mo7657a(new eco(c2388a));
            } catch (RemoteException e) {
                C3645yb.m6748c("Unable to call setVideoLifecycleCallbacks on video controller.", e);
            }
        }
    }

    /* renamed from: a */
    public final void m14615a(eba ebaVar) {
        synchronized (this.f6856a) {
            this.f6857b = ebaVar;
            if (this.f6858c != null) {
                m14616a(this.f6858c);
            }
        }
    }
}
