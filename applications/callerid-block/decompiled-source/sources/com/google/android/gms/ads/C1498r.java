package com.google.android.gms.ads;

import android.os.RemoteException;
import androidx.annotation.RecentlyNonNull;
import com.google.android.gms.common.internal.C1581h;
import com.google.android.gms.internal.ads.AbstractC1841m1;
import com.google.android.gms.internal.ads.C1894po;
import com.google.android.gms.internal.ads.t2;
import javax.annotation.concurrent.GuardedBy;
/* renamed from: com.google.android.gms.ads.r */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/r.class */
public final class C1498r {

    /* renamed from: a */
    private final Object f5706a = new Object();
    @GuardedBy("lock")

    /* renamed from: b */
    private AbstractC1841m1 f5707b;
    @GuardedBy("lock")

    /* renamed from: c */
    private AbstractC1499a f5708c;

    /* renamed from: com.google.android.gms.ads.r$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/r$a.class */
    public static abstract class AbstractC1499a {
        /* renamed from: a */
        public void m8572a() {
        }

        /* renamed from: b */
        public void m8571b(boolean z) {
        }

        /* renamed from: c */
        public void m8570c() {
        }

        /* renamed from: d */
        public void m8569d() {
        }

        /* renamed from: e */
        public void m8568e() {
        }
    }

    /* renamed from: a */
    public void m8575a(@RecentlyNonNull AbstractC1499a aVar) {
        C1581h.m8346i(aVar, "VideoLifecycleCallbacks may not be null.");
        synchronized (this.f5706a) {
            this.f5708c = aVar;
            AbstractC1841m1 m1Var = this.f5707b;
            if (m1Var != null) {
                try {
                    m1Var.m6620n2(new t2(aVar));
                } catch (RemoteException e) {
                    C1894po.m6182d("Unable to call setVideoLifecycleCallbacks on video controller.", e);
                }
            }
        }
    }

    /* renamed from: b */
    public final void m8574b(AbstractC1841m1 m1Var) {
        synchronized (this.f5706a) {
            this.f5707b = m1Var;
            AbstractC1499a aVar = this.f5708c;
            if (aVar != null) {
                m8575a(aVar);
            }
        }
    }

    /* renamed from: c */
    public final AbstractC1841m1 m8573c() {
        AbstractC1841m1 m1Var;
        synchronized (this.f5706a) {
            m1Var = this.f5707b;
        }
        return m1Var;
    }
}
