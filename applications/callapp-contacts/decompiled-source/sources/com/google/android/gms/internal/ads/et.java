package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.ads.VideoController;
import com.google.android.gms.ads.formats.MediaView;
import com.google.android.gms.ads.formats.NativeAd;
import com.google.android.gms.ads.formats.NativeCustomTemplateAd;
import com.google.android.gms.dynamic.d;
import java.util.List;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/et.class */
public final class et implements NativeCustomTemplateAd {

    /* renamed from: a  reason: collision with root package name */
    final eo f27987a;

    /* renamed from: b  reason: collision with root package name */
    private final MediaView f27988b;

    /* renamed from: c  reason: collision with root package name */
    private final VideoController f27989c = new VideoController();

    /* renamed from: d  reason: collision with root package name */
    private NativeCustomTemplateAd.DisplayOpenMeasurement f27990d;

    public et(eo eoVar) {
        Context context;
        this.f27987a = eoVar;
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
                if (!this.f27987a.a(d.a(mediaView))) {
                    mediaView = null;
                }
            } catch (RemoteException e2) {
                za.zzc("", e2);
                mediaView = null;
            }
        }
        this.f27988b = mediaView;
    }

    @Override // com.google.android.gms.ads.formats.NativeCustomTemplateAd
    public final void destroy() {
        try {
            this.f27987a.e();
        } catch (RemoteException e) {
            za.zzc("", e);
        }
    }

    @Override // com.google.android.gms.ads.formats.NativeCustomTemplateAd
    public final List<String> getAvailableAssetNames() {
        try {
            return this.f27987a.a();
        } catch (RemoteException e) {
            za.zzc("", e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.formats.NativeCustomTemplateAd
    public final String getCustomTemplateId() {
        try {
            return this.f27987a.b();
        } catch (RemoteException e) {
            za.zzc("", e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.formats.NativeCustomTemplateAd
    public final NativeCustomTemplateAd.DisplayOpenMeasurement getDisplayOpenMeasurement() {
        try {
            if (this.f27990d == null && this.f27987a.h()) {
                this.f27990d = new dn(this.f27987a);
            }
        } catch (RemoteException e) {
            za.zzc("", e);
        }
        return this.f27990d;
    }

    @Override // com.google.android.gms.ads.formats.NativeCustomTemplateAd
    public final NativeAd.Image getImage(String str) {
        try {
            dr b2 = this.f27987a.b(str);
            if (b2 != null) {
                return new dw(b2);
            }
            return null;
        } catch (RemoteException e) {
            za.zzc("", e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.formats.NativeCustomTemplateAd
    public final CharSequence getText(String str) {
        try {
            return this.f27987a.a(str);
        } catch (RemoteException e) {
            za.zzc("", e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.formats.NativeCustomTemplateAd
    public final VideoController getVideoController() {
        try {
            emk d2 = this.f27987a.d();
            if (d2 != null) {
                this.f27989c.zza(d2);
            }
        } catch (RemoteException e) {
            za.zzc("Exception occurred while getting video controller", e);
        }
        return this.f27989c;
    }

    @Override // com.google.android.gms.ads.formats.NativeCustomTemplateAd
    public final MediaView getVideoMediaView() {
        return this.f27988b;
    }

    @Override // com.google.android.gms.ads.formats.NativeCustomTemplateAd
    public final void performClick(String str) {
        try {
            this.f27987a.c(str);
        } catch (RemoteException e) {
            za.zzc("", e);
        }
    }

    @Override // com.google.android.gms.ads.formats.NativeCustomTemplateAd
    public final void recordImpression() {
        try {
            this.f27987a.c();
        } catch (RemoteException e) {
            za.zzc("", e);
        }
    }
}
