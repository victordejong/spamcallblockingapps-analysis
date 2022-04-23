package com.google.android.gms.ads;

import android.os.RemoteException;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.ads.zzaah;
import com.google.android.gms.internal.ads.zzbbq;
import com.google.android.gms.internal.ads.zzyo;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/VideoController.class */
public final class VideoController {

    /* renamed from: a */
    public final Object f22681a = new Object();

    /* renamed from: b */
    public zzyo f22682b;

    /* renamed from: c */
    public VideoLifecycleCallbacks f22683c;

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/VideoController$VideoLifecycleCallbacks.class */
    public static class VideoLifecycleCallbacks {
        /* renamed from: a */
        public void mo14160a() {
        }

        /* renamed from: a */
        public void m18087a(boolean z) {
        }

        /* renamed from: b */
        public void mo14158b() {
        }

        /* renamed from: c */
        public void m18086c() {
        }

        /* renamed from: d */
        public void mo14157d() {
        }
    }

    /* renamed from: a */
    public final zzyo m18090a() {
        zzyo zzyoVar;
        synchronized (this.f22681a) {
            zzyoVar = this.f22682b;
        }
        return zzyoVar;
    }

    /* renamed from: a */
    public final void m18089a(VideoLifecycleCallbacks videoLifecycleCallbacks) {
        Preconditions.m17287a(videoLifecycleCallbacks, "VideoLifecycleCallbacks may not be null.");
        synchronized (this.f22681a) {
            this.f22683c = videoLifecycleCallbacks;
            if (this.f22682b != null) {
                try {
                    this.f22682b.mo11106a(new zzaah(videoLifecycleCallbacks));
                } catch (RemoteException e) {
                    zzbbq.m15855b("Unable to call setVideoLifecycleCallbacks on video controller.", e);
                }
            }
        }
    }

    /* renamed from: a */
    public final void m18088a(zzyo zzyoVar) {
        synchronized (this.f22681a) {
            this.f22682b = zzyoVar;
            if (this.f22683c != null) {
                m18089a(this.f22683c);
            }
        }
    }
}
