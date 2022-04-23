package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.android.gms.ads.MediaContent;
import com.google.android.gms.ads.VideoController;
import com.google.android.gms.ads.instream.InstreamAd;
import com.google.android.gms.ads.instream.InstreamAdView;
import com.google.android.gms.dynamic.ObjectWrapper;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzajl.class */
public final class zzajl extends InstreamAd {

    /* renamed from: a */
    public final zzaje f24151a;

    public zzajl(zzaje zzajeVar) {
        this.f24151a = zzajeVar;
        m16726a();
        m16724b();
    }

    /* renamed from: a */
    public final VideoController m16726a() {
        VideoController videoController = new VideoController();
        try {
            videoController.m18088a(this.f24151a.getVideoController());
        } catch (RemoteException e) {
            zzbbq.m15851d("#007 Could not call remote method.", e);
        }
        return videoController;
    }

    @Override // com.google.android.gms.ads.instream.InstreamAd
    /* renamed from: a */
    public final void mo16725a(InstreamAdView instreamAdView) {
        if (instreamAdView == null) {
            zzbbq.m15856b("showInView: parameter view must not be null.");
            return;
        }
        try {
            this.f24151a.mo14261B(ObjectWrapper.m17020a(instreamAdView));
        } catch (RemoteException e) {
            zzbbq.m15851d("#007 Could not call remote method.", e);
        }
    }

    /* renamed from: b */
    public final MediaContent m16724b() {
        try {
            if (this.f24151a.mo14254u0() != null) {
                return new zzzm(this.f24151a.mo14254u0());
            }
            return null;
        } catch (RemoteException e) {
            zzbbq.m15851d("#007 Could not call remote method.", e);
            return null;
        }
    }
}
