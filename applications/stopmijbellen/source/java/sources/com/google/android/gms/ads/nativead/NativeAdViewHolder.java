package com.google.android.gms.ads.nativead;

import android.os.RemoteException;
import android.view.View;
import androidx.annotation.RecentlyNonNull;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.internal.ads.zzbgo;
import com.google.android.gms.internal.ads.zzbos;
import com.google.android.gms.internal.ads.zzciz;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;
import java.util.WeakHashMap;
import org.checkerframework.checker.initialization.qual.NotOnlyInitialized;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/nativead/NativeAdViewHolder.class */
public final class NativeAdViewHolder {
    @RecentlyNonNull
    public static WeakHashMap<View, NativeAdViewHolder> zza = new WeakHashMap<>();
    @NotOnlyInitialized
    private zzbos zzb;
    private WeakReference<View> zzc;

    public NativeAdViewHolder(@RecentlyNonNull View view, @RecentlyNonNull Map<String, View> map, @RecentlyNonNull Map<String, View> map2) {
        Preconditions.checkNotNull(view, "ContainerView must not be null");
        if (view instanceof NativeAdView) {
            zzciz.zzg("The provided containerView is of type of NativeAdView, which cannot be usedwith NativeAdViewHolder.");
        } else if (zza.get(view) != null) {
            zzciz.zzg("The provided containerView is already in use with another NativeAdViewHolder.");
        } else {
            zza.put(view, this);
            this.zzc = new WeakReference<>(view);
            this.zzb = zzbgo.zza().zzh(view, zza(map), zza(map2));
        }
    }

    private static final HashMap<String, View> zza(Map<String, View> map) {
        return map == null ? new HashMap<>() : new HashMap<>(map);
    }

    public final void setClickConfirmingView(@RecentlyNonNull View view) {
        try {
            this.zzb.zzb(ObjectWrapper.wrap(view));
        } catch (RemoteException e) {
            zzciz.zzh("Unable to call setClickConfirmingView on delegate", e);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [com.google.android.gms.dynamic.IObjectWrapper, java.lang.Object] */
    public void setNativeAd(@RecentlyNonNull NativeAd nativeAd) {
        ?? zza2 = nativeAd.zza();
        WeakReference<View> weakReference = this.zzc;
        View view = weakReference != null ? weakReference.get() : null;
        if (view == null) {
            zzciz.zzj("NativeAdViewHolder.setNativeAd containerView doesn't exist, returning");
            return;
        }
        if (!zza.containsKey(view)) {
            zza.put(view, this);
        }
        zzbos zzbosVar = this.zzb;
        if (zzbosVar == 0) {
            return;
        }
        try {
            zzbosVar.zzc(zza2);
        } catch (RemoteException e) {
            zzciz.zzh("Unable to call setNativeAd on delegate", e);
        }
    }

    public void unregisterNativeAd() {
        zzbos zzbosVar = this.zzb;
        if (zzbosVar != null) {
            try {
                zzbosVar.zzd();
            } catch (RemoteException e) {
                zzciz.zzh("Unable to call unregisterNativeAd on delegate", e);
            }
        }
        WeakReference<View> weakReference = this.zzc;
        View view = weakReference != null ? weakReference.get() : null;
        if (view != null) {
            zza.remove(view);
        }
    }
}
