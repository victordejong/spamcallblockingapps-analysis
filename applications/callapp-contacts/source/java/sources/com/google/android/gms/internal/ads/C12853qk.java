package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.ads.VideoController;
import com.google.android.gms.ads.nativead.MediaView;
import com.google.android.gms.ads.nativead.NativeAd;
import com.google.android.gms.ads.nativead.NativeCustomFormatAd;
import com.google.android.gms.dynamic.BinderC12129d;
import java.util.List;
/* renamed from: com.google.android.gms.internal.ads.qk */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/qk.class */
public final class C12853qk implements NativeCustomFormatAd {

    /* renamed from: a */
    private final AbstractC12532eo f49740a;

    /* renamed from: b */
    private final MediaView f49741b;

    /* renamed from: c */
    private final VideoController f49742c = new VideoController();

    /* renamed from: d */
    private NativeCustomFormatAd.DisplayOpenMeasurement f49743d;

    public C12853qk(AbstractC12532eo abstractC12532eo) {
        Context context;
        this.f49740a = abstractC12532eo;
        try {
            context = (Context) BinderC12129d.m18980a(abstractC12532eo.mo14701f());
        } catch (RemoteException | NullPointerException e) {
            C13088za.zzc("", e);
            context = null;
        }
        MediaView mediaView = null;
        if (context != null) {
            mediaView = new MediaView(context);
            try {
                if (!this.f49740a.mo14710a(BinderC12129d.m18979a(mediaView))) {
                    mediaView = null;
                }
            } catch (RemoteException e2) {
                C13088za.zzc("", e2);
                mediaView = null;
            }
        }
        this.f49741b = mediaView;
    }

    @Override // com.google.android.gms.ads.nativead.NativeCustomFormatAd
    public final void destroy() {
        try {
            this.f49740a.mo14702e();
        } catch (RemoteException e) {
            C13088za.zzc("", e);
        }
    }

    @Override // com.google.android.gms.ads.nativead.NativeCustomFormatAd
    public final List<String> getAvailableAssetNames() {
        try {
            return this.f49740a.mo14711a();
        } catch (RemoteException e) {
            C13088za.zzc("", e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.nativead.NativeCustomFormatAd
    public final String getCustomFormatId() {
        try {
            return this.f49740a.mo14708b();
        } catch (RemoteException e) {
            C13088za.zzc("", e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.nativead.NativeCustomFormatAd
    public final NativeCustomFormatAd.DisplayOpenMeasurement getDisplayOpenMeasurement() {
        try {
            if (this.f49743d == null && this.f49740a.mo14699h()) {
                this.f49743d = new C12844qb(this.f49740a);
            }
        } catch (RemoteException e) {
            C13088za.zzc("", e);
        }
        return this.f49743d;
    }

    @Override // com.google.android.gms.ads.nativead.NativeCustomFormatAd
    public final NativeAd.Image getImage(String str) {
        try {
            AbstractC12394dr mo14706b = this.f49740a.mo14706b(str);
            if (mo14706b == null) {
                return null;
            }
            return new C12847qe(mo14706b);
        } catch (RemoteException e) {
            C13088za.zzc("", e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.nativead.NativeCustomFormatAd
    public final CharSequence getText(String str) {
        try {
            return this.f49740a.mo14709a(str);
        } catch (RemoteException e) {
            C13088za.zzc("", e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.nativead.NativeCustomFormatAd
    public final VideoController getVideoController() {
        try {
            emk mo14703d = this.f49740a.mo14703d();
            if (mo14703d != null) {
                this.f49742c.zza(mo14703d);
            }
        } catch (RemoteException e) {
            C13088za.zzc("Exception occurred while getting video controller", e);
        }
        return this.f49742c;
    }

    @Override // com.google.android.gms.ads.nativead.NativeCustomFormatAd
    public final MediaView getVideoMediaView() {
        return this.f49741b;
    }

    @Override // com.google.android.gms.ads.nativead.NativeCustomFormatAd
    public final void performClick(String str) {
        try {
            this.f49740a.mo14704c(str);
        } catch (RemoteException e) {
            C13088za.zzc("", e);
        }
    }

    @Override // com.google.android.gms.ads.nativead.NativeCustomFormatAd
    public final void recordImpression() {
        try {
            this.f49740a.mo14705c();
        } catch (RemoteException e) {
            C13088za.zzc("", e);
        }
    }
}
