package com.google.android.gms.internal.ads;

import android.view.MotionEvent;
import android.view.View;
import android.view.ViewTreeObserver;
import android.widget.FrameLayout;
import com.google.android.gms.ads.formats.NativeAd;
import com.google.android.gms.ads.formats.NativeContentAd;
import com.google.android.gms.ads.internal.util.zzd;
import com.google.android.gms.ads.internal.zzr;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;
import javax.annotation.ParametersAreNonnullByDefault;
import org.json.JSONObject;
@ParametersAreNonnullByDefault
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzccy.class */
public final class zzccy extends zzafb implements ViewTreeObserver.OnGlobalLayoutListener, ViewTreeObserver.OnScrollChangedListener, zzcdx {
    private zzcbu zzgfm;
    private zzqs zzgfn;
    private final WeakReference<View> zzgfq;
    private final Map<String, WeakReference<View>> zzgfr = new HashMap();
    private final Map<String, WeakReference<View>> zzgfs = new HashMap();
    private final Map<String, WeakReference<View>> zzgft = new HashMap();

    public zzccy(View view, HashMap<String, View> hashMap, HashMap<String, View> hashMap2) {
        view.setOnTouchListener(this);
        view.setOnClickListener(this);
        zzr.zzlo();
        zzbai.zza(view, (ViewTreeObserver.OnGlobalLayoutListener) this);
        zzr.zzlo();
        zzbai.zza(view, (ViewTreeObserver.OnScrollChangedListener) this);
        this.zzgfq = new WeakReference<>(view);
        for (Map.Entry<String, View> entry : hashMap.entrySet()) {
            String key = entry.getKey();
            View value = entry.getValue();
            if (value != null) {
                this.zzgfr.put(key, new WeakReference<>(value));
                if (!NativeAd.ASSET_ADCHOICES_CONTAINER_VIEW.equals(key) && !"3011".equals(key)) {
                    value.setOnTouchListener(this);
                    value.setClickable(true);
                    value.setOnClickListener(this);
                }
            }
        }
        this.zzgft.putAll(this.zzgfr);
        for (Map.Entry<String, View> entry2 : hashMap2.entrySet()) {
            View value2 = entry2.getValue();
            if (value2 != null) {
                this.zzgfs.put(entry2.getKey(), new WeakReference<>(value2));
                value2.setOnTouchListener(this);
                value2.setClickable(false);
            }
        }
        this.zzgft.putAll(this.zzgfs);
        this.zzgfn = new zzqs(view.getContext(), view);
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        synchronized (this) {
            zzcbu zzcbuVar = this.zzgfm;
            if (zzcbuVar != null) {
                zzcbuVar.zza(view, zzajr(), zzaov(), zzaow(), true);
            }
        }
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public final void onGlobalLayout() {
        synchronized (this) {
            zzcbu zzcbuVar = this.zzgfm;
            if (zzcbuVar != null) {
                zzcbuVar.zzb(zzajr(), zzaov(), zzaow(), zzcbu.zzz(zzajr()));
            }
        }
    }

    @Override // android.view.ViewTreeObserver.OnScrollChangedListener
    public final void onScrollChanged() {
        synchronized (this) {
            zzcbu zzcbuVar = this.zzgfm;
            if (zzcbuVar != null) {
                zzcbuVar.zzb(zzajr(), zzaov(), zzaow(), zzcbu.zzz(zzajr()));
            }
        }
    }

    @Override // android.view.View.OnTouchListener
    public final boolean onTouch(View view, MotionEvent motionEvent) {
        synchronized (this) {
            zzcbu zzcbuVar = this.zzgfm;
            if (zzcbuVar != null) {
                zzcbuVar.zza(view, motionEvent, zzajr());
            }
        }
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzaey
    public final void unregisterNativeAd() {
        synchronized (this) {
            zzcbu zzcbuVar = this.zzgfm;
            if (zzcbuVar != null) {
                zzcbuVar.zzc(this);
                this.zzgfm = null;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaey
    public final void zza(IObjectWrapper iObjectWrapper) {
        synchronized (this) {
            Object unwrap = ObjectWrapper.unwrap(iObjectWrapper);
            if (!(unwrap instanceof zzcbu)) {
                zzd.zzex("Not an instance of InternalNativeAd. This is most likely a transient error");
                return;
            }
            zzcbu zzcbuVar = this.zzgfm;
            if (zzcbuVar != null) {
                zzcbuVar.zzc(this);
            }
            if (!((zzcbu) unwrap).zzanp()) {
                zzd.zzev("Your account must be enabled to use this feature. Talk to your account manager to request this feature for your account.");
                return;
            }
            zzcbu zzcbuVar2 = (zzcbu) unwrap;
            this.zzgfm = zzcbuVar2;
            zzcbuVar2.zza(this);
            this.zzgfm.zzaa(zzajr());
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcdx
    public final void zza(String str, View view, boolean z) {
        synchronized (this) {
            if (view == null) {
                this.zzgft.remove(str);
                this.zzgfr.remove(str);
                this.zzgfs.remove(str);
                return;
            }
            this.zzgft.put(str, new WeakReference<>(view));
            if (!NativeAd.ASSET_ADCHOICES_CONTAINER_VIEW.equals(str) && !"3011".equals(str)) {
                this.zzgfr.put(str, new WeakReference<>(view));
                view.setClickable(true);
                view.setOnClickListener(this);
                view.setOnTouchListener(this);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcdx
    public final View zzajr() {
        return this.zzgfq.get();
    }

    @Override // com.google.android.gms.internal.ads.zzcdx
    public final Map<String, WeakReference<View>> zzaov() {
        Map<String, WeakReference<View>> map;
        synchronized (this) {
            map = this.zzgft;
        }
        return map;
    }

    @Override // com.google.android.gms.internal.ads.zzcdx
    public final Map<String, WeakReference<View>> zzaow() {
        Map<String, WeakReference<View>> map;
        synchronized (this) {
            map = this.zzgfr;
        }
        return map;
    }

    @Override // com.google.android.gms.internal.ads.zzcdx
    public final Map<String, WeakReference<View>> zzaox() {
        Map<String, WeakReference<View>> map;
        synchronized (this) {
            map = this.zzgfs;
        }
        return map;
    }

    @Override // com.google.android.gms.internal.ads.zzcdx
    public final String zzaoy() {
        synchronized (this) {
        }
        return NativeContentAd.ASSET_ATTRIBUTION_ICON_IMAGE;
    }

    @Override // com.google.android.gms.internal.ads.zzcdx
    public final FrameLayout zzaoz() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzcdx
    public final zzqs zzapa() {
        return this.zzgfn;
    }

    @Override // com.google.android.gms.internal.ads.zzcdx
    public final IObjectWrapper zzapb() {
        synchronized (this) {
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzaey
    public final void zzf(IObjectWrapper iObjectWrapper) {
        synchronized (this) {
            if (this.zzgfm != null) {
                Object unwrap = ObjectWrapper.unwrap(iObjectWrapper);
                if (!(unwrap instanceof View)) {
                    zzd.zzex("Calling NativeAdViewHolderNonagonDelegate.setClickConfirmingView with wrong wrapped object");
                }
                this.zzgfm.setClickConfirmingView((View) unwrap);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcdx
    public final View zzgc(String str) {
        synchronized (this) {
            WeakReference<View> weakReference = this.zzgft.get(str);
            if (weakReference == null) {
                return null;
            }
            return weakReference.get();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcdx
    public final JSONObject zztk() {
        synchronized (this) {
        }
        return null;
    }
}
