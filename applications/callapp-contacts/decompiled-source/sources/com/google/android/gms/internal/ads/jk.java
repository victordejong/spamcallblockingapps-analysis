package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.android.gms.ads.MediaContent;
import com.google.android.gms.ads.VideoController;
import com.google.android.gms.ads.instream.InstreamAd;
import com.google.android.gms.ads.instream.InstreamAdView;
import com.google.android.gms.dynamic.d;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/jk.class */
public final class jk extends InstreamAd {

    /* renamed from: a  reason: collision with root package name */
    private final iz f28074a;

    /* renamed from: b  reason: collision with root package name */
    private VideoController f28075b = a();

    /* renamed from: c  reason: collision with root package name */
    private MediaContent f28076c = b();

    public jk(iz izVar) {
        this.f28074a = izVar;
    }

    private final VideoController a() {
        VideoController videoController = new VideoController();
        try {
            videoController.zza(this.f28074a.b());
        } catch (RemoteException e) {
            za.zze("#007 Could not call remote method.", e);
        }
        return videoController;
    }

    private final MediaContent b() {
        try {
            if (this.f28074a.d() != null) {
                return new d(this.f28074a.d());
            }
            return null;
        } catch (RemoteException e) {
            za.zze("#007 Could not call remote method.", e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.instream.InstreamAd
    public final void destroy() {
        try {
            this.f28074a.c();
            this.f28075b = null;
            this.f28076c = null;
        } catch (RemoteException e) {
            za.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.instream.InstreamAd
    public final float getAspectRatio() {
        VideoController videoController = this.f28075b;
        return videoController == null ? BitmapDescriptorFactory.HUE_RED : videoController.getAspectRatio();
    }

    @Override // com.google.android.gms.ads.instream.InstreamAd
    public final MediaContent getMediaContent() {
        return this.f28076c;
    }

    @Override // com.google.android.gms.ads.instream.InstreamAd
    public final VideoController getVideoController() {
        return this.f28075b;
    }

    @Override // com.google.android.gms.ads.instream.InstreamAd
    public final float getVideoCurrentTime() {
        VideoController videoController = this.f28075b;
        return videoController == null ? BitmapDescriptorFactory.HUE_RED : videoController.getVideoCurrentTime();
    }

    @Override // com.google.android.gms.ads.instream.InstreamAd
    public final float getVideoDuration() {
        VideoController videoController = this.f28075b;
        return videoController == null ? BitmapDescriptorFactory.HUE_RED : videoController.getVideoDuration();
    }

    @Override // com.google.android.gms.ads.instream.InstreamAd
    public final void zza(InstreamAdView instreamAdView) {
        if (instreamAdView == null) {
            za.zzex("showInView: parameter view must not be null.");
            return;
        }
        try {
            this.f28074a.a(d.a(instreamAdView));
        } catch (RemoteException e) {
            za.zze("#007 Could not call remote method.", e);
        }
    }
}
