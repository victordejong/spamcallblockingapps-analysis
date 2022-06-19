package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.ads.VideoController;
import com.google.android.gms.ads.formats.MediaView;
import com.google.android.gms.ads.formats.NativeAd;
import com.google.android.gms.ads.formats.NativeCustomTemplateAd;
import com.google.android.gms.dynamic.BinderC12129d;
import java.util.List;
/* renamed from: com.google.android.gms.internal.ads.et */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/et.class */
public final class C12537et implements NativeCustomTemplateAd {

    /* renamed from: a */
    final AbstractC12532eo f49275a;

    /* renamed from: b */
    private final MediaView f49276b;

    /* renamed from: c */
    private final VideoController f49277c = new VideoController();

    /* renamed from: d */
    private NativeCustomTemplateAd.DisplayOpenMeasurement f49278d;

    public C12537et(AbstractC12532eo abstractC12532eo) {
        Context context;
        this.f49275a = abstractC12532eo;
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
                if (!this.f49275a.mo14710a(BinderC12129d.m18979a(mediaView))) {
                    mediaView = null;
                }
            } catch (RemoteException e2) {
                C13088za.zzc("", e2);
                mediaView = null;
            }
        }
        this.f49276b = mediaView;
    }

    @Override // com.google.android.gms.ads.formats.NativeCustomTemplateAd
    public final void destroy() {
        try {
            this.f49275a.mo14702e();
        } catch (RemoteException e) {
            C13088za.zzc("", e);
        }
    }

    @Override // com.google.android.gms.ads.formats.NativeCustomTemplateAd
    public final List<String> getAvailableAssetNames() {
        try {
            return this.f49275a.mo14711a();
        } catch (RemoteException e) {
            C13088za.zzc("", e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.formats.NativeCustomTemplateAd
    public final String getCustomTemplateId() {
        try {
            return this.f49275a.mo14708b();
        } catch (RemoteException e) {
            C13088za.zzc("", e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.formats.NativeCustomTemplateAd
    public final NativeCustomTemplateAd.DisplayOpenMeasurement getDisplayOpenMeasurement() {
        try {
            if (this.f49278d == null && this.f49275a.mo14699h()) {
                this.f49278d = new C12381dn(this.f49275a);
            }
        } catch (RemoteException e) {
            C13088za.zzc("", e);
        }
        return this.f49278d;
    }

    @Override // com.google.android.gms.ads.formats.NativeCustomTemplateAd
    public final NativeAd.Image getImage(String str) {
        try {
            AbstractC12394dr mo14706b = this.f49275a.mo14706b(str);
            if (mo14706b == null) {
                return null;
            }
            return new C12430dw(mo14706b);
        } catch (RemoteException e) {
            C13088za.zzc("", e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.formats.NativeCustomTemplateAd
    public final CharSequence getText(String str) {
        try {
            return this.f49275a.mo14709a(str);
        } catch (RemoteException e) {
            C13088za.zzc("", e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.formats.NativeCustomTemplateAd
    public final VideoController getVideoController() {
        try {
            emk mo14703d = this.f49275a.mo14703d();
            if (mo14703d != null) {
                this.f49277c.zza(mo14703d);
            }
        } catch (RemoteException e) {
            C13088za.zzc("Exception occurred while getting video controller", e);
        }
        return this.f49277c;
    }

    @Override // com.google.android.gms.ads.formats.NativeCustomTemplateAd
    public final MediaView getVideoMediaView() {
        return this.f49276b;
    }

    @Override // com.google.android.gms.ads.formats.NativeCustomTemplateAd
    public final void performClick(String str) {
        try {
            this.f49275a.mo14704c(str);
        } catch (RemoteException e) {
            C13088za.zzc("", e);
        }
    }

    @Override // com.google.android.gms.ads.formats.NativeCustomTemplateAd
    public final void recordImpression() {
        try {
            this.f49275a.mo14705c();
        } catch (RemoteException e) {
            C13088za.zzc("", e);
        }
    }
}
