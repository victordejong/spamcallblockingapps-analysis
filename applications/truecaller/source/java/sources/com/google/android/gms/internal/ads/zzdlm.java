package com.google.android.gms.internal.ads;

import android.content.Context;
import android.graphics.Point;
import android.os.Bundle;
import android.os.RemoteException;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import android.view.View;
import android.view.WindowManager;
import com.google.android.gms.ads.internal.util.zzca;
import com.google.android.gms.ads.internal.util.zzs;
import com.google.android.gms.ads.internal.zzt;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.Clock;
import com.google.android.gms.common.util.PlatformVersion;
import com.google.android.gms.common.util.VisibleForTesting;
import com.mopub.common.Constants;
import com.razorpay.AnalyticsConstants;
import java.lang.ref.WeakReference;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdlm.class */
public final class zzdlm implements zzdmu {
    private final Context zza;
    private final zzdmx zzb;
    private final JSONObject zzc;
    private final zzdrh zzd;
    private final zzdmm zze;
    private final zzaas zzf;
    private final zzdbu zzg;
    private final zzdba zzh;
    private final zzdim zzi;
    private final zzezz zzj;
    private final zzcgz zzk;
    private final zzfar zzl;
    private final zzctq zzm;
    private final zzdno zzn;
    private final Clock zzo;
    private final zzdij zzp;
    private final zzffu zzq;
    private boolean zzs;
    private zzbgi zzz;
    private boolean zzr = false;
    private boolean zzt = false;
    private boolean zzu = false;
    private Point zzv = new Point();
    private Point zzw = new Point();
    private long zzx = 0;
    private long zzy = 0;

    public zzdlm(Context context, zzdmx zzdmxVar, JSONObject jSONObject, zzdrh zzdrhVar, zzdmm zzdmmVar, zzaas zzaasVar, zzdbu zzdbuVar, zzdba zzdbaVar, zzdim zzdimVar, zzezz zzezzVar, zzcgz zzcgzVar, zzfar zzfarVar, zzctq zzctqVar, zzdno zzdnoVar, Clock clock, zzdij zzdijVar, zzffu zzffuVar) {
        this.zza = context;
        this.zzb = zzdmxVar;
        this.zzc = jSONObject;
        this.zzd = zzdrhVar;
        this.zze = zzdmmVar;
        this.zzf = zzaasVar;
        this.zzg = zzdbuVar;
        this.zzh = zzdbaVar;
        this.zzi = zzdimVar;
        this.zzj = zzezzVar;
        this.zzk = zzcgzVar;
        this.zzl = zzfarVar;
        this.zzm = zzctqVar;
        this.zzn = zzdnoVar;
        this.zzo = clock;
        this.zzp = zzdijVar;
        this.zzq = zzffuVar;
    }

    private final boolean zzB(String str) {
        JSONObject optJSONObject = this.zzc.optJSONObject("allow_pub_event_reporting");
        return optJSONObject != null && optJSONObject.optBoolean(str, false);
    }

    private final String zzC(View view, Map<String, WeakReference<View>> map) {
        if (map != null && view != null) {
            for (Map.Entry<String, WeakReference<View>> entry : map.entrySet()) {
                if (view.equals(entry.getValue().get())) {
                    return entry.getKey();
                }
            }
        }
        int zzv = this.zze.zzv();
        if (zzv != 1) {
            if (zzv == 2) {
                return "2099";
            }
            if (zzv == 6) {
                return "3099";
            }
            return null;
        }
        return "1099";
    }

    private final boolean zzD() {
        return this.zzc.optBoolean("allow_custom_click_gesture", false);
    }

    private final boolean zzE(JSONObject jSONObject, JSONObject jSONObject2, JSONObject jSONObject3, JSONObject jSONObject4, String str, JSONObject jSONObject5, boolean z) {
        Preconditions.m38902f("recordImpression must be called on the main UI thread.");
        try {
            JSONObject jSONObject6 = new JSONObject();
            jSONObject6.put("ad", this.zzc);
            jSONObject6.put("asset_view_signal", jSONObject2);
            jSONObject6.put("ad_view_signal", jSONObject);
            jSONObject6.put("scroll_view_signal", jSONObject3);
            jSONObject6.put("lock_screen_signal", jSONObject4);
            jSONObject6.put("provided_signals", jSONObject5);
            if (((Boolean) zzbet.zzc().zzc(zzbjl.zzca)).booleanValue()) {
                jSONObject6.put("view_signals", str);
            }
            jSONObject6.put("policy_validator_enabled", z);
            Context context = this.zza;
            JSONObject jSONObject7 = new JSONObject();
            zzt.zzc();
            DisplayMetrics zzy = zzs.zzy((WindowManager) context.getSystemService("window"));
            try {
                jSONObject7.put("width", zzber.zza().zza(context, zzy.widthPixels));
                jSONObject7.put("height", zzber.zza().zza(context, zzy.heightPixels));
            } catch (JSONException e) {
                jSONObject7 = null;
            }
            jSONObject6.put(AnalyticsConstants.SCREEN, jSONObject7);
            if (((Boolean) zzbet.zzc().zzc(zzbjl.zzgc)).booleanValue()) {
                this.zzd.zze("/clickRecorded", new zzdlj(this, null));
            } else {
                this.zzd.zze("/logScionEvent", new zzdli(this, null));
            }
            this.zzd.zze("/nativeImpression", new zzdlk(this, null));
            zzchj.zza(this.zzd.zzd("google.afma.nativeAds.handleImpression", jSONObject6), "Error during performing handleImpression");
            if (this.zzr) {
                return true;
            }
            this.zzr = zzt.zzm().zzg(this.zza, this.zzk.zza, this.zzj.zzC.toString(), this.zzl.zzf);
            return true;
        } catch (JSONException e2) {
            zzcgt.zzg("Unable to create impression JSON.", e2);
            return false;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdmu
    public final void zzA() {
        this.zzd.zzc();
    }

    @Override // com.google.android.gms.internal.ads.zzdmu
    public final void zzd(View view, Map<String, WeakReference<View>> map, Map<String, WeakReference<View>> map2, View.OnTouchListener onTouchListener, View.OnClickListener onClickListener) {
        this.zzv = new Point();
        this.zzw = new Point();
        if (!this.zzs) {
            this.zzp.zza(view);
            this.zzs = true;
        }
        view.setOnTouchListener(onTouchListener);
        view.setClickable(true);
        view.setOnClickListener(onClickListener);
        this.zzm.zzk(this);
        boolean zza = zzca.zza(this.zzk.zzc);
        if (map != null) {
            for (Map.Entry<String, WeakReference<View>> entry : map.entrySet()) {
                View view2 = entry.getValue().get();
                if (view2 != null) {
                    if (zza) {
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
                    if (zza) {
                        view3.setOnTouchListener(onTouchListener);
                    }
                    view3.setClickable(false);
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdmu
    public final void zze(View view, Map<String, WeakReference<View>> map) {
        this.zzv = new Point();
        this.zzw = new Point();
        if (view != null) {
            this.zzp.zzb(view);
        }
        this.zzs = false;
    }

    @Override // com.google.android.gms.internal.ads.zzdmu
    public final void zzf(View view, View view2, Map<String, WeakReference<View>> map, Map<String, WeakReference<View>> map2, boolean z) {
        JSONObject zze = zzca.zze(this.zza, map, map2, view2);
        JSONObject zzb = zzca.zzb(this.zza, view2);
        JSONObject zzc = zzca.zzc(view2);
        JSONObject zzd = zzca.zzd(this.zza, view2);
        String zzC = zzC(view, map);
        JSONObject zzf = zzca.zzf(zzC, this.zza, this.zzw, this.zzv);
        if (true == ((Boolean) zzbet.zzc().zzc(zzbjl.zzcb)).booleanValue()) {
            view = view2;
        }
        zzl(view, zzb, zze, zzc, zzd, zzC, zzf, null, z, false);
    }

    @Override // com.google.android.gms.internal.ads.zzdmu
    public final void zzg(String str) {
        zzl(null, null, null, null, null, str, null, null, false, false);
    }

    @Override // com.google.android.gms.internal.ads.zzdmu
    public final void zzh(Bundle bundle) {
        if (bundle == null) {
            zzcgt.zzd("Click data is null. No click is reported.");
        } else if (!zzB("click_reporting")) {
            zzcgt.zzf("The ad slot cannot handle external click events. You must be part of the allow list to be able to report your click events.");
        } else {
            Bundle bundle2 = bundle.getBundle("click_signal");
            zzl(null, null, null, null, null, bundle2 != null ? bundle2.getString("asset_id") : null, null, zzt.zzc().zzk(bundle, null), false, false);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdmu
    public final void zzi(View view, Map<String, WeakReference<View>> map, Map<String, WeakReference<View>> map2, boolean z) {
        if (!this.zzu) {
            zzcgt.zzd("Custom click reporting failed. enableCustomClickGesture is not set.");
        } else if (!zzD()) {
            zzcgt.zzd("Custom click reporting failed. Ad unit id not in the allow list.");
        } else {
            JSONObject zze = zzca.zze(this.zza, map, map2, view);
            JSONObject zzb = zzca.zzb(this.zza, view);
            JSONObject zzc = zzca.zzc(view);
            JSONObject zzd = zzca.zzd(this.zza, view);
            String zzC = zzC(null, map);
            zzl(view, zzb, zze, zzc, zzd, zzC, zzca.zzf(zzC, this.zza, this.zzw, this.zzv), null, z, true);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdmu
    public final void zzj() {
        this.zzu = true;
    }

    @Override // com.google.android.gms.internal.ads.zzdmu
    public final boolean zzk() {
        return zzD();
    }

    @VisibleForTesting
    public final void zzl(View view, JSONObject jSONObject, JSONObject jSONObject2, JSONObject jSONObject3, JSONObject jSONObject4, String str, JSONObject jSONObject5, JSONObject jSONObject6, boolean z, boolean z2) {
        String str2;
        Preconditions.m38902f("performClick must be called on the main UI thread.");
        try {
            JSONObject jSONObject7 = new JSONObject();
            jSONObject7.put("ad", this.zzc);
            jSONObject7.put("asset_view_signal", jSONObject2);
            jSONObject7.put("ad_view_signal", jSONObject);
            jSONObject7.put("click_signal", jSONObject5);
            jSONObject7.put("scroll_view_signal", jSONObject3);
            jSONObject7.put("lock_screen_signal", jSONObject4);
            jSONObject7.put("has_custom_click_handler", this.zzb.zzg(this.zze.zzQ()) != null);
            jSONObject7.put("provided_signals", jSONObject6);
            JSONObject jSONObject8 = new JSONObject();
            jSONObject8.put("asset_id", str);
            jSONObject8.put("template", this.zze.zzv());
            jSONObject8.put("view_aware_api_used", z);
            zzblv zzblvVar = this.zzl.zzi;
            jSONObject8.put("custom_mute_requested", zzblvVar != null && zzblvVar.zzg);
            jSONObject8.put("custom_mute_enabled", !this.zze.zzC().isEmpty() && this.zze.zzD() != null);
            if (this.zzn.zzb() != null && this.zzc.optBoolean("custom_one_point_five_click_enabled", false)) {
                jSONObject8.put("custom_one_point_five_click_eligible", true);
            }
            jSONObject8.put("timestamp", this.zzo.mo38787c());
            if (this.zzu && zzD()) {
                jSONObject8.put("custom_click_gesture_eligible", true);
            }
            if (z2) {
                jSONObject8.put("is_custom_click_gesture", true);
            }
            boolean z3 = false;
            if (this.zzb.zzg(this.zze.zzQ()) != null) {
                z3 = true;
            }
            jSONObject8.put("has_custom_click_handler", z3);
            try {
                JSONObject optJSONObject = this.zzc.optJSONObject("tracking_urls_and_actions");
                JSONObject jSONObject9 = optJSONObject;
                if (optJSONObject == null) {
                    jSONObject9 = new JSONObject();
                }
                str2 = this.zzf.zzb().zzm(this.zza, jSONObject9.optString("click_string"), view);
            } catch (Exception e) {
                zzcgt.zzg("Exception obtaining click signals", e);
                str2 = null;
            }
            jSONObject8.put("click_signals", str2);
            if (((Boolean) zzbet.zzc().zzc(zzbjl.zzcY)).booleanValue()) {
                jSONObject8.put("open_chrome_custom_tab", true);
            }
            if (((Boolean) zzbet.zzc().zzc(zzbjl.zzgg)).booleanValue() && PlatformVersion.m38774c()) {
                jSONObject8.put("try_fallback_for_deep_link", true);
            }
            if (((Boolean) zzbet.zzc().zzc(zzbjl.zzgh)).booleanValue() && PlatformVersion.m38774c()) {
                jSONObject8.put("in_app_link_handling_for_android_11_enabled", true);
            }
            jSONObject7.put("click", jSONObject8);
            JSONObject jSONObject10 = new JSONObject();
            long mo38787c = this.zzo.mo38787c();
            jSONObject10.put("time_from_last_touch_down", mo38787c - this.zzx);
            jSONObject10.put("time_from_last_touch", mo38787c - this.zzy);
            jSONObject7.put("touch_signal", jSONObject10);
            zzchj.zza(this.zzd.zzd("google.afma.nativeAds.handleClick", jSONObject7), "Error during performing handleClick");
        } catch (JSONException e2) {
            zzcgt.zzg("Unable to create click JSON.", e2);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdmu
    public final void zzm(View view, MotionEvent motionEvent, View view2) {
        this.zzv = zzca.zzh(motionEvent, view2);
        long mo38787c = this.zzo.mo38787c();
        this.zzy = mo38787c;
        if (motionEvent.getAction() == 0) {
            this.zzx = mo38787c;
            this.zzw = this.zzv;
        }
        MotionEvent obtain = MotionEvent.obtain(motionEvent);
        Point point = this.zzv;
        obtain.setLocation(point.x, point.y);
        this.zzf.zzd(obtain);
        obtain.recycle();
    }

    @Override // com.google.android.gms.internal.ads.zzdmu
    public final void zzn(Bundle bundle) {
        if (bundle == null) {
            zzcgt.zzd("Touch event data is null. No touch event is reported.");
        } else if (!zzB("touch_reporting")) {
            zzcgt.zzf("The ad slot cannot handle external touch events. You must be in the allow list to be able to report your touch events.");
        } else {
            float f = bundle.getFloat("x");
            float f2 = bundle.getFloat("y");
            this.zzf.zzb().zzk((int) f, (int) f2, bundle.getInt(Constants.VAST_DURATION_MS));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdmu
    public final JSONObject zzo(View view, Map<String, WeakReference<View>> map, Map<String, WeakReference<View>> map2) {
        JSONObject zze = zzca.zze(this.zza, map, map2, view);
        JSONObject zzb = zzca.zzb(this.zza, view);
        JSONObject zzc = zzca.zzc(view);
        JSONObject zzd = zzca.zzd(this.zza, view);
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("asset_view_signal", zze);
            jSONObject.put("ad_view_signal", zzb);
            jSONObject.put("scroll_view_signal", zzc);
            jSONObject.put("lock_screen_signal", zzd);
            return jSONObject;
        } catch (JSONException e) {
            zzcgt.zzg("Unable to create native ad view signals JSON.", e);
            return null;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdmu
    public final JSONObject zzp(View view, Map<String, WeakReference<View>> map, Map<String, WeakReference<View>> map2) {
        JSONObject zzo = zzo(view, map, map2);
        JSONObject jSONObject = new JSONObject();
        try {
            if (this.zzu && zzD()) {
                jSONObject.put("custom_click_gesture_eligible", true);
            }
            if (zzo != null) {
                jSONObject.put("nas", zzo);
            }
        } catch (JSONException e) {
            zzcgt.zzg("Unable to create native click meta data JSON.", e);
        }
        return jSONObject;
    }

    @Override // com.google.android.gms.internal.ads.zzdmu
    public final void zzq() {
        zzE(null, null, null, null, null, null, false);
    }

    @Override // com.google.android.gms.internal.ads.zzdmu
    public final void zzr(View view) {
        if (!this.zzc.optBoolean("custom_one_point_five_click_enabled", false)) {
            zzcgt.zzi("setClickConfirmingView: Your account need to be in the allow list to use this feature.\nContact your account manager for more information.");
            return;
        }
        zzdno zzdnoVar = this.zzn;
        if (view == null) {
            return;
        }
        view.setOnClickListener(zzdnoVar);
        view.setClickable(true);
        zzdnoVar.zzc = new WeakReference<>(view);
    }

    @Override // com.google.android.gms.internal.ads.zzdmu
    public final void zzs(zzbob zzbobVar) {
        if (!this.zzc.optBoolean("custom_one_point_five_click_enabled", false)) {
            zzcgt.zzi("setUnconfirmedClickListener: Your account need to be in the allow list to use this feature.\nContact your account manager for more information.");
        } else {
            this.zzn.zza(zzbobVar);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdmu
    public final void zzt() {
        if (!this.zzc.optBoolean("custom_one_point_five_click_enabled", false)) {
            return;
        }
        this.zzn.zzc();
    }

    @Override // com.google.android.gms.internal.ads.zzdmu
    public final void zzu(zzbgm zzbgmVar) {
        try {
            if (this.zzt) {
                return;
            }
            if (zzbgmVar == null && this.zze.zzD() != null) {
                this.zzt = true;
                this.zzq.zzb(this.zze.zzD().zzf());
                zzw();
                return;
            }
            this.zzt = true;
            this.zzq.zzb(zzbgmVar.zzf());
            zzw();
        } catch (RemoteException e) {
            zzcgt.zzl("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdmu
    public final void zzv(zzbgi zzbgiVar) {
        this.zzz = zzbgiVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdmu
    public final void zzw() {
        try {
            zzbgi zzbgiVar = this.zzz;
            if (zzbgiVar == null) {
                return;
            }
            zzbgiVar.zze();
        } catch (RemoteException e) {
            zzcgt.zzl("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdmu
    public final void zzx(View view, Map<String, WeakReference<View>> map, Map<String, WeakReference<View>> map2) {
        String zzo;
        JSONObject zze = zzca.zze(this.zza, map, map2, view);
        JSONObject zzb = zzca.zzb(this.zza, view);
        JSONObject zzc = zzca.zzc(view);
        JSONObject zzd = zzca.zzd(this.zza, view);
        if (((Boolean) zzbet.zzc().zzc(zzbjl.zzca)).booleanValue()) {
            try {
                zzo = this.zzf.zzb().zzo(this.zza, view, null);
            } catch (Exception e) {
                zzcgt.zzf("Exception getting data.");
            }
            zzE(zzb, zze, zzc, zzd, zzo, null, zzca.zzi(this.zza, this.zzj));
        }
        zzo = null;
        zzE(zzb, zze, zzc, zzd, zzo, null, zzca.zzi(this.zza, this.zzj));
    }

    @Override // com.google.android.gms.internal.ads.zzdmu
    public final void zzy() {
        Preconditions.m38902f("recordDownloadedImpression must be called on the main UI thread.");
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("ad", this.zzc);
            zzchj.zza(this.zzd.zzd("google.afma.nativeAds.handleDownloadedImpression", jSONObject), "Error during performing handleDownloadedImpression");
        } catch (JSONException e) {
            zzcgt.zzg("", e);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdmu
    public final boolean zzz(Bundle bundle) {
        if (!zzB("impression_reporting")) {
            zzcgt.zzf("The ad slot cannot handle external impression events. You must be in the allow list to be able to report your impression events.");
            return false;
        }
        return zzE(null, null, null, null, null, zzt.zzc().zzk(bundle, null), false);
    }
}
