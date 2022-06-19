package com.google.android.gms.internal.ads;

import android.content.Context;
import android.graphics.Rect;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewTreeObserver;
import android.view.WindowManager;
import com.google.android.gms.ads.internal.util.zzca;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdoe.class */
public final class zzdoe {
    private final zzdss zza;
    private final zzdrh zzb;
    private ViewTreeObserver.OnScrollChangedListener zzc = null;

    public zzdoe(zzdss zzdssVar, zzdrh zzdrhVar) {
        this.zza = zzdssVar;
        this.zzb = zzdrhVar;
    }

    private static final int zzf(Context context, String str, int i) {
        try {
            i = Integer.parseInt(str);
        } catch (NumberFormatException e) {
        }
        zzber.zza();
        return zzcgm.zzs(context, i);
    }

    public final View zza(View view, WindowManager windowManager) throws zzcmw {
        zzcml zzb = this.zza.zzb(zzbdl.zzb(), null, null);
        View view2 = (View) zzb;
        view2.setVisibility(4);
        view2.setContentDescription("policy_validator");
        zzb.zzab("/sendMessageToSdk", new zzbpr(this) { // from class: com.google.android.gms.internal.ads.zzdny
            private final zzdoe zza;

            {
                this.zza = this;
            }

            @Override // com.google.android.gms.internal.ads.zzbpr
            public final void zza(Object obj, Map map) {
                this.zza.zze((zzcml) obj, map);
            }
        });
        zzb.zzab("/hideValidatorOverlay", new zzbpr(this, windowManager, view) { // from class: com.google.android.gms.internal.ads.zzdnz
            private final zzdoe zza;
            private final WindowManager zzb;
            private final View zzc;

            {
                this.zza = this;
                this.zzb = windowManager;
                this.zzc = view;
            }

            @Override // com.google.android.gms.internal.ads.zzbpr
            public final void zza(Object obj, Map map) {
                this.zza.zzd(this.zzb, this.zzc, (zzcml) obj, map);
            }
        });
        zzb.zzab("/open", new zzbqc(null, null, null, null, null));
        this.zzb.zzi(new WeakReference(zzb), "/loadNativeAdPolicyViolations", new zzbpr(this, view, windowManager) { // from class: com.google.android.gms.internal.ads.zzdoa
            private final zzdoe zza;
            private final View zzb;
            private final WindowManager zzc;

            {
                this.zza = this;
                this.zzb = view;
                this.zzc = windowManager;
            }

            @Override // com.google.android.gms.internal.ads.zzbpr
            public final void zza(Object obj, Map map) {
                this.zza.zzb(this.zzb, this.zzc, (zzcml) obj, map);
            }
        });
        this.zzb.zzi(new WeakReference(zzb), "/showValidatorOverlay", zzdob.zza);
        return (View) zzb;
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:25:0x01aa -> B:7:0x00f0). Please submit an issue!!! */
    public final /* synthetic */ void zzb(View view, WindowManager windowManager, zzcml zzcmlVar, Map map) {
        zzcmlVar.zzR().zzy(new zzcnx(this, map) { // from class: com.google.android.gms.internal.ads.zzdod
            private final zzdoe zza;
            private final Map zzb;

            {
                this.zza = this;
                this.zzb = map;
            }

            @Override // com.google.android.gms.internal.ads.zzcnx
            public final void zza(boolean z) {
                this.zza.zzc(this.zzb, z);
            }
        });
        if (map == null) {
            return;
        }
        Context context = view.getContext();
        int zzf = zzf(context, (String) map.get("validator_width"), ((Integer) zzbet.zzc().zzc(zzbjl.zzfK)).intValue());
        int zzf2 = zzf(context, (String) map.get("validator_height"), ((Integer) zzbet.zzc().zzc(zzbjl.zzfL)).intValue());
        int zzf3 = zzf(context, (String) map.get("validator_x"), 0);
        int zzf4 = zzf(context, (String) map.get("validator_y"), 0);
        zzcmlVar.zzaf(zzcob.zzc(zzf, zzf2));
        try {
            zzcmlVar.zzG().getSettings().setUseWideViewPort(((Boolean) zzbet.zzc().zzc(zzbjl.zzfM)).booleanValue());
            zzcmlVar.zzG().getSettings().setLoadWithOverviewMode(((Boolean) zzbet.zzc().zzc(zzbjl.zzfN)).booleanValue());
        } catch (NullPointerException e) {
        }
        WindowManager.LayoutParams zzj = zzca.zzj();
        zzj.x = zzf3;
        zzj.y = zzf4;
        windowManager.updateViewLayout(zzcmlVar.zzH(), zzj);
        String str = (String) map.get("orientation");
        Rect rect = new Rect();
        if (view.getGlobalVisibleRect(rect)) {
            this.zzc = new ViewTreeObserver.OnScrollChangedListener(view, zzcmlVar, str, zzj, (("1".equals(str) || "2".equals(str)) ? rect.bottom : rect.top) - zzf4, windowManager) { // from class: com.google.android.gms.internal.ads.zzdoc
                private final View zza;
                private final zzcml zzb;
                private final String zzc;
                private final WindowManager.LayoutParams zzd;
                private final int zze;
                private final WindowManager zzf;

                {
                    this.zza = view;
                    this.zzb = zzcmlVar;
                    this.zzc = str;
                    this.zzd = zzj;
                    this.zze = i;
                    this.zzf = windowManager;
                }

                @Override // android.view.ViewTreeObserver.OnScrollChangedListener
                public final void onScrollChanged() {
                    View view2 = this.zza;
                    zzcml zzcmlVar2 = this.zzb;
                    String str2 = this.zzc;
                    WindowManager.LayoutParams layoutParams = this.zzd;
                    int i2 = this.zze;
                    WindowManager windowManager2 = this.zzf;
                    Rect rect2 = new Rect();
                    if (!view2.getGlobalVisibleRect(rect2) || zzcmlVar2.zzH().getWindowToken() == null) {
                        return;
                    }
                    if ("1".equals(str2) || "2".equals(str2)) {
                        layoutParams.y = rect2.bottom - i2;
                    } else {
                        layoutParams.y = rect2.top - i2;
                    }
                    windowManager2.updateViewLayout(zzcmlVar2.zzH(), layoutParams);
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
        zzcmlVar.loadUrl(str2);
    }

    public final /* synthetic */ void zzc(Map map, boolean z) {
        HashMap m8667T = C22128a.m8667T("messageType", "validatorHtmlLoaded");
        m8667T.put("id", (String) map.get("id"));
        this.zzb.zzg("sendMessageToNativeJs", m8667T);
    }

    public final /* synthetic */ void zzd(WindowManager windowManager, View view, zzcml zzcmlVar, Map map) {
        zzcgt.zzd("Hide native ad policy validator overlay.");
        zzcmlVar.zzH().setVisibility(8);
        if (zzcmlVar.zzH().getWindowToken() != null) {
            windowManager.removeView(zzcmlVar.zzH());
        }
        zzcmlVar.destroy();
        ViewTreeObserver viewTreeObserver = view.getViewTreeObserver();
        if (this.zzc == null || viewTreeObserver == null || !viewTreeObserver.isAlive()) {
            return;
        }
        viewTreeObserver.removeOnScrollChangedListener(this.zzc);
    }

    public final /* synthetic */ void zze(zzcml zzcmlVar, Map map) {
        this.zzb.zzg("sendMessageToNativeJs", map);
    }
}
