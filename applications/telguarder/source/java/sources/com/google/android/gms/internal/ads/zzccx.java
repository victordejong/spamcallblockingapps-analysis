package com.google.android.gms.internal.ads;

import android.view.MotionEvent;
import android.view.View;
import android.view.ViewTreeObserver;
import android.widget.FrameLayout;
import com.google.android.gms.ads.formats.NativeAd;
import com.google.android.gms.ads.formats.NativeAppInstallAd;
import com.google.android.gms.ads.formats.NativeContentAd;
import com.google.android.gms.ads.internal.util.zzbn;
import com.google.android.gms.ads.internal.util.zzd;
import com.google.android.gms.ads.internal.zzr;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzccx.class */
public final class zzccx extends zzaeu implements ViewTreeObserver.OnGlobalLayoutListener, ViewTreeObserver.OnScrollChangedListener, zzcdx {
    public static final String[] zzgfi = {NativeAppInstallAd.ASSET_MEDIA_VIDEO, NativeContentAd.ASSET_MEDIA_VIDEO, "3010"};
    private FrameLayout zzbny;
    private zzaem zzclh;
    private final String zzgfh;
    private FrameLayout zzgfj;
    private zzdzv zzgfk;
    private View zzgfl;
    private zzcbu zzgfm;
    private zzqs zzgfn;
    private boolean zzgfp;
    private Map<String, WeakReference<View>> zzdto = new HashMap();
    private IObjectWrapper zzgfo = null;
    private boolean zzesz = false;
    private final int zzehz = 204204000;

    public zzccx(FrameLayout frameLayout, FrameLayout frameLayout2, int i) {
        String str;
        this.zzgfj = frameLayout;
        this.zzbny = frameLayout2;
        String canonicalName = frameLayout.getClass().getCanonicalName();
        if ("com.google.android.gms.ads.formats.NativeContentAdView".equals(canonicalName)) {
            str = NativeContentAd.ASSET_ATTRIBUTION_ICON_IMAGE;
        } else if ("com.google.android.gms.ads.formats.NativeAppInstallAdView".equals(canonicalName)) {
            str = NativeAppInstallAd.ASSET_ATTRIBUTION_ICON_IMAGE;
        } else {
            "com.google.android.gms.ads.formats.UnifiedNativeAdView".equals(canonicalName);
            str = "3012";
        }
        this.zzgfh = str;
        zzr.zzlo();
        zzbai.zza((View) frameLayout, (ViewTreeObserver.OnGlobalLayoutListener) this);
        zzr.zzlo();
        zzbai.zza((View) frameLayout, (ViewTreeObserver.OnScrollChangedListener) this);
        this.zzgfk = zzazp.zzeig;
        this.zzgfn = new zzqs(this.zzgfj.getContext(), this.zzgfj);
        frameLayout.setOnTouchListener(this);
        frameLayout.setOnClickListener(this);
    }

    private final void zzaou() {
        synchronized (this) {
            this.zzgfk.execute(new Runnable(this) { // from class: com.google.android.gms.internal.ads.zzcda
                private final zzccx zzgfw;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.zzgfw = this;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.zzgfw.zzapc();
                }
            });
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaev
    public final void destroy() {
        synchronized (this) {
            if (this.zzesz) {
                return;
            }
            zzcbu zzcbuVar = this.zzgfm;
            if (zzcbuVar != null) {
                zzcbuVar.zzc(this);
                this.zzgfm = null;
            }
            this.zzdto.clear();
            this.zzgfj.removeAllViews();
            this.zzbny.removeAllViews();
            this.zzdto = null;
            this.zzgfj = null;
            this.zzbny = null;
            this.zzgfl = null;
            this.zzgfn = null;
            this.zzesz = true;
        }
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        synchronized (this) {
            zzcbu zzcbuVar = this.zzgfm;
            if (zzcbuVar != null) {
                zzcbuVar.cancelUnconfirmedClick();
                this.zzgfm.zza(view, this.zzgfj, zzaov(), zzaow(), false);
            }
        }
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public final void onGlobalLayout() {
        synchronized (this) {
            zzcbu zzcbuVar = this.zzgfm;
            if (zzcbuVar != null) {
                zzcbuVar.zzb(this.zzgfj, zzaov(), zzaow(), zzcbu.zzz(this.zzgfj));
            }
        }
    }

    @Override // android.view.ViewTreeObserver.OnScrollChangedListener
    public final void onScrollChanged() {
        synchronized (this) {
            zzcbu zzcbuVar = this.zzgfm;
            if (zzcbuVar != null) {
                zzcbuVar.zzb(this.zzgfj, zzaov(), zzaow(), zzcbu.zzz(this.zzgfj));
            }
        }
    }

    @Override // android.view.View.OnTouchListener
    public final boolean onTouch(View view, MotionEvent motionEvent) {
        synchronized (this) {
            zzcbu zzcbuVar = this.zzgfm;
            if (zzcbuVar != null) {
                zzcbuVar.zza(view, motionEvent, this.zzgfj);
            }
        }
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzaev
    public final void zza(IObjectWrapper iObjectWrapper) {
        synchronized (this) {
            if (this.zzesz) {
                return;
            }
            Object unwrap = ObjectWrapper.unwrap(iObjectWrapper);
            if (!(unwrap instanceof zzcbu)) {
                zzd.zzex("Not an instance of native engine. This is most likely a transient error");
                return;
            }
            zzcbu zzcbuVar = this.zzgfm;
            if (zzcbuVar != null) {
                zzcbuVar.zzc(this);
            }
            zzaou();
            zzcbu zzcbuVar2 = (zzcbu) unwrap;
            this.zzgfm = zzcbuVar2;
            zzcbuVar2.zza(this);
            this.zzgfm.zzaa(this.zzgfj);
            this.zzgfm.zzab(this.zzbny);
            if (this.zzgfp) {
                this.zzgfm.zzanr().zza(this.zzclh);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaev
    public final void zza(zzaem zzaemVar) {
        synchronized (this) {
            if (this.zzesz) {
                return;
            }
            this.zzgfp = true;
            this.zzclh = zzaemVar;
            zzcbu zzcbuVar = this.zzgfm;
            if (zzcbuVar != null) {
                zzcbuVar.zzanr().zza(zzaemVar);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcdx
    public final void zza(String str, View view, boolean z) {
        synchronized (this) {
            if (this.zzesz) {
                return;
            }
            if (view == null) {
                this.zzdto.remove(str);
                return;
            }
            this.zzdto.put(str, new WeakReference<>(view));
            if (!NativeAd.ASSET_ADCHOICES_CONTAINER_VIEW.equals(str) && !"3011".equals(str)) {
                if (zzbn.zzdh(this.zzehz)) {
                    view.setOnTouchListener(this);
                }
                view.setClickable(true);
                view.setOnClickListener(this);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcdx
    public final /* synthetic */ View zzajr() {
        return this.zzgfj;
    }

    @Override // com.google.android.gms.internal.ads.zzcdx
    public final Map<String, WeakReference<View>> zzaov() {
        Map<String, WeakReference<View>> map;
        synchronized (this) {
            map = this.zzdto;
        }
        return map;
    }

    @Override // com.google.android.gms.internal.ads.zzcdx
    public final Map<String, WeakReference<View>> zzaow() {
        Map<String, WeakReference<View>> map;
        synchronized (this) {
            map = this.zzdto;
        }
        return map;
    }

    @Override // com.google.android.gms.internal.ads.zzcdx
    public final Map<String, WeakReference<View>> zzaox() {
        synchronized (this) {
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzcdx
    public final String zzaoy() {
        String str;
        synchronized (this) {
            str = this.zzgfh;
        }
        return str;
    }

    @Override // com.google.android.gms.internal.ads.zzcdx
    public final FrameLayout zzaoz() {
        return this.zzbny;
    }

    @Override // com.google.android.gms.internal.ads.zzcdx
    public final zzqs zzapa() {
        return this.zzgfn;
    }

    @Override // com.google.android.gms.internal.ads.zzcdx
    public final IObjectWrapper zzapb() {
        return this.zzgfo;
    }

    public final /* synthetic */ void zzapc() {
        if (this.zzgfl == null) {
            View view = new View(this.zzgfj.getContext());
            this.zzgfl = view;
            view.setLayoutParams(new FrameLayout.LayoutParams(-1, 0));
        }
        if (this.zzgfj != this.zzgfl.getParent()) {
            this.zzgfj.addView(this.zzgfl);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaev
    public final void zzb(String str, IObjectWrapper iObjectWrapper) {
        synchronized (this) {
            zza(str, (View) ObjectWrapper.unwrap(iObjectWrapper), true);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaev
    public final void zzc(IObjectWrapper iObjectWrapper, int i) {
        synchronized (this) {
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaev
    public final IObjectWrapper zzco(String str) {
        IObjectWrapper wrap;
        synchronized (this) {
            wrap = ObjectWrapper.wrap(zzgc(str));
        }
        return wrap;
    }

    @Override // com.google.android.gms.internal.ads.zzaev
    public final void zzf(IObjectWrapper iObjectWrapper) {
        synchronized (this) {
            this.zzgfm.setClickConfirmingView((View) ObjectWrapper.unwrap(iObjectWrapper));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaev
    public final void zzg(IObjectWrapper iObjectWrapper) {
        onTouch(this.zzgfj, (MotionEvent) ObjectWrapper.unwrap(iObjectWrapper));
    }

    @Override // com.google.android.gms.internal.ads.zzcdx
    public final View zzgc(String str) {
        synchronized (this) {
            if (this.zzesz) {
                return null;
            }
            WeakReference<View> weakReference = this.zzdto.get(str);
            if (weakReference == null) {
                return null;
            }
            return weakReference.get();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaev
    public final void zzh(IObjectWrapper iObjectWrapper) {
        synchronized (this) {
            if (this.zzesz) {
                return;
            }
            this.zzgfo = iObjectWrapper;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcdx
    public final JSONObject zztk() {
        synchronized (this) {
            zzcbu zzcbuVar = this.zzgfm;
            if (zzcbuVar != null) {
                return zzcbuVar.zza(this.zzgfj, zzaov(), zzaow());
            }
            return null;
        }
    }
}
