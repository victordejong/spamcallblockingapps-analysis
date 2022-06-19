package com.google.android.gms.ads.formats;

import android.os.RemoteException;
import android.view.View;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.internal.ads.zzaey;
import com.google.android.gms.internal.ads.zzazk;
import com.google.android.gms.internal.ads.zzwr;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;
import java.util.WeakHashMap;
@Deprecated
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/formats/NativeAdViewHolder.class */
public final class NativeAdViewHolder {
    public static WeakHashMap<View, NativeAdViewHolder> zzbob = new WeakHashMap<>();
    private zzaey zzboa;
    private WeakReference<View> zzboc;

    public NativeAdViewHolder(View view, Map<String, View> map, Map<String, View> map2) {
        Preconditions.checkNotNull(view, "ContainerView must not be null");
        if ((view instanceof NativeAdView) || (view instanceof UnifiedNativeAdView)) {
            zzazk.zzev("The provided containerView is of type of NativeAdView, which cannot be usedwith NativeAdViewHolder.");
        } else if (zzbob.get(view) != null) {
            zzazk.zzev("The provided containerView is already in use with another NativeAdViewHolder.");
        } else {
            zzbob.put(view, this);
            this.zzboc = new WeakReference<>(view);
            this.zzboa = zzwr.zzqo().zza(view, zzb(map), zzb(map2));
        }
    }

    private final void zza(IObjectWrapper iObjectWrapper) {
        WeakReference<View> weakReference = this.zzboc;
        View view = weakReference != null ? weakReference.get() : null;
        if (view == null) {
            zzazk.zzex("NativeAdViewHolder.setNativeAd containerView doesn't exist, returning");
            return;
        }
        if (!zzbob.containsKey(view)) {
            zzbob.put(view, this);
        }
        zzaey zzaeyVar = this.zzboa;
        if (zzaeyVar == null) {
            return;
        }
        try {
            zzaeyVar.zza(iObjectWrapper);
        } catch (RemoteException e) {
            zzazk.zzc("Unable to call setNativeAd on delegate", e);
        }
    }

    private static HashMap<String, View> zzb(Map<String, View> map) {
        return map == null ? new HashMap<>() : new HashMap<>(map);
    }

    public final void setClickConfirmingView(View view) {
        try {
            this.zzboa.zzf(ObjectWrapper.wrap(view));
        } catch (RemoteException e) {
            zzazk.zzc("Unable to call setClickConfirmingView on delegate", e);
        }
    }

    public final void setNativeAd(NativeAd nativeAd) {
        zza((IObjectWrapper) nativeAd.zzjs());
    }

    public final void setNativeAd(UnifiedNativeAd unifiedNativeAd) {
        zza((IObjectWrapper) unifiedNativeAd.zzjs());
    }

    public final void unregisterNativeAd() {
        zzaey zzaeyVar = this.zzboa;
        if (zzaeyVar != null) {
            try {
                zzaeyVar.unregisterNativeAd();
            } catch (RemoteException e) {
                zzazk.zzc("Unable to call unregisterNativeAd on delegate", e);
            }
        }
        WeakReference<View> weakReference = this.zzboc;
        View view = weakReference != null ? weakReference.get() : null;
        if (view != null) {
            zzbob.remove(view);
        }
    }
}
