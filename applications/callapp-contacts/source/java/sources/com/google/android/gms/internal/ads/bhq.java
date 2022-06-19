package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.android.gms.ads.VideoController;
import com.google.android.gms.ads.internal.util.zzd;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bhq.class */
public final class bhq extends VideoController.VideoLifecycleCallbacks {

    /* renamed from: a */
    private final bcr f43982a;

    public bhq(bcr bcrVar) {
        this.f43982a = bcrVar;
    }

    /* renamed from: a */
    private static emp m17850a(bcr bcrVar) {
        emk m18178b = bcrVar.m18178b();
        if (m18178b == null) {
            return null;
        }
        try {
            return m18178b.mo14457h();
        } catch (RemoteException e) {
            return null;
        }
    }

    @Override // com.google.android.gms.ads.VideoController.VideoLifecycleCallbacks
    public final void onVideoEnd() {
        emp m17850a = m17850a(this.f43982a);
        if (m17850a == null) {
            return;
        }
        try {
            m17850a.mo14050d();
        } catch (RemoteException e) {
            zzd.zzd("Unable to call onVideoEnd()", e);
        }
    }

    @Override // com.google.android.gms.ads.VideoController.VideoLifecycleCallbacks
    public final void onVideoPause() {
        emp m17850a = m17850a(this.f43982a);
        if (m17850a == null) {
            return;
        }
        try {
            m17850a.mo14051c();
        } catch (RemoteException e) {
            zzd.zzd("Unable to call onVideoEnd()", e);
        }
    }

    @Override // com.google.android.gms.ads.VideoController.VideoLifecycleCallbacks
    public final void onVideoStart() {
        emp m17850a = m17850a(this.f43982a);
        if (m17850a == null) {
            return;
        }
        try {
            m17850a.mo14054a();
        } catch (RemoteException e) {
            zzd.zzd("Unable to call onVideoEnd()", e);
        }
    }
}
