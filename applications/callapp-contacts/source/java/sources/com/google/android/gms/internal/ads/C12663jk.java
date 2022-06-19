package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.android.gms.ads.MediaContent;
import com.google.android.gms.ads.VideoController;
import com.google.android.gms.ads.instream.InstreamAd;
import com.google.android.gms.ads.instream.InstreamAdView;
import com.google.android.gms.dynamic.BinderC12129d;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
/* renamed from: com.google.android.gms.internal.ads.jk */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/jk.class */
public final class C12663jk extends InstreamAd {

    /* renamed from: a */
    private final AbstractC12651iz f49383a;

    /* renamed from: b */
    private VideoController f49384b = m14583a();

    /* renamed from: c */
    private MediaContent f49385c = m14582b();

    public C12663jk(AbstractC12651iz abstractC12651iz) {
        this.f49383a = abstractC12651iz;
    }

    /* renamed from: a */
    private final VideoController m14583a() {
        VideoController videoController = new VideoController();
        try {
            videoController.zza(this.f49383a.mo14588b());
        } catch (RemoteException e) {
            C13088za.zze("#007 Could not call remote method.", e);
        }
        return videoController;
    }

    /* renamed from: b */
    private final MediaContent m14582b() {
        try {
            if (this.f49383a.mo14586d() == null) {
                return null;
            }
            return new C12297d(this.f49383a.mo14586d());
        } catch (RemoteException e) {
            C13088za.zze("#007 Could not call remote method.", e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.instream.InstreamAd
    public final void destroy() {
        try {
            this.f49383a.mo14587c();
            this.f49384b = null;
            this.f49385c = null;
        } catch (RemoteException e) {
            C13088za.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.instream.InstreamAd
    public final float getAspectRatio() {
        VideoController videoController = this.f49384b;
        return videoController == null ? BitmapDescriptorFactory.HUE_RED : videoController.getAspectRatio();
    }

    @Override // com.google.android.gms.ads.instream.InstreamAd
    public final MediaContent getMediaContent() {
        return this.f49385c;
    }

    @Override // com.google.android.gms.ads.instream.InstreamAd
    public final VideoController getVideoController() {
        return this.f49384b;
    }

    @Override // com.google.android.gms.ads.instream.InstreamAd
    public final float getVideoCurrentTime() {
        VideoController videoController = this.f49384b;
        return videoController == null ? BitmapDescriptorFactory.HUE_RED : videoController.getVideoCurrentTime();
    }

    @Override // com.google.android.gms.ads.instream.InstreamAd
    public final float getVideoDuration() {
        VideoController videoController = this.f49384b;
        return videoController == null ? BitmapDescriptorFactory.HUE_RED : videoController.getVideoDuration();
    }

    @Override // com.google.android.gms.ads.instream.InstreamAd
    public final void zza(InstreamAdView instreamAdView) {
        if (instreamAdView == null) {
            C13088za.zzex("showInView: parameter view must not be null.");
            return;
        }
        try {
            this.f49383a.mo14590a(BinderC12129d.m18979a(instreamAdView));
        } catch (RemoteException e) {
            C13088za.zze("#007 Could not call remote method.", e);
        }
    }
}
