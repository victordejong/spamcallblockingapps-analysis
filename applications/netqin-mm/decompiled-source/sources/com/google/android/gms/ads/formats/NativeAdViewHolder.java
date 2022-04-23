package com.google.android.gms.ads.formats;

import android.os.RemoteException;
import android.view.View;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.internal.ads.zzael;
import com.google.android.gms.internal.ads.zzbbq;
import java.lang.ref.WeakReference;
import java.util.WeakHashMap;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/formats/NativeAdViewHolder.class */
public final class NativeAdViewHolder {

    /* renamed from: c */
    public static WeakHashMap<View, NativeAdViewHolder> f22714c = new WeakHashMap<>();

    /* renamed from: a */
    public zzael f22715a;

    /* renamed from: b */
    public WeakReference<View> f22716b;

    /* renamed from: a */
    public final void m18046a(NativeAd nativeAd) {
        m18044a((IObjectWrapper) nativeAd.mo16818a());
    }

    /* renamed from: a */
    public final void m18045a(UnifiedNativeAd unifiedNativeAd) {
        m18044a((IObjectWrapper) unifiedNativeAd.mo16783l());
    }

    /* renamed from: a */
    public final void m18044a(IObjectWrapper iObjectWrapper) {
        WeakReference<View> weakReference = this.f22716b;
        View view = weakReference != null ? weakReference.get() : null;
        if (view == null) {
            zzbbq.m15852d("NativeAdViewHolder.setNativeAd containerView doesn't exist, returning");
            return;
        }
        if (!f22714c.containsKey(view)) {
            f22714c.put(view, this);
        }
        zzael zzaelVar = this.f22715a;
        if (zzaelVar != null) {
            try {
                zzaelVar.mo10921b(iObjectWrapper);
            } catch (RemoteException e) {
                zzbbq.m15855b("Unable to call setNativeAd on delegate", e);
            }
        }
    }
}
