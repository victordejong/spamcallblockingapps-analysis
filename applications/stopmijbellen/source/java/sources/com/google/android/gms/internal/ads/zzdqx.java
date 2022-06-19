package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.BitmapFactory;
import android.graphics.Shader;
import android.graphics.drawable.BitmapDrawable;
import android.text.TextUtils;
import android.util.Base64;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewTreeObserver;
import android.widget.FrameLayout;
import com.google.android.gms.ads.formats.NativeAd;
import com.google.android.gms.ads.internal.util.zzcb;
import com.google.android.gms.ads.internal.zzt;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;
import javax.annotation.concurrent.GuardedBy;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdqx.class */
public final class zzdqx extends zzbol implements ViewTreeObserver.OnGlobalLayoutListener, ViewTreeObserver.OnScrollChangedListener, zzdrw {
    public static final zzfss<String> zza = zzfss.zzr("2011", "1009", "3010");
    private final String zzb;
    private FrameLayout zzd;
    private FrameLayout zze;
    private final zzfxb zzf;
    private View zzg;
    @GuardedBy("this")
    private zzdpx zzi;
    private zzayb zzj;
    private zzbof zzl;
    private boolean zzm;
    @GuardedBy("this")
    private Map<String, WeakReference<View>> zzc = new HashMap();
    private IObjectWrapper zzk = null;
    private boolean zzn = false;
    private final int zzh = 214106000;

    public zzdqx(FrameLayout frameLayout, FrameLayout frameLayout2, int i) {
        this.zzd = frameLayout;
        this.zze = frameLayout2;
        String canonicalName = frameLayout.getClass().getCanonicalName();
        String str = "3012";
        if ("com.google.android.gms.ads.formats.NativeContentAdView".equals(canonicalName)) {
            str = "1007";
        } else if ("com.google.android.gms.ads.formats.NativeAppInstallAdView".equals(canonicalName)) {
            str = "2009";
        } else {
            "com.google.android.gms.ads.formats.UnifiedNativeAdView".equals(canonicalName);
        }
        this.zzb = str;
        zzt.zzx();
        zzcjz.zza(frameLayout, this);
        zzt.zzx();
        zzcjz.zzb(frameLayout, this);
        this.zzf = zzcjm.zze;
        this.zzj = new zzayb(this.zzd.getContext(), this.zzd);
        frameLayout.setOnTouchListener(this);
        frameLayout.setOnClickListener(this);
    }

    private final void zzs(String str) {
        DisplayMetrics displayMetrics;
        synchronized (this) {
            FrameLayout frameLayout = new FrameLayout(this.zze.getContext());
            frameLayout.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
            Context context = this.zze.getContext();
            frameLayout.setClickable(false);
            frameLayout.setFocusable(false);
            if (!TextUtils.isEmpty(str)) {
                Context context2 = context;
                if (context.getApplicationContext() != null) {
                    context2 = context.getApplicationContext();
                }
                Resources resources = context2.getResources();
                if (resources != null && (displayMetrics = resources.getDisplayMetrics()) != null) {
                    try {
                        byte[] decode = Base64.decode(str, 0);
                        BitmapDrawable bitmapDrawable = new BitmapDrawable(BitmapFactory.decodeByteArray(decode, 0, decode.length));
                        bitmapDrawable.setTargetDensity(displayMetrics.densityDpi);
                        Shader.TileMode tileMode = Shader.TileMode.REPEAT;
                        bitmapDrawable.setTileModeXY(tileMode, tileMode);
                        frameLayout.setBackground(bitmapDrawable);
                    } catch (IllegalArgumentException e) {
                        zzciz.zzk("Encountered invalid base64 watermark.", e);
                    }
                }
            }
            this.zze.addView(frameLayout);
        }
    }

    private final void zzt() {
        synchronized (this) {
            this.zzf.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzdqw
                @Override // java.lang.Runnable
                public final void run() {
                    zzdqx.this.zzr();
                }
            });
        }
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        synchronized (this) {
            zzdpx zzdpxVar = this.zzi;
            if (zzdpxVar != null) {
                zzdpxVar.zzk();
                this.zzi.zzx(view, this.zzd, zzl(), zzm(), false);
            }
        }
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public final void onGlobalLayout() {
        synchronized (this) {
            zzdpx zzdpxVar = this.zzi;
            if (zzdpxVar != null) {
                zzdpxVar.zzv(this.zzd, zzl(), zzm(), zzdpx.zzP(this.zzd));
            }
        }
    }

    @Override // android.view.ViewTreeObserver.OnScrollChangedListener
    public final void onScrollChanged() {
        synchronized (this) {
            zzdpx zzdpxVar = this.zzi;
            if (zzdpxVar != null) {
                zzdpxVar.zzv(this.zzd, zzl(), zzm(), zzdpx.zzP(this.zzd));
            }
        }
    }

    @Override // android.view.View.OnTouchListener
    public final boolean onTouch(View view, MotionEvent motionEvent) {
        synchronized (this) {
            zzdpx zzdpxVar = this.zzi;
            if (zzdpxVar != null) {
                zzdpxVar.zzD(view, motionEvent, this.zzd);
            }
        }
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzbom
    public final IObjectWrapper zzb(String str) {
        IObjectWrapper wrap;
        synchronized (this) {
            wrap = ObjectWrapper.wrap(zzg(str));
        }
        return wrap;
    }

    @Override // com.google.android.gms.internal.ads.zzbom
    public final void zzbE(String str, IObjectWrapper iObjectWrapper) {
        synchronized (this) {
            zzq(str, (View) ObjectWrapper.unwrap(iObjectWrapper), true);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbom
    public final void zzbF(IObjectWrapper iObjectWrapper) {
        synchronized (this) {
            this.zzi.zzF((View) ObjectWrapper.unwrap(iObjectWrapper));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbom
    public final void zzbG(zzbof zzbofVar) {
        synchronized (this) {
            if (this.zzn) {
                return;
            }
            this.zzm = true;
            this.zzl = zzbofVar;
            zzdpx zzdpxVar = this.zzi;
            if (zzdpxVar == null) {
                return;
            }
            zzdpxVar.zza().zzb(zzbofVar);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbom
    public final void zzbH(IObjectWrapper iObjectWrapper) {
        synchronized (this) {
            if (this.zzn) {
                return;
            }
            this.zzk = iObjectWrapper;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbom
    public final void zzbI(IObjectWrapper iObjectWrapper) {
        synchronized (this) {
            if (this.zzn) {
                return;
            }
            Object unwrap = ObjectWrapper.unwrap(iObjectWrapper);
            if (!(unwrap instanceof zzdpx)) {
                zzciz.zzj("Not an instance of native engine. This is most likely a transient error");
                return;
            }
            zzdpx zzdpxVar = this.zzi;
            if (zzdpxVar != null) {
                zzdpxVar.zzL(this);
            }
            zzt();
            zzdpx zzdpxVar2 = (zzdpx) unwrap;
            this.zzi = zzdpxVar2;
            zzdpxVar2.zzK(this);
            this.zzi.zzC(this.zzd);
            this.zzi.zzi(this.zze);
            if (this.zzm) {
                this.zzi.zza().zzb(this.zzl);
            }
            if (!((Boolean) zzbgq.zzc().zzb(zzblj.zzcy)).booleanValue() || TextUtils.isEmpty(this.zzi.zzd())) {
                return;
            }
            zzs(this.zzi.zzd());
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbom
    public final void zzc() {
        synchronized (this) {
            if (this.zzn) {
                return;
            }
            zzdpx zzdpxVar = this.zzi;
            if (zzdpxVar != null) {
                zzdpxVar.zzL(this);
                this.zzi = null;
            }
            this.zzc.clear();
            this.zzd.removeAllViews();
            this.zze.removeAllViews();
            this.zzc = null;
            this.zzd = null;
            this.zze = null;
            this.zzg = null;
            this.zzj = null;
            this.zzn = true;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbom
    public final void zzd(IObjectWrapper iObjectWrapper) {
        onTouch(this.zzd, (MotionEvent) ObjectWrapper.unwrap(iObjectWrapper));
    }

    @Override // com.google.android.gms.internal.ads.zzbom
    public final void zze(IObjectWrapper iObjectWrapper, int i) {
        synchronized (this) {
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdrw
    public final /* synthetic */ View zzf() {
        return this.zzd;
    }

    @Override // com.google.android.gms.internal.ads.zzdrw
    public final View zzg(String str) {
        synchronized (this) {
            if (this.zzn) {
                return null;
            }
            WeakReference<View> weakReference = this.zzc.get(str);
            if (weakReference == null) {
                return null;
            }
            return weakReference.get();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdrw
    public final FrameLayout zzh() {
        return this.zze;
    }

    @Override // com.google.android.gms.internal.ads.zzdrw
    public final zzayb zzi() {
        return this.zzj;
    }

    @Override // com.google.android.gms.internal.ads.zzdrw
    public final IObjectWrapper zzj() {
        return this.zzk;
    }

    @Override // com.google.android.gms.internal.ads.zzdrw
    public final String zzk() {
        String str;
        synchronized (this) {
            str = this.zzb;
        }
        return str;
    }

    @Override // com.google.android.gms.internal.ads.zzdrw
    public final Map<String, WeakReference<View>> zzl() {
        Map<String, WeakReference<View>> map;
        synchronized (this) {
            map = this.zzc;
        }
        return map;
    }

    @Override // com.google.android.gms.internal.ads.zzdrw
    public final Map<String, WeakReference<View>> zzm() {
        Map<String, WeakReference<View>> map;
        synchronized (this) {
            map = this.zzc;
        }
        return map;
    }

    @Override // com.google.android.gms.internal.ads.zzdrw
    public final Map<String, WeakReference<View>> zzn() {
        synchronized (this) {
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzdrw
    public final JSONObject zzo() {
        synchronized (this) {
            zzdpx zzdpxVar = this.zzi;
            if (zzdpxVar != null) {
                return zzdpxVar.zzf(this.zzd, zzl(), zzm());
            }
            return null;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdrw
    public final JSONObject zzp() {
        synchronized (this) {
            zzdpx zzdpxVar = this.zzi;
            if (zzdpxVar != null) {
                return zzdpxVar.zzg(this.zzd, zzl(), zzm());
            }
            return null;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdrw
    public final void zzq(String str, View view, boolean z) {
        synchronized (this) {
            if (this.zzn) {
                return;
            }
            if (view == null) {
                this.zzc.remove(str);
                return;
            }
            this.zzc.put(str, new WeakReference<>(view));
            if (!NativeAd.ASSET_ADCHOICES_CONTAINER_VIEW.equals(str) && !"3011".equals(str)) {
                if (zzcb.zzi(this.zzh)) {
                    view.setOnTouchListener(this);
                }
                view.setClickable(true);
                view.setOnClickListener(this);
            }
        }
    }

    public final /* synthetic */ void zzr() {
        if (this.zzg == null) {
            View view = new View(this.zzd.getContext());
            this.zzg = view;
            view.setLayoutParams(new FrameLayout.LayoutParams(-1, 0));
        }
        if (this.zzd != this.zzg.getParent()) {
            this.zzd.addView(this.zzg);
        }
    }
}
