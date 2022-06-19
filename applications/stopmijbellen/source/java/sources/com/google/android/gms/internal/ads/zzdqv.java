package com.google.android.gms.internal.ads;

import android.view.MotionEvent;
import android.view.View;
import android.view.ViewTreeObserver;
import android.widget.FrameLayout;
import com.google.android.gms.ads.formats.NativeAd;
import com.google.android.gms.ads.internal.zzt;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;
import javax.annotation.ParametersAreNonnullByDefault;
import javax.annotation.concurrent.GuardedBy;
import org.json.JSONObject;
@ParametersAreNonnullByDefault
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdqv.class */
public final class zzdqv extends zzbor implements ViewTreeObserver.OnGlobalLayoutListener, ViewTreeObserver.OnScrollChangedListener, zzdrw {
    private final WeakReference<View> zza;
    private final Map<String, WeakReference<View>> zzb = new HashMap();
    private final Map<String, WeakReference<View>> zzc = new HashMap();
    private final Map<String, WeakReference<View>> zzd = new HashMap();
    @GuardedBy("this")
    private zzdpx zze;
    private zzayb zzf;

    public zzdqv(View view, HashMap<String, View> hashMap, HashMap<String, View> hashMap2) {
        view.setOnTouchListener(this);
        view.setOnClickListener(this);
        zzt.zzx();
        zzcjz.zza(view, this);
        zzt.zzx();
        zzcjz.zzb(view, this);
        this.zza = new WeakReference<>(view);
        for (Map.Entry<String, View> entry : hashMap.entrySet()) {
            String key = entry.getKey();
            View value = entry.getValue();
            if (value != null) {
                this.zzb.put(key, new WeakReference<>(value));
                if (!NativeAd.ASSET_ADCHOICES_CONTAINER_VIEW.equals(key) && !"3011".equals(key)) {
                    value.setOnTouchListener(this);
                    value.setClickable(true);
                    value.setOnClickListener(this);
                }
            }
        }
        this.zzd.putAll(this.zzb);
        for (Map.Entry<String, View> entry2 : hashMap2.entrySet()) {
            View value2 = entry2.getValue();
            if (value2 != null) {
                this.zzc.put(entry2.getKey(), new WeakReference<>(value2));
                value2.setOnTouchListener(this);
                value2.setClickable(false);
            }
        }
        this.zzd.putAll(this.zzc);
        this.zzf = new zzayb(view.getContext(), view);
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        synchronized (this) {
            zzdpx zzdpxVar = this.zze;
            if (zzdpxVar != null) {
                zzdpxVar.zzx(view, zzf(), zzl(), zzm(), true);
            }
        }
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public final void onGlobalLayout() {
        synchronized (this) {
            zzdpx zzdpxVar = this.zze;
            if (zzdpxVar != null) {
                zzdpxVar.zzv(zzf(), zzl(), zzm(), zzdpx.zzP(zzf()));
            }
        }
    }

    @Override // android.view.ViewTreeObserver.OnScrollChangedListener
    public final void onScrollChanged() {
        synchronized (this) {
            zzdpx zzdpxVar = this.zze;
            if (zzdpxVar != null) {
                zzdpxVar.zzv(zzf(), zzl(), zzm(), zzdpx.zzP(zzf()));
            }
        }
    }

    @Override // android.view.View.OnTouchListener
    public final boolean onTouch(View view, MotionEvent motionEvent) {
        synchronized (this) {
            zzdpx zzdpxVar = this.zze;
            if (zzdpxVar != null) {
                zzdpxVar.zzD(view, motionEvent, zzf());
            }
        }
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzbos
    public final void zzb(IObjectWrapper iObjectWrapper) {
        synchronized (this) {
            if (this.zze != null) {
                Object unwrap = ObjectWrapper.unwrap(iObjectWrapper);
                if (!(unwrap instanceof View)) {
                    zzciz.zzj("Calling NativeAdViewHolderNonagonDelegate.setClickConfirmingView with wrong wrapped object");
                }
                this.zze.zzF((View) unwrap);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbos
    public final void zzc(IObjectWrapper iObjectWrapper) {
        synchronized (this) {
            Object unwrap = ObjectWrapper.unwrap(iObjectWrapper);
            if (!(unwrap instanceof zzdpx)) {
                zzciz.zzj("Not an instance of InternalNativeAd. This is most likely a transient error");
                return;
            }
            zzdpx zzdpxVar = this.zze;
            if (zzdpxVar != null) {
                zzdpxVar.zzL(this);
            }
            zzdpx zzdpxVar2 = (zzdpx) unwrap;
            if (!zzdpxVar2.zzM()) {
                zzciz.zzg("Your account must be enabled to use this feature. Talk to your account manager to request this feature for your account.");
                return;
            }
            this.zze = zzdpxVar2;
            zzdpxVar2.zzK(this);
            this.zze.zzC(zzf());
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbos
    public final void zzd() {
        synchronized (this) {
            zzdpx zzdpxVar = this.zze;
            if (zzdpxVar != null) {
                zzdpxVar.zzL(this);
                this.zze = null;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdrw
    public final View zzf() {
        return this.zza.get();
    }

    @Override // com.google.android.gms.internal.ads.zzdrw
    public final View zzg(String str) {
        synchronized (this) {
            WeakReference<View> weakReference = this.zzd.get(str);
            if (weakReference == null) {
                return null;
            }
            return weakReference.get();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdrw
    public final FrameLayout zzh() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzdrw
    public final zzayb zzi() {
        return this.zzf;
    }

    @Override // com.google.android.gms.internal.ads.zzdrw
    public final IObjectWrapper zzj() {
        synchronized (this) {
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzdrw
    public final String zzk() {
        synchronized (this) {
        }
        return "1007";
    }

    @Override // com.google.android.gms.internal.ads.zzdrw
    public final Map<String, WeakReference<View>> zzl() {
        Map<String, WeakReference<View>> map;
        synchronized (this) {
            map = this.zzd;
        }
        return map;
    }

    @Override // com.google.android.gms.internal.ads.zzdrw
    public final Map<String, WeakReference<View>> zzm() {
        Map<String, WeakReference<View>> map;
        synchronized (this) {
            map = this.zzb;
        }
        return map;
    }

    @Override // com.google.android.gms.internal.ads.zzdrw
    public final Map<String, WeakReference<View>> zzn() {
        Map<String, WeakReference<View>> map;
        synchronized (this) {
            map = this.zzc;
        }
        return map;
    }

    @Override // com.google.android.gms.internal.ads.zzdrw
    public final JSONObject zzo() {
        synchronized (this) {
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzdrw
    public final JSONObject zzp() {
        synchronized (this) {
            zzdpx zzdpxVar = this.zze;
            if (zzdpxVar != null) {
                return zzdpxVar.zzg(zzf(), zzl(), zzm());
            }
            return null;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdrw
    public final void zzq(String str, View view, boolean z) {
        synchronized (this) {
            this.zzd.put(str, new WeakReference<>(view));
            if (!NativeAd.ASSET_ADCHOICES_CONTAINER_VIEW.equals(str) && !"3011".equals(str)) {
                this.zzb.put(str, new WeakReference<>(view));
                view.setClickable(true);
                view.setOnClickListener(this);
                view.setOnTouchListener(this);
            }
        }
    }
}
