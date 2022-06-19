package com.google.android.gms.ads;

import android.os.RemoteException;
import androidx.annotation.RecentlyNonNull;
import com.google.android.gms.common.internal.C6155o;
import com.google.android.gms.internal.ads.AbstractC6640ju;
import com.google.android.gms.internal.ads.BinderC6900qv;
import com.google.android.gms.internal.ads.ei0;
/* renamed from: com.google.android.gms.ads.s */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/s.class */
public final class C5845s {

    /* renamed from: a */
    private final Object f18791a = new Object();

    /* renamed from: b */
    private AbstractC6640ju f18792b;

    /* renamed from: c */
    private AbstractC5846a f18793c;

    /* renamed from: com.google.android.gms.ads.s$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/s$a.class */
    public static abstract class AbstractC5846a {
        /* renamed from: a */
        public void mo16580a() {
        }

        /* renamed from: b */
        public void m17765b(boolean z) {
        }

        /* renamed from: c */
        public void mo16579c() {
        }

        /* renamed from: d */
        public void m17764d() {
        }

        /* renamed from: e */
        public void mo16578e() {
        }
    }

    /* renamed from: a */
    public void m17768a(@RecentlyNonNull AbstractC5846a abstractC5846a) {
        C6155o.m17017k(abstractC5846a, "VideoLifecycleCallbacks may not be null.");
        synchronized (this.f18791a) {
            this.f18793c = abstractC5846a;
            AbstractC6640ju abstractC6640ju = this.f18792b;
            if (abstractC6640ju != null) {
                try {
                    abstractC6640ju.mo11350g3(new BinderC6900qv(abstractC5846a));
                } catch (RemoteException e) {
                    ei0.m15466d("Unable to call setVideoLifecycleCallbacks on video controller.", e);
                }
            }
        }
    }

    /* renamed from: b */
    public final void m17767b(AbstractC6640ju abstractC6640ju) {
        synchronized (this.f18791a) {
            this.f18792b = abstractC6640ju;
            AbstractC5846a abstractC5846a = this.f18793c;
            if (abstractC5846a != null) {
                m17768a(abstractC5846a);
            }
        }
    }

    /* renamed from: c */
    public final AbstractC6640ju m17766c() {
        AbstractC6640ju abstractC6640ju;
        synchronized (this.f18791a) {
            abstractC6640ju = this.f18792b;
        }
        return abstractC6640ju;
    }
}
