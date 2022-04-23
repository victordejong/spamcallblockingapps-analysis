package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.android.gms.ads.VideoController;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcjc.class */
public final class zzcjc extends VideoController.VideoLifecycleCallbacks {

    /* renamed from: a */
    public final zzcei f26113a;

    public zzcjc(zzcei zzceiVar) {
        this.f26113a = zzceiVar;
    }

    /* renamed from: a */
    public static zzyt m14159a(zzcei zzceiVar) {
        zzyo n = zzceiVar.m14683n();
        if (n == null) {
            return null;
        }
        try {
            return n.mo11107Y0();
        } catch (RemoteException e) {
            return null;
        }
    }

    @Override // com.google.android.gms.ads.VideoController.VideoLifecycleCallbacks
    /* renamed from: a */
    public final void mo14160a() {
        zzyt a = m14159a(this.f26113a);
        if (a != null) {
            try {
                a.mo11098h0();
            } catch (RemoteException e) {
                zzbbq.m15853c("Unable to call onVideoEnd()", e);
            }
        }
    }

    @Override // com.google.android.gms.ads.VideoController.VideoLifecycleCallbacks
    /* renamed from: b */
    public final void mo14158b() {
        zzyt a = m14159a(this.f26113a);
        if (a != null) {
            try {
                a.mo11100a0();
            } catch (RemoteException e) {
                zzbbq.m15853c("Unable to call onVideoEnd()", e);
            }
        }
    }

    @Override // com.google.android.gms.ads.VideoController.VideoLifecycleCallbacks
    /* renamed from: d */
    public final void mo14157d() {
        zzyt a = m14159a(this.f26113a);
        if (a != null) {
            try {
                a.mo11097j0();
            } catch (RemoteException e) {
                zzbbq.m15853c("Unable to call onVideoEnd()", e);
            }
        }
    }
}
