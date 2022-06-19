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
    public void m8575a(@RecentlyNonNull AbstractC1499a abstractC1499a) {
        C1581h.m8346i(abstractC1499a, "VideoLifecycleCallbacks may not be null.");
        synchronized (this.f5706a) {
            this.f5708c = abstractC1499a;
            AbstractC1841m1 abstractC1841m1 = this.f5707b;
            if (abstractC1841m1 != null) {
                try {
                    abstractC1841m1.m6620n2(new t2(abstractC1499a));
                } catch (RemoteException e) {
                    C1894po.m6182d("Unable to call setVideoLifecycleCallbacks on video controller.", e);
                }
            }
        }
    }

    /* renamed from: b */
    public final void m8574b(AbstractC1841m1 abstractC1841m1) {
        synchronized (this.f5706a) {
            this.f5707b = abstractC1841m1;
            AbstractC1499a abstractC1499a = this.f5708c;
            if (abstractC1499a != null) {
                m8575a(abstractC1499a);
            }
        }
    }

    /* renamed from: c */
    public final AbstractC1841m1 m8573c() {
        AbstractC1841m1 abstractC1841m1;
        synchronized (this.f5706a) {
            abstractC1841m1 = this.f5707b;
        }
        return abstractC1841m1;
    }
}
