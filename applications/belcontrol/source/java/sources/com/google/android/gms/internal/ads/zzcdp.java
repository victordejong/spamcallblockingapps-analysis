package com.google.android.gms.internal.ads;

import android.content.Context;
import android.graphics.Rect;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewTreeObserver;
import android.view.WindowManager;
import com.google.android.gms.ads.internal.util.zzbn;
import com.google.android.gms.ads.internal.zza;
import com.millennialmedia.internal.PlayList;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcdp.class */
public final class zzcdp {
    private final zzcgk zzgge;
    private final zzchq zzggk;
    private ViewTreeObserver.OnScrollChangedListener zzggn = null;

    public zzcdp(zzchq zzchqVar, zzcgk zzcgkVar) {
        this.zzggk = zzchqVar;
        this.zzgge = zzcgkVar;
    }

    private static int zza(Context context, String str, int i) {
        try {
            i = Integer.parseInt(str);
        } catch (NumberFormatException e) {
        }
        zzwr.zzqn();
        return zzaza.zze(context, i);
    }

    public final View zza(View view, WindowManager windowManager) {
        zzbeb zza = this.zzggk.zza(zzvs.zzqe(), null, null);
        zza.getView().setVisibility(4);
        zza.getView().setContentDescription("policy_validator");
        zza.zza("/sendMessageToSdk", new zzcds(this));
        zza.zza("/hideValidatorOverlay", new zzcdr(this, windowManager, view));
        zza.zza("/open", new zzaij((zza) null, (zzaqg) null, (zzcqr) null, (zzckn) null, (zzdrz) null));
        this.zzgge.zza(new WeakReference(zza), "/loadNativeAdPolicyViolations", (zzaif) new zzcdu(this, view, windowManager));
        this.zzgge.zza(new WeakReference(zza), "/showValidatorOverlay", zzcdt.zzdhv);
        return zza.getView();
    }

    public final /* synthetic */ void zza(View view, WindowManager windowManager, zzbeb zzbebVar, Map map) {
        zzbebVar.zzacx().zza(new zzcdv(this, map));
        if (map == null) {
            return;
        }
        Context context = view.getContext();
        int zza = zza(context, (String) map.get("validator_width"), ((Integer) zzwr.zzqr().zzd(zzabp.zzczo)).intValue());
        int zza2 = zza(context, (String) map.get("validator_height"), ((Integer) zzwr.zzqr().zzd(zzabp.zzczp)).intValue());
        int zza3 = zza(context, (String) map.get("validator_x"), 0);
        int zza4 = zza(context, (String) map.get("validator_y"), 0);
        zzbebVar.zza(zzbft.zzq(zza, zza2));
        try {
            zzbebVar.getWebView().getSettings().setUseWideViewPort(((Boolean) zzwr.zzqr().zzd(zzabp.zzczq)).booleanValue());
            zzbebVar.getWebView().getSettings().setLoadWithOverviewMode(((Boolean) zzwr.zzqr().zzd(zzabp.zzczr)).booleanValue());
        } catch (NullPointerException e) {
        }
        WindowManager.LayoutParams zzzq = zzbn.zzzq();
        zzzq.x = zza3;
        zzzq.y = zza4;
        windowManager.updateViewLayout(zzbebVar.getView(), zzzq);
        String str = (String) map.get("orientation");
        Rect rect = new Rect();
        if (view.getGlobalVisibleRect(rect)) {
            this.zzggn = new ViewTreeObserver.OnScrollChangedListener(view, zzbebVar, str, zzzq, (("1".equals(str) || PlayList.VERSION.equals(str)) ? rect.bottom : rect.top) - zza4, windowManager) { // from class: com.google.android.gms.internal.ads.zzcdw
                private final String zzdlo;
                private final View zzggv;
                private final zzbeb zzggw;
                private final WindowManager.LayoutParams zzggx;
                private final int zzggy;
                private final WindowManager zzggz;

                {
                    this.zzggv = view;
                    this.zzggw = zzbebVar;
                    this.zzdlo = str;
                    this.zzggx = zzzq;
                    this.zzggy = i;
                    this.zzggz = windowManager;
                }

                @Override // android.view.ViewTreeObserver.OnScrollChangedListener
                public final void onScrollChanged() {
                    View view2 = this.zzggv;
                    zzbeb zzbebVar2 = this.zzggw;
                    String str2 = this.zzdlo;
                    WindowManager.LayoutParams layoutParams = this.zzggx;
                    int i2 = this.zzggy;
                    WindowManager windowManager2 = this.zzggz;
                    Rect rect2 = new Rect();
                    if (!view2.getGlobalVisibleRect(rect2) || zzbebVar2.getView().getWindowToken() == null) {
                        return;
                    }
                    layoutParams.y = (("1".equals(str2) || PlayList.VERSION.equals(str2)) ? rect2.bottom : rect2.top) - i2;
                    windowManager2.updateViewLayout(zzbebVar2.getView(), layoutParams);
                }
            };
            ViewTreeObserver viewTreeObserver = view.getViewTreeObserver();
            if (viewTreeObserver != null && viewTreeObserver.isAlive()) {
                viewTreeObserver.addOnScrollChangedListener(this.zzggn);
            }
        }
        String str2 = (String) map.get("overlay_url");
        if (TextUtils.isEmpty(str2)) {
            return;
        }
        zzbebVar.loadUrl(str2);
    }

    public final /* synthetic */ void zza(WindowManager windowManager, View view, zzbeb zzbebVar, Map map) {
        zzazk.zzdy("Hide native ad policy validator overlay.");
        zzbebVar.getView().setVisibility(8);
        if (zzbebVar.getView().getWindowToken() != null) {
            windowManager.removeView(zzbebVar.getView());
        }
        zzbebVar.destroy();
        ViewTreeObserver viewTreeObserver = view.getViewTreeObserver();
        if (this.zzggn == null || viewTreeObserver == null || !viewTreeObserver.isAlive()) {
            return;
        }
        viewTreeObserver.removeOnScrollChangedListener(this.zzggn);
    }

    public final /* synthetic */ void zzb(Map map, boolean z) {
        HashMap hashMap = new HashMap();
        hashMap.put("messageType", "validatorHtmlLoaded");
        hashMap.put("id", (String) map.get("id"));
        this.zzgge.zza("sendMessageToNativeJs", hashMap);
    }

    public final /* synthetic */ void zze(zzbeb zzbebVar, Map map) {
        this.zzgge.zza("sendMessageToNativeJs", map);
    }
}
