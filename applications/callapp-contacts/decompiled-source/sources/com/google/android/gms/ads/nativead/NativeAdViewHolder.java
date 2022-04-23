package com.google.android.gms.ads.nativead;

import android.os.RemoteException;
import android.view.View;
import com.google.android.gms.common.internal.o;
import com.google.android.gms.dynamic.b;
import com.google.android.gms.dynamic.d;
import com.google.android.gms.internal.ads.ed;
import com.google.android.gms.internal.ads.ekb;
import com.google.android.gms.internal.ads.za;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;
import java.util.WeakHashMap;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/ads/nativead/NativeAdViewHolder.class */
public final class NativeAdViewHolder {
    private static WeakHashMap<View, NativeAdViewHolder> zzbol = new WeakHashMap<>();
    private ed zzbok;
    private WeakReference<View> zzbom;

    public NativeAdViewHolder(View view, Map<String, View> map, Map<String, View> map2) {
        o.a(view, "ContainerView must not be null");
        if (view instanceof NativeAdView) {
            za.zzex("The provided containerView is of type of NativeAdView, which cannot be usedwith NativeAdViewHolder.");
        } else if (zzbol.get(view) != null) {
            za.zzex("The provided containerView is already in use with another NativeAdViewHolder.");
        } else {
            zzbol.put(view, this);
            this.zzbom = new WeakReference<>(view);
            this.zzbok = ekb.b().a(view, zzb(map), zzb(map2));
        }
    }

    private static HashMap<String, View> zzb(Map<String, View> map) {
        return map == null ? new HashMap<>() : new HashMap<>(map);
    }

    public final void setClickConfirmingView(View view) {
        try {
            this.zzbok.b(d.a(view));
        } catch (RemoteException e) {
            za.zzc("Unable to call setClickConfirmingView on delegate", e);
        }
    }

    public final void setNativeAd(NativeAd nativeAd) {
        b bVar = (b) nativeAd.zzjw();
        WeakReference<View> weakReference = this.zzbom;
        View view = weakReference != null ? weakReference.get() : null;
        if (view == null) {
            za.zzez("NativeAdViewHolder.setNativeAd containerView doesn't exist, returning");
            return;
        }
        if (!zzbol.containsKey(view)) {
            zzbol.put(view, this);
        }
        ed edVar = this.zzbok;
        if (edVar != null) {
            try {
                edVar.a(bVar);
            } catch (RemoteException e) {
                za.zzc("Unable to call setNativeAd on delegate", e);
            }
        }
    }

    public final void unregisterNativeAd() {
        ed edVar = this.zzbok;
        if (edVar != null) {
            try {
                edVar.a();
            } catch (RemoteException e) {
                za.zzc("Unable to call unregisterNativeAd on delegate", e);
            }
        }
        WeakReference<View> weakReference = this.zzbom;
        View view = weakReference != null ? weakReference.get() : null;
        if (view != null) {
            zzbol.remove(view);
        }
    }
}
