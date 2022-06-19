package com.google.android.gms.internal.ads;

import android.content.Context;
import android.graphics.Point;
import android.os.Bundle;
import android.os.RemoteException;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import android.view.View;
import android.view.WindowManager;
import com.google.android.gms.ads.internal.util.zzcb;
import com.google.android.gms.ads.internal.zzt;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.Clock;
import com.google.android.gms.common.util.PlatformVersion;
import com.google.android.gms.common.util.VisibleForTesting;
import java.lang.ref.WeakReference;
import java.util.Map;
import javax.annotation.ParametersAreNonnullByDefault;
import org.json.JSONException;
import org.json.JSONObject;
@ParametersAreNonnullByDefault
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdpc.class */
public final class zzdpc implements zzdqk {
    private final Context zza;
    private final zzdqn zzb;
    private final JSONObject zzc;
    private final zzduy zzd;
    private final zzdqc zze;
    private final zzalt zzf;
    private final zzdfj zzg;
    private final zzdep zzh;
    private final zzdmb zzi;
    private final zzfdn zzj;
    private final zzcjf zzk;
    private final zzfef zzl;
    private final zzcxf zzm;
    private final zzdre zzn;
    private final Clock zzo;
    private final zzdly zzp;
    private final zzfjs zzq;
    private boolean zzs;
    private zzbif zzz;
    private boolean zzr = false;
    private boolean zzt = false;
    private boolean zzu = false;
    private Point zzv = new Point();
    private Point zzw = new Point();
    private long zzx = 0;
    private long zzy = 0;

    public zzdpc(Context context, zzdqn zzdqnVar, JSONObject jSONObject, zzduy zzduyVar, zzdqc zzdqcVar, zzalt zzaltVar, zzdfj zzdfjVar, zzdep zzdepVar, zzdmb zzdmbVar, zzfdn zzfdnVar, zzcjf zzcjfVar, zzfef zzfefVar, zzcxf zzcxfVar, zzdre zzdreVar, Clock clock, zzdly zzdlyVar, zzfjs zzfjsVar) {
        this.zza = context;
        this.zzb = zzdqnVar;
        this.zzc = jSONObject;
        this.zzd = zzduyVar;
        this.zze = zzdqcVar;
        this.zzf = zzaltVar;
        this.zzg = zzdfjVar;
        this.zzh = zzdepVar;
        this.zzi = zzdmbVar;
        this.zzj = zzfdnVar;
        this.zzk = zzcjfVar;
        this.zzl = zzfefVar;
        this.zzm = zzcxfVar;
        this.zzn = zzdreVar;
        this.zzo = clock;
        this.zzp = zzdlyVar;
        this.zzq = zzfjsVar;
    }

    private final String zzB(View view, Map<String, WeakReference<View>> map) {
        if (map != null && view != null) {
            for (Map.Entry<String, WeakReference<View>> entry : map.entrySet()) {
                if (view.equals(entry.getValue().get())) {
                    return entry.getKey();
                }
            }
        }
        int zzc = this.zze.zzc();
        if (zzc != 1) {
            if (zzc == 2) {
                return "2099";
            }
            if (zzc == 6) {
                return "3099";
            }
            return null;
        }
        return "1099";
    }

    private final boolean zzC(String str) {
        JSONObject optJSONObject = this.zzc.optJSONObject("allow_pub_event_reporting");
        return optJSONObject != null && optJSONObject.optBoolean(str, false);
    }

    private final boolean zzD() {
        return this.zzc.optBoolean("allow_custom_click_gesture", false);
    }

    private final boolean zzE(JSONObject jSONObject, JSONObject jSONObject2, JSONObject jSONObject3, JSONObject jSONObject4, String str, JSONObject jSONObject5, boolean z) {
        Preconditions.checkMainThread("recordImpression must be called on the main UI thread.");
        try {
            JSONObject jSONObject6 = new JSONObject();
            jSONObject6.put("ad", this.zzc);
            jSONObject6.put("asset_view_signal", jSONObject2);
            jSONObject6.put("ad_view_signal", jSONObject);
            jSONObject6.put("scroll_view_signal", jSONObject3);
            jSONObject6.put("lock_screen_signal", jSONObject4);
            jSONObject6.put("provided_signals", jSONObject5);
            if (((Boolean) zzbgq.zzc().zzb(zzblj.zzch)).booleanValue()) {
                jSONObject6.put("view_signals", str);
            }
            jSONObject6.put("policy_validator_enabled", z);
            Context context = this.zza;
            JSONObject jSONObject7 = new JSONObject();
            zzt.zzp();
            DisplayMetrics zzy = com.google.android.gms.ads.internal.util.zzt.zzy((WindowManager) context.getSystemService("window"));
            try {
                jSONObject7.put("width", zzbgo.zzb().zzb(context, zzy.widthPixels));
                jSONObject7.put("height", zzbgo.zzb().zzb(context, zzy.heightPixels));
            } catch (JSONException e) {
                jSONObject7 = null;
            }
            jSONObject6.put("screen", jSONObject7);
            if (((Boolean) zzbgq.zzc().zzb(zzblj.zzgk)).booleanValue()) {
                this.zzd.zzi("/clickRecorded", new zzdoz(this, null));
            } else {
                this.zzd.zzi("/logScionEvent", new zzdox(this, null));
            }
            this.zzd.zzi("/nativeImpression", new zzdpb(this, null));
            zzcjp.zza(this.zzd.zzd("google.afma.nativeAds.handleImpression", jSONObject6), "Error during performing handleImpression");
            if (this.zzr) {
                return true;
            }
            this.zzr = zzt.zzs().zzn(this.zza, this.zzk.zza, this.zzj.zzD.toString(), this.zzl.zzf);
            return true;
        } catch (JSONException e2) {
            zzciz.zzh("Unable to create impression JSON.", e2);
            return false;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdqk
    public final boolean zzA(Bundle bundle) {
        if (!zzC("impression_reporting")) {
            zzciz.zzg("The ad slot cannot handle external impression events. You must be in the allow list to be able to report your impression events.");
            return false;
        }
        return zzE(null, null, null, null, null, zzt.zzp().zzg(bundle, null), false);
    }

    @Override // com.google.android.gms.internal.ads.zzdqk
    public final JSONObject zzd(View view, Map<String, WeakReference<View>> map, Map<String, WeakReference<View>> map2) {
        JSONObject zzd = zzcb.zzd(this.zza, map, map2, view);
        JSONObject zzg = zzcb.zzg(this.zza, view);
        JSONObject zzf = zzcb.zzf(view);
        JSONObject zze = zzcb.zze(this.zza, view);
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("asset_view_signal", zzd);
            jSONObject.put("ad_view_signal", zzg);
            jSONObject.put("scroll_view_signal", zzf);
            jSONObject.put("lock_screen_signal", zze);
            return jSONObject;
        } catch (JSONException e) {
            zzciz.zzh("Unable to create native ad view signals JSON.", e);
            return null;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdqk
    public final JSONObject zze(View view, Map<String, WeakReference<View>> map, Map<String, WeakReference<View>> map2) {
        JSONObject zzd = zzd(view, map, map2);
        JSONObject jSONObject = new JSONObject();
        try {
            if (this.zzu && zzD()) {
                jSONObject.put("custom_click_gesture_eligible", true);
            }
            if (zzd != null) {
                jSONObject.put("nas", zzd);
            }
        } catch (JSONException e) {
            zzciz.zzh("Unable to create native click meta data JSON.", e);
        }
        return jSONObject;
    }

    @Override // com.google.android.gms.internal.ads.zzdqk
    public final void zzf() {
        try {
            zzbif zzbifVar = this.zzz;
            if (zzbifVar == null) {
                return;
            }
            zzbifVar.zze();
        } catch (RemoteException e) {
            zzciz.zzl("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdqk
    public final void zzg() {
        if (!this.zzc.optBoolean("custom_one_point_five_click_enabled", false)) {
            return;
        }
        this.zzn.zzb();
    }

    @Override // com.google.android.gms.internal.ads.zzdqk
    public final void zzh() {
        this.zzd.zzf();
    }

    @Override // com.google.android.gms.internal.ads.zzdqk
    public final void zzi(zzbij zzbijVar) {
        try {
            if (this.zzt) {
                return;
            }
            if (zzbijVar == null && this.zze.zzk() != null) {
                this.zzt = true;
                this.zzq.zzb(this.zze.zzk().zzf());
                zzf();
                return;
            }
            this.zzt = true;
            this.zzq.zzb(zzbijVar.zzf());
            zzf();
        } catch (RemoteException e) {
            zzciz.zzl("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdqk
    public final void zzj(View view, View view2, Map<String, WeakReference<View>> map, Map<String, WeakReference<View>> map2, boolean z) {
        JSONObject zzd = zzcb.zzd(this.zza, map, map2, view2);
        JSONObject zzg = zzcb.zzg(this.zza, view2);
        JSONObject zzf = zzcb.zzf(view2);
        JSONObject zze = zzcb.zze(this.zza, view2);
        String zzB = zzB(view, map);
        JSONObject zzc = zzcb.zzc(zzB, this.zza, this.zzw, this.zzv);
        if (true == ((Boolean) zzbgq.zzc().zzb(zzblj.zzci)).booleanValue()) {
            view = view2;
        }
        zzm(view, zzg, zzd, zzf, zze, zzB, zzc, null, z, false);
    }

    @Override // com.google.android.gms.internal.ads.zzdqk
    public final void zzk(String str) {
        zzm(null, null, null, null, null, str, null, null, false, false);
    }

    @Override // com.google.android.gms.internal.ads.zzdqk
    public final void zzl(Bundle bundle) {
        if (bundle == null) {
            zzciz.zze("Click data is null. No click is reported.");
        } else if (!zzC("click_reporting")) {
            zzciz.zzg("The ad slot cannot handle external click events. You must be part of the allow list to be able to report your click events.");
        } else {
            Bundle bundle2 = bundle.getBundle("click_signal");
            zzm(null, null, null, null, null, bundle2 != null ? bundle2.getString("asset_id") : null, null, zzt.zzp().zzg(bundle, null), false, false);
        }
    }

    @VisibleForTesting
    public final void zzm(View view, JSONObject jSONObject, JSONObject jSONObject2, JSONObject jSONObject3, JSONObject jSONObject4, String str, JSONObject jSONObject5, JSONObject jSONObject6, boolean z, boolean z2) {
        String str2;
        Preconditions.checkMainThread("performClick must be called on the main UI thread.");
        try {
            JSONObject jSONObject7 = new JSONObject();
            jSONObject7.put("ad", this.zzc);
            jSONObject7.put("asset_view_signal", jSONObject2);
            jSONObject7.put("ad_view_signal", jSONObject);
            jSONObject7.put("click_signal", jSONObject5);
            jSONObject7.put("scroll_view_signal", jSONObject3);
            jSONObject7.put("lock_screen_signal", jSONObject4);
            jSONObject7.put("has_custom_click_handler", this.zzb.zzc(this.zze.zzy()) != null);
            jSONObject7.put("provided_signals", jSONObject6);
            JSONObject jSONObject8 = new JSONObject();
            jSONObject8.put("asset_id", str);
            jSONObject8.put("template", this.zze.zzc());
            jSONObject8.put("view_aware_api_used", z);
            zzbnw zzbnwVar = this.zzl.zzi;
            jSONObject8.put("custom_mute_requested", zzbnwVar != null && zzbnwVar.zzg);
            jSONObject8.put("custom_mute_enabled", !this.zze.zzF().isEmpty() && this.zze.zzk() != null);
            if (this.zzn.zza() != null && this.zzc.optBoolean("custom_one_point_five_click_enabled", false)) {
                jSONObject8.put("custom_one_point_five_click_eligible", true);
            }
            jSONObject8.put("timestamp", this.zzo.currentTimeMillis());
            if (this.zzu && zzD()) {
                jSONObject8.put("custom_click_gesture_eligible", true);
            }
            if (z2) {
                jSONObject8.put("is_custom_click_gesture", true);
            }
            boolean z3 = false;
            if (this.zzb.zzc(this.zze.zzy()) != null) {
                z3 = true;
            }
            jSONObject8.put("has_custom_click_handler", z3);
            try {
                JSONObject optJSONObject = this.zzc.optJSONObject("tracking_urls_and_actions");
                JSONObject jSONObject9 = optJSONObject;
                if (optJSONObject == null) {
                    jSONObject9 = new JSONObject();
                }
                str2 = this.zzf.zzc().zze(this.zza, jSONObject9.optString("click_string"), view);
            } catch (Exception e) {
                zzciz.zzh("Exception obtaining click signals", e);
                str2 = null;
            }
            jSONObject8.put("click_signals", str2);
            if (((Boolean) zzbgq.zzc().zzb(zzblj.zzdf)).booleanValue()) {
                jSONObject8.put("open_chrome_custom_tab", true);
            }
            if (((Boolean) zzbgq.zzc().zzb(zzblj.zzgo)).booleanValue() && PlatformVersion.isAtLeastR()) {
                jSONObject8.put("try_fallback_for_deep_link", true);
            }
            if (((Boolean) zzbgq.zzc().zzb(zzblj.zzgp)).booleanValue() && PlatformVersion.isAtLeastR()) {
                jSONObject8.put("in_app_link_handling_for_android_11_enabled", true);
            }
            jSONObject7.put("click", jSONObject8);
            JSONObject jSONObject10 = new JSONObject();
            long currentTimeMillis = this.zzo.currentTimeMillis();
            jSONObject10.put("time_from_last_touch_down", currentTimeMillis - this.zzx);
            jSONObject10.put("time_from_last_touch", currentTimeMillis - this.zzy);
            jSONObject7.put("touch_signal", jSONObject10);
            zzcjp.zza(this.zzd.zzd("google.afma.nativeAds.handleClick", jSONObject7), "Error during performing handleClick");
        } catch (JSONException e2) {
            zzciz.zzh("Unable to create click JSON.", e2);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdqk
    public final void zzn(View view, Map<String, WeakReference<View>> map, Map<String, WeakReference<View>> map2, boolean z) {
        if (!this.zzu) {
            zzciz.zze("Custom click reporting failed. enableCustomClickGesture is not set.");
        } else if (!zzD()) {
            zzciz.zze("Custom click reporting failed. Ad unit id not in the allow list.");
        } else {
            JSONObject zzd = zzcb.zzd(this.zza, map, map2, view);
            JSONObject zzg = zzcb.zzg(this.zza, view);
            JSONObject zzf = zzcb.zzf(view);
            JSONObject zze = zzcb.zze(this.zza, view);
            String zzB = zzB(null, map);
            zzm(view, zzg, zzd, zzf, zze, zzB, zzcb.zzc(zzB, this.zza, this.zzw, this.zzv), null, z, true);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdqk
    public final void zzo() {
        Preconditions.checkMainThread("recordDownloadedImpression must be called on the main UI thread.");
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("ad", this.zzc);
            zzcjp.zza(this.zzd.zzd("google.afma.nativeAds.handleDownloadedImpression", jSONObject), "Error during performing handleDownloadedImpression");
        } catch (JSONException e) {
            zzciz.zzh("", e);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdqk
    public final void zzp(View view, Map<String, WeakReference<View>> map, Map<String, WeakReference<View>> map2) {
        String zzh;
        JSONObject zzd = zzcb.zzd(this.zza, map, map2, view);
        JSONObject zzg = zzcb.zzg(this.zza, view);
        JSONObject zzf = zzcb.zzf(view);
        JSONObject zze = zzcb.zze(this.zza, view);
        if (((Boolean) zzbgq.zzc().zzb(zzblj.zzch)).booleanValue()) {
            try {
                zzh = this.zzf.zzc().zzh(this.zza, view, null);
            } catch (Exception e) {
                zzciz.zzg("Exception getting data.");
            }
            zzE(zzg, zzd, zzf, zze, zzh, null, zzcb.zzh(this.zza, this.zzj));
        }
        zzh = null;
        zzE(zzg, zzd, zzf, zze, zzh, null, zzcb.zzh(this.zza, this.zzj));
    }

    @Override // com.google.android.gms.internal.ads.zzdqk
    public final void zzq() {
        zzE(null, null, null, null, null, null, false);
    }

    @Override // com.google.android.gms.internal.ads.zzdqk
    public final void zzr(View view, MotionEvent motionEvent, View view2) {
        this.zzv = zzcb.zza(motionEvent, view2);
        long currentTimeMillis = this.zzo.currentTimeMillis();
        this.zzy = currentTimeMillis;
        if (motionEvent.getAction() == 0) {
            this.zzx = currentTimeMillis;
            this.zzw = this.zzv;
        }
        MotionEvent obtain = MotionEvent.obtain(motionEvent);
        Point point = this.zzv;
        obtain.setLocation(point.x, point.y);
        this.zzf.zzd(obtain);
        obtain.recycle();
    }

    @Override // com.google.android.gms.internal.ads.zzdqk
    public final void zzs(Bundle bundle) {
        if (bundle == null) {
            zzciz.zze("Touch event data is null. No touch event is reported.");
        } else if (!zzC("touch_reporting")) {
            zzciz.zzg("The ad slot cannot handle external touch events. You must be in the allow list to be able to report your touch events.");
        } else {
            float f = bundle.getFloat("x");
            float f2 = bundle.getFloat("y");
            this.zzf.zzc().zzl((int) f, (int) f2, bundle.getInt("duration_ms"));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdqk
    public final void zzt(View view) {
        if (!this.zzc.optBoolean("custom_one_point_five_click_enabled", false)) {
            zzciz.zzj("setClickConfirmingView: Your account need to be in the allow list to use this feature.\nContact your account manager for more information.");
            return;
        }
        zzdre zzdreVar = this.zzn;
        if (view == null) {
            return;
        }
        view.setOnClickListener(zzdreVar);
        view.setClickable(true);
        zzdreVar.zzc = new WeakReference<>(view);
    }

    @Override // com.google.android.gms.internal.ads.zzdqk
    public final void zzu() {
        this.zzu = true;
    }

    @Override // com.google.android.gms.internal.ads.zzdqk
    public final void zzv(zzbif zzbifVar) {
        this.zzz = zzbifVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdqk
    public final void zzw(zzbqc zzbqcVar) {
        if (!this.zzc.optBoolean("custom_one_point_five_click_enabled", false)) {
            zzciz.zzj("setUnconfirmedClickListener: Your account need to be in the allow list to use this feature.\nContact your account manager for more information.");
        } else {
            this.zzn.zzc(zzbqcVar);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdqk
    public final void zzx(View view, Map<String, WeakReference<View>> map, Map<String, WeakReference<View>> map2, View.OnTouchListener onTouchListener, View.OnClickListener onClickListener) {
        this.zzv = new Point();
        this.zzw = new Point();
        if (!this.zzs) {
            this.zzp.zza(view);
            this.zzs = true;
        }
        view.setOnTouchListener(onTouchListener);
        view.setClickable(true);
        view.setOnClickListener(onClickListener);
        this.zzm.zzi(this);
        boolean zzi = zzcb.zzi(this.zzk.zzc);
        if (map != null) {
            for (Map.Entry<String, WeakReference<View>> entry : map.entrySet()) {
                View view2 = entry.getValue().get();
                if (view2 != null) {
                    if (zzi) {
                        view2.setOnTouchListener(onTouchListener);
                    }
                    view2.setClickable(true);
                    view2.setOnClickListener(onClickListener);
                }
            }
        }
        if (map2 != null) {
            for (Map.Entry<String, WeakReference<View>> entry2 : map2.entrySet()) {
                View view3 = entry2.getValue().get();
                if (view3 != null) {
                    if (zzi) {
                        view3.setOnTouchListener(onTouchListener);
                    }
                    view3.setClickable(false);
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdqk
    public final void zzy(View view, Map<String, WeakReference<View>> map) {
        this.zzv = new Point();
        this.zzw = new Point();
        if (view != null) {
            this.zzp.zzb(view);
        }
        this.zzs = false;
    }

    @Override // com.google.android.gms.internal.ads.zzdqk
    public final boolean zzz() {
        return zzD();
    }
}
