package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.ads.VideoController;
import com.google.android.gms.ads.nativead.MediaView;
import com.google.android.gms.ads.nativead.NativeAd;
import com.google.android.gms.ads.nativead.NativeCustomFormatAd;
import com.google.android.gms.dynamic.d;
import java.util.List;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/qk.class */
public final class qk implements NativeCustomFormatAd {

    /* renamed from: a  reason: collision with root package name */
    private final eo f28335a;

    /* renamed from: b  reason: collision with root package name */
    private final MediaView f28336b;

    /* renamed from: c  reason: collision with root package name */
    private final VideoController f28337c = new VideoController();

    /* renamed from: d  reason: collision with root package name */
    private NativeCustomFormatAd.DisplayOpenMeasurement f28338d;

    public qk(eo eoVar) {
        Context context;
        this.f28335a = eoVar;
        try {
            context = (Context) d.a(eoVar.f());
        } catch (RemoteException | NullPointerException e) {
            za.zzc("", e);
            context = null;
        }
        MediaView mediaView = null;
        if (context != null) {
            mediaView = new MediaView(context);
            try {
                if (!this.f28335a.a(d.a(mediaView))) {
                    mediaView = null;
                }
            } catch (RemoteException e2) {
                za.zzc("", e2);
                mediaView = null;
            }
        }
        this.f28336b = mediaView;
    }

    @Override // com.google.android.gms.ads.nativead.NativeCustomFormatAd
    public final void destroy() {
        try {
            this.f28335a.e();
        } catch (RemoteException e) {
            za.zzc("", e);
        }
    }

    @Override // com.google.android.gms.ads.nativead.NativeCustomFormatAd
    public final List<String> getAvailableAssetNames() {
        try {
            return this.f28335a.a();
        } catch (RemoteException e) {
            za.zzc("", e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.nativead.NativeCustomFormatAd
    public final String getCustomFormatId() {
        try {
            return this.f28335a.b();
        } catch (RemoteException e) {
            za.zzc("", e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.nativead.NativeCustomFormatAd
    public final NativeCustomFormatAd.DisplayOpenMeasurement getDisplayOpenMeasurement() {
        try {
            if (this.f28338d == null && this.f28335a.h()) {
                this.f28338d = new qb(this.f28335a);
            }
        } catch (RemoteException e) {
            za.zzc("", e);
        }
        return this.f28338d;
    }

    @Override // com.google.android.gms.ads.nativead.NativeCustomFormatAd
    public final NativeAd.Image getImage(String str) {
        try {
            dr b2 = this.f28335a.b(str);
            if (b2 != null) {
                return new qe(b2);
            }
            return null;
        } catch (RemoteException e) {
            za.zzc("", e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.nativead.NativeCustomFormatAd
    public final CharSequence getText(String str) {
        try {
            return this.f28335a.a(str);
        } catch (RemoteException e) {
            za.zzc("", e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.nativead.NativeCustomFormatAd
    public final VideoController getVideoController() {
        try {
            emk d2 = this.f28335a.d();
            if (d2 != null) {
                this.f28337c.zza(d2);
            }
        } catch (RemoteException e) {
            za.zzc("Exception occurred while getting video controller", e);
        }
        return this.f28337c;
    }

    @Override // com.google.android.gms.ads.nativead.NativeCustomFormatAd
    public final MediaView getVideoMediaView() {
        return this.f28336b;
    }

    @Override // com.google.android.gms.ads.nativead.NativeCustomFormatAd
    public final void performClick(String str) {
        try {
            this.f28335a.c(str);
        } catch (RemoteException e) {
            za.zzc("", e);
        }
    }

    @Override // com.google.android.gms.ads.nativead.NativeCustomFormatAd
    public final void recordImpression() {
        try {
            this.f28335a.c();
        } catch (RemoteException e) {
            za.zzc("", e);
        }
    }
}
