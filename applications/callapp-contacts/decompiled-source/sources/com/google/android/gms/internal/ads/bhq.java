package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.android.gms.ads.VideoController;
import com.google.android.gms.ads.internal.util.zzd;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bhq.class */
public final class bhq extends VideoController.VideoLifecycleCallbacks {

    /* renamed from: a  reason: collision with root package name */
    private final bcr f24473a;

    public bhq(bcr bcrVar) {
        this.f24473a = bcrVar;
    }

    private static emp a(bcr bcrVar) {
        emk b2 = bcrVar.b();
        if (b2 == null) {
            return null;
        }
        try {
            return b2.h();
        } catch (RemoteException e) {
            return null;
        }
    }

    @Override // com.google.android.gms.ads.VideoController.VideoLifecycleCallbacks
    public final void onVideoEnd() {
        emp a2 = a(this.f24473a);
        if (a2 != null) {
            try {
                a2.d();
            } catch (RemoteException e) {
                zzd.zzd("Unable to call onVideoEnd()", e);
            }
        }
    }

    @Override // com.google.android.gms.ads.VideoController.VideoLifecycleCallbacks
    public final void onVideoPause() {
        emp a2 = a(this.f24473a);
        if (a2 != null) {
            try {
                a2.c();
            } catch (RemoteException e) {
                zzd.zzd("Unable to call onVideoEnd()", e);
            }
        }
    }

    @Override // com.google.android.gms.ads.VideoController.VideoLifecycleCallbacks
    public final void onVideoStart() {
        emp a2 = a(this.f24473a);
        if (a2 != null) {
            try {
                a2.a();
            } catch (RemoteException e) {
                zzd.zzd("Unable to call onVideoEnd()", e);
            }
        }
    }
}
