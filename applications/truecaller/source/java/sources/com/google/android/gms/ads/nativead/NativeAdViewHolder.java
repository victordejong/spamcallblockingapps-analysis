package com.google.android.gms.ads.nativead;

import android.os.RemoteException;
import android.view.View;
import androidx.annotation.RecentlyNonNull;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.internal.ads.zzber;
import com.google.android.gms.internal.ads.zzbmr;
import com.google.android.gms.internal.ads.zzcgt;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;
import java.util.WeakHashMap;
import org.checkerframework.checker.initialization.qual.NotOnlyInitialized;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/ads/nativead/NativeAdViewHolder.class */
public final class NativeAdViewHolder {
    @RecentlyNonNull
    public static WeakHashMap<View, NativeAdViewHolder> zza = new WeakHashMap<>();
    @NotOnlyInitialized
    private zzbmr zzb;
    private WeakReference<View> zzc;

    public NativeAdViewHolder(@RecentlyNonNull View view, @RecentlyNonNull Map<String, View> map, @RecentlyNonNull Map<String, View> map2) {
        Preconditions.m38897k(view, "ContainerView must not be null");
        if (view instanceof NativeAdView) {
            zzcgt.zzf("The provided containerView is of type of NativeAdView, which cannot be usedwith NativeAdViewHolder.");
        } else if (zza.get(view) != null) {
            zzcgt.zzf("The provided containerView is already in use with another NativeAdViewHolder.");
        } else {
            zza.put(view, this);
            this.zzc = new WeakReference<>(view);
            this.zzb = zzber.zzb().zzn(view, zza(map), zza(map2));
        }
    }

    private static final HashMap<String, View> zza(Map<String, View> map) {
        return map == null ? new HashMap<>() : new HashMap<>(map);
    }

    public final void setClickConfirmingView(@RecentlyNonNull View view) {
        try {
            this.zzb.zzd(new ObjectWrapper(view));
        } catch (RemoteException e) {
            zzcgt.zzg("Unable to call setClickConfirmingView on delegate", e);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [com.google.android.gms.dynamic.IObjectWrapper, java.lang.Object] */
    public void setNativeAd(@RecentlyNonNull NativeAd nativeAd) {
        ?? zza2 = nativeAd.zza();
        WeakReference<View> weakReference = this.zzc;
        View view = weakReference != null ? weakReference.get() : null;
        if (view == null) {
            zzcgt.zzi("NativeAdViewHolder.setNativeAd containerView doesn't exist, returning");
            return;
        }
        if (!zza.containsKey(view)) {
            zza.put(view, this);
        }
        zzbmr zzbmrVar = this.zzb;
        if (zzbmrVar == 0) {
            return;
        }
        try {
            zzbmrVar.zzb(zza2);
        } catch (RemoteException e) {
            zzcgt.zzg("Unable to call setNativeAd on delegate", e);
        }
    }

    public void unregisterNativeAd() {
        zzbmr zzbmrVar = this.zzb;
        if (zzbmrVar != null) {
            try {
                zzbmrVar.zzc();
            } catch (RemoteException e) {
                zzcgt.zzg("Unable to call unregisterNativeAd on delegate", e);
            }
        }
        WeakReference<View> weakReference = this.zzc;
        View view = weakReference != null ? weakReference.get() : null;
        if (view != null) {
            zza.remove(view);
        }
    }
}
