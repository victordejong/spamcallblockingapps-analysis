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
import com.google.android.gms.ads.internal.util.zzca;
import com.google.android.gms.ads.internal.zzt;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdnh.class */
public final class zzdnh extends zzbmk implements ViewTreeObserver.OnGlobalLayoutListener, ViewTreeObserver.OnScrollChangedListener, zzdog {
    public static final zzfoj<String> zza = zzfoj.zzl("2011", "1009", "3010");
    private final String zzb;
    private FrameLayout zzd;
    private FrameLayout zze;
    private final zzfsn zzf;
    private View zzg;
    private zzdmh zzi;
    private zzawe zzj;
    private zzbme zzl;
    private boolean zzm;
    private Map<String, WeakReference<View>> zzc = new HashMap();
    private IObjectWrapper zzk = null;
    private boolean zzn = false;
    private final int zzh = 213806000;

    public zzdnh(FrameLayout frameLayout, FrameLayout frameLayout2, int i) {
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
        zzt.zzz();
        zzcht.zza(frameLayout, this);
        zzt.zzz();
        zzcht.zzb(frameLayout, this);
        this.zzf = zzchg.zze;
        this.zzj = new zzawe(this.zzd.getContext(), this.zzd);
        frameLayout.setOnTouchListener(this);
        frameLayout.setOnClickListener(this);
    }

    private final void zzs() {
        synchronized (this) {
            this.zzf.execute(new Runnable(this) { // from class: com.google.android.gms.internal.ads.zzdng
                private final zzdnh zza;

                {
                    this.zza = this;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.zza.zzr();
                }
            });
        }
    }

    private final void zzt(String str) {
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
                        zzcgt.zzj("Encountered invalid base64 watermark.", e);
                    }
                }
            }
            this.zze.addView(frameLayout);
        }
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        synchronized (this) {
            zzdmh zzdmhVar = this.zzi;
            if (zzdmhVar != null) {
                zzdmhVar.zzw();
                this.zzi.zzp(view, this.zzd, zzj(), zzk(), false);
            }
        }
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public final void onGlobalLayout() {
        synchronized (this) {
            zzdmh zzdmhVar = this.zzi;
            if (zzdmhVar != null) {
                zzdmhVar.zzr(this.zzd, zzj(), zzk(), zzdmh.zzC(this.zzd));
            }
        }
    }

    @Override // android.view.ViewTreeObserver.OnScrollChangedListener
    public final void onScrollChanged() {
        synchronized (this) {
            zzdmh zzdmhVar = this.zzi;
            if (zzdmhVar != null) {
                zzdmhVar.zzr(this.zzd, zzj(), zzk(), zzdmh.zzC(this.zzd));
            }
        }
    }

    @Override // android.view.View.OnTouchListener
    public final boolean onTouch(View view, MotionEvent motionEvent) {
        synchronized (this) {
            zzdmh zzdmhVar = this.zzi;
            if (zzdmhVar != null) {
                zzdmhVar.zzq(view, motionEvent, this.zzd);
            }
        }
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzbml
    public final void zzb(String str, IObjectWrapper iObjectWrapper) {
        synchronized (this) {
            zzi(str, (View) ObjectWrapper.m38746B1(iObjectWrapper), true);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdog
    public final FrameLayout zzbt() {
        return this.zze;
    }

    @Override // com.google.android.gms.internal.ads.zzbml
    public final void zzbu(IObjectWrapper iObjectWrapper) {
        synchronized (this) {
            if (this.zzn) {
                return;
            }
            this.zzk = iObjectWrapper;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbml
    public final void zzbv(IObjectWrapper iObjectWrapper) {
        onTouch(this.zzd, (MotionEvent) ObjectWrapper.m38746B1(iObjectWrapper));
    }

    @Override // com.google.android.gms.internal.ads.zzbml
    public final void zzbw(zzbme zzbmeVar) {
        synchronized (this) {
            if (this.zzn) {
                return;
            }
            this.zzm = true;
            this.zzl = zzbmeVar;
            zzdmh zzdmhVar = this.zzi;
            if (zzdmhVar == null) {
                return;
            }
            zzdmhVar.zzJ().zzb(zzbmeVar);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdog
    public final /* bridge */ /* synthetic */ View zzbx() {
        return this.zzd;
    }

    @Override // com.google.android.gms.internal.ads.zzbml
    public final IObjectWrapper zzc(String str) {
        ObjectWrapper objectWrapper;
        synchronized (this) {
            objectWrapper = new ObjectWrapper(zzm(str));
        }
        return objectWrapper;
    }

    @Override // com.google.android.gms.internal.ads.zzbml
    public final void zzd(IObjectWrapper iObjectWrapper) {
        synchronized (this) {
            if (this.zzn) {
                return;
            }
            Object m38746B1 = ObjectWrapper.m38746B1(iObjectWrapper);
            if (!(m38746B1 instanceof zzdmh)) {
                zzcgt.zzi("Not an instance of native engine. This is most likely a transient error");
                return;
            }
            zzdmh zzdmhVar = this.zzi;
            if (zzdmhVar != null) {
                zzdmhVar.zzk(this);
            }
            zzs();
            zzdmh zzdmhVar2 = (zzdmh) m38746B1;
            this.zzi = zzdmhVar2;
            zzdmhVar2.zzj(this);
            this.zzi.zzH(this.zzd);
            this.zzi.zzI(this.zze);
            if (this.zzm) {
                this.zzi.zzJ().zzb(this.zzl);
            }
            if (!((Boolean) zzbet.zzc().zzc(zzbjl.zzcr)).booleanValue() || TextUtils.isEmpty(this.zzi.zzE())) {
                return;
            }
            zzt(this.zzi.zzE());
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbml
    public final void zze() {
        synchronized (this) {
            if (this.zzn) {
                return;
            }
            zzdmh zzdmhVar = this.zzi;
            if (zzdmhVar != null) {
                zzdmhVar.zzk(this);
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

    @Override // com.google.android.gms.internal.ads.zzbml
    public final void zzf(IObjectWrapper iObjectWrapper, int i) {
        synchronized (this) {
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbml
    public final void zzg(IObjectWrapper iObjectWrapper) {
        synchronized (this) {
            this.zzi.zzu((View) ObjectWrapper.m38746B1(iObjectWrapper));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdog
    public final zzawe zzh() {
        return this.zzj;
    }

    @Override // com.google.android.gms.internal.ads.zzdog
    public final void zzi(String str, View view, boolean z) {
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
                if (zzca.zza(this.zzh)) {
                    view.setOnTouchListener(this);
                }
                view.setClickable(true);
                view.setOnClickListener(this);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdog
    public final Map<String, WeakReference<View>> zzj() {
        Map<String, WeakReference<View>> map;
        synchronized (this) {
            map = this.zzc;
        }
        return map;
    }

    @Override // com.google.android.gms.internal.ads.zzdog
    public final Map<String, WeakReference<View>> zzk() {
        Map<String, WeakReference<View>> map;
        synchronized (this) {
            map = this.zzc;
        }
        return map;
    }

    @Override // com.google.android.gms.internal.ads.zzdog
    public final Map<String, WeakReference<View>> zzl() {
        synchronized (this) {
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzdog
    public final View zzm(String str) {
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

    @Override // com.google.android.gms.internal.ads.zzdog
    public final String zzn() {
        String str;
        synchronized (this) {
            str = this.zzb;
        }
        return str;
    }

    @Override // com.google.android.gms.internal.ads.zzdog
    public final IObjectWrapper zzo() {
        return this.zzk;
    }

    @Override // com.google.android.gms.internal.ads.zzdog
    public final JSONObject zzp() {
        synchronized (this) {
            zzdmh zzdmhVar = this.zzi;
            if (zzdmhVar != null) {
                return zzdmhVar.zzs(this.zzd, zzj(), zzk());
            }
            return null;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdog
    public final JSONObject zzq() {
        synchronized (this) {
            zzdmh zzdmhVar = this.zzi;
            if (zzdmhVar != null) {
                return zzdmhVar.zzt(this.zzd, zzj(), zzk());
            }
            return null;
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
