package com.google.android.gms.ads.formats;

import com.google.android.gms.ads.VideoController;
import com.google.android.gms.ads.formats.NativeAd;
import java.util.List;
@Deprecated
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/formats/NativeAppInstallAd.class */
public abstract class NativeAppInstallAd extends NativeAd {

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/formats/NativeAppInstallAd$OnAppInstallAdLoadedListener.class */
    public interface OnAppInstallAdLoadedListener {
        /* renamed from: a */
        void mo18043a(NativeAppInstallAd nativeAppInstallAd);
    }

    /* renamed from: b */
    public abstract CharSequence mo16828b();

    /* renamed from: c */
    public abstract CharSequence mo16827c();

    /* renamed from: d */
    public abstract CharSequence mo16826d();

    /* renamed from: e */
    public abstract NativeAd.Image mo16825e();

    /* renamed from: f */
    public abstract List<NativeAd.Image> mo16824f();

    /* renamed from: g */
    public abstract CharSequence mo16823g();

    /* renamed from: h */
    public abstract Double mo16822h();

    /* renamed from: i */
    public abstract CharSequence mo16821i();

    /* renamed from: j */
    public abstract VideoController mo16820j();
}
