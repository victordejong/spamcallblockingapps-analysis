package com.google.android.gms.internal.ads;

import android.content.Context;
import android.graphics.Rect;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewTreeObserver;
import android.view.WindowManager;
import com.google.ads.mediation.facebook.FacebookAdapter;
import com.google.android.gms.ads.internal.util.zzcb;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdru.class */
public final class zzdru {
    private final zzdwj zza;
    private final zzduy zzb;
    private ViewTreeObserver.OnScrollChangedListener zzc = null;

    public zzdru(zzdwj zzdwjVar, zzduy zzduyVar) {
        this.zza = zzdwjVar;
        this.zzb = zzduyVar;
    }

    private static final int zzf(Context context, String str, int i) {
        try {
            i = Integer.parseInt(str);
        } catch (NumberFormatException e) {
        }
        zzbgo.zzb();
        return zzcis.zzs(context, i);
    }

    public final View zza(final View view, final WindowManager windowManager) throws zzcpa {
        zzcop zza = this.zza.zza(zzbfi.zzc(), null, null);
        View view2 = (View) zza;
        view2.setVisibility(4);
        view2.setContentDescription("policy_validator");
        zza.zzaf("/sendMessageToSdk", new zzbrt() { // from class: com.google.android.gms.internal.ads.zzdrp
            @Override // com.google.android.gms.internal.ads.zzbrt
            public final void zza(Object obj, Map map) {
                zzdru.this.zzb((zzcop) obj, map);
            }
        });
        zza.zzaf("/hideValidatorOverlay", new zzbrt() { // from class: com.google.android.gms.internal.ads.zzdrr
            @Override // com.google.android.gms.internal.ads.zzbrt
            public final void zza(Object obj, Map map) {
                zzdru.this.zzc(windowManager, view, (zzcop) obj, map);
            }
        });
        zza.zzaf("/open", new zzbse(null, null, null, null, null));
        this.zzb.zzj(new WeakReference(zza), "/loadNativeAdPolicyViolations", new zzbrt() { // from class: com.google.android.gms.internal.ads.zzdrq
            @Override // com.google.android.gms.internal.ads.zzbrt
            public final void zza(Object obj, Map map) {
                zzdru.this.zze(view, windowManager, (zzcop) obj, map);
            }
        });
        this.zzb.zzj(new WeakReference(zza), "/showValidatorOverlay", zzdrs.zza);
        return (View) zza;
    }

    public final /* synthetic */ void zzb(zzcop zzcopVar, Map map) {
        this.zzb.zzg("sendMessageToNativeJs", map);
    }

    public final /* synthetic */ void zzc(WindowManager windowManager, View view, zzcop zzcopVar, Map map) {
        zzciz.zze("Hide native ad policy validator overlay.");
        zzcopVar.zzH().setVisibility(8);
        if (zzcopVar.zzH().getWindowToken() != null) {
            windowManager.removeView(zzcopVar.zzH());
        }
        zzcopVar.destroy();
        ViewTreeObserver viewTreeObserver = view.getViewTreeObserver();
        if (this.zzc == null || viewTreeObserver == null || !viewTreeObserver.isAlive()) {
            return;
        }
        viewTreeObserver.removeOnScrollChangedListener(this.zzc);
    }

    public final /* synthetic */ void zzd(Map map, boolean z) {
        HashMap hashMap = new HashMap();
        hashMap.put("messageType", "validatorHtmlLoaded");
        hashMap.put(FacebookAdapter.KEY_ID, (String) map.get(FacebookAdapter.KEY_ID));
        this.zzb.zzg("sendMessageToNativeJs", hashMap);
    }

    public final /* synthetic */ void zze(final View view, final WindowManager windowManager, final zzcop zzcopVar, final Map map) {
        zzcopVar.zzP().zzz(new zzcqa() { // from class: com.google.android.gms.internal.ads.zzdrt
            @Override // com.google.android.gms.internal.ads.zzcqa
            public final void zza(boolean z) {
                zzdru.this.zzd(map, z);
            }
        });
        if (map == null) {
            return;
        }
        Context context = view.getContext();
        int zzf = zzf(context, (String) map.get("validator_width"), ((Integer) zzbgq.zzc().zzb(zzblj.zzfR)).intValue());
        int zzf2 = zzf(context, (String) map.get("validator_height"), ((Integer) zzbgq.zzc().zzb(zzblj.zzfS)).intValue());
        int zzf3 = zzf(context, (String) map.get("validator_x"), 0);
        int zzf4 = zzf(context, (String) map.get("validator_y"), 0);
        zzcopVar.zzai(zzcqe.zzb(zzf, zzf2));
        try {
            zzcopVar.zzI().getSettings().setUseWideViewPort(((Boolean) zzbgq.zzc().zzb(zzblj.zzfT)).booleanValue());
            zzcopVar.zzI().getSettings().setLoadWithOverviewMode(((Boolean) zzbgq.zzc().zzb(zzblj.zzfU)).booleanValue());
        } catch (NullPointerException e) {
        }
        final WindowManager.LayoutParams zzb = zzcb.zzb();
        zzb.x = zzf3;
        zzb.y = zzf4;
        windowManager.updateViewLayout(zzcopVar.zzH(), zzb);
        final String str = (String) map.get("orientation");
        Rect rect = new Rect();
        if (view.getGlobalVisibleRect(rect)) {
            final int i = (("1".equals(str) || "2".equals(str)) ? rect.bottom : rect.top) - zzf4;
            this.zzc = new ViewTreeObserver.OnScrollChangedListener() { // from class: com.google.android.gms.internal.ads.zzdro
                @Override // android.view.ViewTreeObserver.OnScrollChangedListener
                public final void onScrollChanged() {
                    View view2 = view;
                    zzcop zzcopVar2 = zzcopVar;
                    String str2 = str;
                    WindowManager.LayoutParams layoutParams = zzb;
                    int i2 = i;
                    WindowManager windowManager2 = windowManager;
                    Rect rect2 = new Rect();
                    if (!view2.getGlobalVisibleRect(rect2) || zzcopVar2.zzH().getWindowToken() == null) {
                        return;
                    }
                    if ("1".equals(str2) || "2".equals(str2)) {
                        layoutParams.y = rect2.bottom - i2;
                    } else {
                        layoutParams.y = rect2.top - i2;
                    }
                    windowManager2.updateViewLayout(zzcopVar2.zzH(), layoutParams);
                }
            };
            ViewTreeObserver viewTreeObserver = view.getViewTreeObserver();
            if (viewTreeObserver != null && viewTreeObserver.isAlive()) {
                viewTreeObserver.addOnScrollChangedListener(this.zzc);
            }
        }
        String str2 = (String) map.get("overlay_url");
        if (TextUtils.isEmpty(str2)) {
            return;
        }
        zzcopVar.loadUrl(str2);
    }
}
