package com.google.android.gms.internal.ads;

import android.content.Context;
import android.graphics.Rect;
import android.media.AudioManager;
import android.os.PowerManager;
import android.text.TextUtils;
import android.view.Display;
import android.view.WindowManager;
import com.google.android.gms.ads.internal.util.zzae;
import com.google.android.gms.ads.internal.zzt;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzctm.class */
public final class zzctm implements zzbtz<zzctp> {
    private final Context zza;
    private final zzavz zzb;
    private final PowerManager zzc;

    public zzctm(Context context, zzavz zzavzVar) {
        this.zza = context;
        this.zzb = zzavzVar;
        this.zzc = (PowerManager) context.getSystemService("power");
    }

    /* renamed from: zza */
    public final JSONObject zzb(zzctp zzctpVar) throws JSONException {
        JSONObject jSONObject;
        JSONArray jSONArray = new JSONArray();
        JSONObject jSONObject2 = new JSONObject();
        zzawc zzawcVar = zzctpVar.zzf;
        if (zzawcVar == null) {
            jSONObject = new JSONObject();
        } else if (this.zzb.zzc() == null) {
            throw new JSONException("Active view Info cannot be null.");
        } else {
            boolean z = zzawcVar.zza;
            JSONObject jSONObject3 = new JSONObject();
            jSONObject3.put("afmaVersion", this.zzb.zzb()).put("activeViewJSON", this.zzb.zzc()).put("timestamp", zzctpVar.zzd).put("adFormat", this.zzb.zza()).put("hashCode", this.zzb.zzd()).put("isMraid", false).put("isStopped", false).put("isPaused", zzctpVar.zzb).put("isNative", this.zzb.zze()).put("isScreenOn", this.zzc.isInteractive()).put("appMuted", zzt.zzh().zzd()).put("appVolume", zzt.zzh().zzb()).put("deviceVolume", zzae.zze(this.zza.getApplicationContext()));
            if (((Boolean) zzbet.zzc().zzc(zzbjl.zzdY)).booleanValue()) {
                AudioManager audioManager = (AudioManager) this.zza.getApplicationContext().getSystemService("audio");
                Integer valueOf = audioManager == null ? null : Integer.valueOf(audioManager.getMode());
                if (valueOf != null) {
                    jSONObject3.put("audioMode", valueOf);
                }
            }
            Rect rect = new Rect();
            Display defaultDisplay = ((WindowManager) this.zza.getSystemService("window")).getDefaultDisplay();
            rect.right = defaultDisplay.getWidth();
            rect.bottom = defaultDisplay.getHeight();
            jSONObject3.put("windowVisibility", zzawcVar.zzb).put("isAttachedToWindow", z).put("viewBox", new JSONObject().put("top", zzawcVar.zzc.top).put("bottom", zzawcVar.zzc.bottom).put("left", zzawcVar.zzc.left).put("right", zzawcVar.zzc.right)).put("adBox", new JSONObject().put("top", zzawcVar.zzd.top).put("bottom", zzawcVar.zzd.bottom).put("left", zzawcVar.zzd.left).put("right", zzawcVar.zzd.right)).put("globalVisibleBox", new JSONObject().put("top", zzawcVar.zze.top).put("bottom", zzawcVar.zze.bottom).put("left", zzawcVar.zze.left).put("right", zzawcVar.zze.right)).put("globalVisibleBoxVisible", zzawcVar.zzf).put("localVisibleBox", new JSONObject().put("top", zzawcVar.zzg.top).put("bottom", zzawcVar.zzg.bottom).put("left", zzawcVar.zzg.left).put("right", zzawcVar.zzg.right)).put("localVisibleBoxVisible", zzawcVar.zzh).put("hitBox", new JSONObject().put("top", zzawcVar.zzi.top).put("bottom", zzawcVar.zzi.bottom).put("left", zzawcVar.zzi.left).put("right", zzawcVar.zzi.right)).put("screenDensity", this.zza.getResources().getDisplayMetrics().density);
            jSONObject3.put("isVisible", zzctpVar.zza);
            if (((Boolean) zzbet.zzc().zzc(zzbjl.zzaU)).booleanValue()) {
                JSONArray jSONArray2 = new JSONArray();
                List<Rect> list = zzawcVar.zzk;
                if (list != null) {
                    for (Rect rect2 : list) {
                        jSONArray2.put(new JSONObject().put("top", rect2.top).put("bottom", rect2.bottom).put("left", rect2.left).put("right", rect2.right));
                    }
                }
                jSONObject3.put("scrollableContainerBoxes", jSONArray2);
            }
            if (!TextUtils.isEmpty(zzctpVar.zze)) {
                jSONObject3.put("doneReasonCode", "u");
            }
            jSONObject = jSONObject3;
        }
        jSONArray.put(jSONObject);
        jSONObject2.put("units", jSONArray);
        return jSONObject2;
    }
}
