package com.google.android.gms.ads.formats;

import android.os.RemoteException;
import android.view.View;
import com.google.android.gms.common.internal.C12045o;
import com.google.android.gms.dynamic.AbstractC12126b;
import com.google.android.gms.dynamic.BinderC12129d;
import com.google.android.gms.internal.ads.AbstractC12439ed;
import com.google.android.gms.internal.ads.C13088za;
import com.google.android.gms.internal.ads.ekb;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;
import java.util.WeakHashMap;
@Deprecated
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/ads/formats/NativeAdViewHolder.class */
public final class NativeAdViewHolder {
    public static WeakHashMap<View, NativeAdViewHolder> zzbol = new WeakHashMap<>();
    private AbstractC12439ed zzbok;
    private WeakReference<View> zzbom;

    public NativeAdViewHolder(View view, Map<String, View> map, Map<String, View> map2) {
        C12045o.m19161a(view, "ContainerView must not be null");
        if ((view instanceof NativeAdView) || (view instanceof UnifiedNativeAdView)) {
            C13088za.zzex("The provided containerView is of type of NativeAdView, which cannot be usedwith NativeAdViewHolder.");
        } else if (zzbol.get(view) != null) {
            C13088za.zzex("The provided containerView is already in use with another NativeAdViewHolder.");
        } else {
            zzbol.put(view, this);
            this.zzbom = new WeakReference<>(view);
            this.zzbok = ekb.m14834b().m14855a(view, zzb(map), zzb(map2));
        }
    }

    private final void zza(AbstractC12126b abstractC12126b) {
        WeakReference<View> weakReference = this.zzbom;
        View view = weakReference != null ? weakReference.get() : null;
        if (view == null) {
            C13088za.zzez("NativeAdViewHolder.setNativeAd containerView doesn't exist, returning");
            return;
        }
        if (!zzbol.containsKey(view)) {
            zzbol.put(view, this);
        }
        AbstractC12439ed abstractC12439ed = this.zzbok;
        if (abstractC12439ed == null) {
            return;
        }
        try {
            abstractC12439ed.mo14516a(abstractC12126b);
        } catch (RemoteException e) {
            C13088za.zzc("Unable to call setNativeAd on delegate", e);
        }
    }

    private static HashMap<String, View> zzb(Map<String, View> map) {
        return map == null ? new HashMap<>() : new HashMap<>(map);
    }

    public final void setClickConfirmingView(View view) {
        try {
            this.zzbok.mo14515b(BinderC12129d.m18979a(view));
        } catch (RemoteException e) {
            C13088za.zzc("Unable to call setClickConfirmingView on delegate", e);
        }
    }

    public final void setNativeAd(NativeAd nativeAd) {
        zza((AbstractC12126b) nativeAd.zzjw());
    }

    public final void setNativeAd(UnifiedNativeAd unifiedNativeAd) {
        zza((AbstractC12126b) unifiedNativeAd.zzjw());
    }

    public final void unregisterNativeAd() {
        AbstractC12439ed abstractC12439ed = this.zzbok;
        if (abstractC12439ed != null) {
            try {
                abstractC12439ed.mo14517a();
            } catch (RemoteException e) {
                C13088za.zzc("Unable to call unregisterNativeAd on delegate", e);
            }
        }
        WeakReference<View> weakReference = this.zzbom;
        View view = weakReference != null ? weakReference.get() : null;
        if (view != null) {
            zzbol.remove(view);
        }
    }
}
