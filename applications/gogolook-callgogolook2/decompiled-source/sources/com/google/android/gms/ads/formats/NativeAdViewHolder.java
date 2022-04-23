package com.google.android.gms.ads.formats;

import android.os.RemoteException;
import android.view.View;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;
import java.util.WeakHashMap;
import p081h.p203i.p204a.p224e.p235d.p240n.C7021t;
import p081h.p203i.p204a.p224e.p252e.AbstractC7106b;
import p081h.p203i.p204a.p224e.p252e.BinderC7110d;
import p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7185b8;
import p081h.p203i.p204a.p224e.p259j.p260a.C7430v3;
import p081h.p203i.p204a.p224e.p259j.p260a.C7452x1;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/ads/formats/NativeAdViewHolder.class */
public final class NativeAdViewHolder {
    public static WeakHashMap<View, NativeAdViewHolder> zzvx = new WeakHashMap<>();
    public AbstractC7185b8 zzvw;
    public WeakReference<View> zzvy;

    public NativeAdViewHolder(View view, Map<String, View> map, Map<String, View> map2) {
        C7021t.m21289a(view, "ContainerView must not be null");
        if ((view instanceof NativeAdView) || (view instanceof UnifiedNativeAdView)) {
            C7452x1.m20574a("The provided containerView is of type of NativeAdView, which cannot be usedwith NativeAdViewHolder.");
        } else if (zzvx.get(view) != null) {
            C7452x1.m20574a("The provided containerView is already in use with another NativeAdViewHolder.");
        } else {
            zzvx.put(view, this);
            this.zzvy = new WeakReference<>(view);
            this.zzvw = C7430v3.m20639b().m20865a(view, zzb(map), zzb(map2));
        }
    }

    private final void zza(AbstractC7106b bVar) {
        WeakReference<View> weakReference = this.zzvy;
        View view = weakReference != null ? weakReference.get() : null;
        if (view == null) {
            C7452x1.m20568d("NativeAdViewHolder.setNativeAd containerView doesn't exist, returning");
            return;
        }
        if (!zzvx.containsKey(view)) {
            zzvx.put(view, this);
        }
        AbstractC7185b8 b8Var = this.zzvw;
        if (b8Var != null) {
            try {
                b8Var.mo20789c(bVar);
            } catch (RemoteException e) {
                C7452x1.m20571b("Unable to call setNativeAd on delegate", e);
            }
        }
    }

    public static HashMap<String, View> zzb(Map<String, View> map) {
        return map == null ? new HashMap<>() : new HashMap<>(map);
    }

    public final void setClickConfirmingView(View view) {
        try {
            this.zzvw.mo20788d(BinderC7110d.m21058a(view));
        } catch (RemoteException e) {
            C7452x1.m20571b("Unable to call setClickConfirmingView on delegate", e);
        }
    }

    public final void setNativeAd(NativeAd nativeAd) {
        zza((AbstractC7106b) nativeAd.zzbd());
    }

    public final void setNativeAd(UnifiedNativeAd unifiedNativeAd) {
        zza((AbstractC7106b) unifiedNativeAd.zzbd());
    }

    public final void unregisterNativeAd() {
        AbstractC7185b8 b8Var = this.zzvw;
        if (b8Var != null) {
            try {
                b8Var.mo20787e0();
            } catch (RemoteException e) {
                C7452x1.m20571b("Unable to call unregisterNativeAd on delegate", e);
            }
        }
        WeakReference<View> weakReference = this.zzvy;
        View view = weakReference != null ? weakReference.get() : null;
        if (view != null) {
            zzvx.remove(view);
        }
    }
}
