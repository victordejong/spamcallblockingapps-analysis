package com.google.android.gms.internal.ads;

import android.content.Context;
import android.graphics.Rect;
import android.media.AudioManager;
import android.os.PowerManager;
import android.text.TextUtils;
import android.view.Display;
import android.view.WindowManager;
import com.google.android.gms.ads.internal.util.zzaf;
import com.google.android.gms.ads.internal.zzt;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcxb.class */
public final class zzcxb implements zzbwa<zzcxe> {
    private final Context zza;
    private final zzaxw zzb;
    private final PowerManager zzc;

    public zzcxb(Context context, zzaxw zzaxwVar) {
        this.zza = context;
        this.zzb = zzaxwVar;
        this.zzc = (PowerManager) context.getSystemService("power");
    }

    /* renamed from: zza */
    public final JSONObject zzb(zzcxe zzcxeVar) throws JSONException {
        JSONObject jSONObject;
        JSONArray jSONArray = new JSONArray();
        JSONObject jSONObject2 = new JSONObject();
        zzaxz zzaxzVar = zzcxeVar.zzf;
        if (zzaxzVar == null) {
            jSONObject = new JSONObject();
        } else if (this.zzb.zzd() == null) {
            throw new JSONException("Active view Info cannot be null.");
        } else {
            boolean z = zzaxzVar.zza;
            JSONObject jSONObject3 = new JSONObject();
            jSONObject3.put("afmaVersion", this.zzb.zzb()).put("activeViewJSON", this.zzb.zzd()).put("timestamp", zzcxeVar.zzd).put("adFormat", this.zzb.zza()).put("hashCode", this.zzb.zzc()).put("isMraid", false).put("isStopped", false).put("isPaused", zzcxeVar.zzb).put("isNative", this.zzb.zze()).put("isScreenOn", this.zzc.isInteractive()).put("appMuted", zzt.zzr().zze()).put("appVolume", zzt.zzr().zza()).put("deviceVolume", zzaf.zzb(this.zza.getApplicationContext()));
            if (((Boolean) zzbgq.zzc().zzb(zzblj.zzef)).booleanValue()) {
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
            jSONObject3.put("windowVisibility", zzaxzVar.zzb).put("isAttachedToWindow", z).put("viewBox", new JSONObject().put("top", zzaxzVar.zzc.top).put("bottom", zzaxzVar.zzc.bottom).put("left", zzaxzVar.zzc.left).put("right", zzaxzVar.zzc.right)).put("adBox", new JSONObject().put("top", zzaxzVar.zzd.top).put("bottom", zzaxzVar.zzd.bottom).put("left", zzaxzVar.zzd.left).put("right", zzaxzVar.zzd.right)).put("globalVisibleBox", new JSONObject().put("top", zzaxzVar.zze.top).put("bottom", zzaxzVar.zze.bottom).put("left", zzaxzVar.zze.left).put("right", zzaxzVar.zze.right)).put("globalVisibleBoxVisible", zzaxzVar.zzf).put("localVisibleBox", new JSONObject().put("top", zzaxzVar.zzg.top).put("bottom", zzaxzVar.zzg.bottom).put("left", zzaxzVar.zzg.left).put("right", zzaxzVar.zzg.right)).put("localVisibleBoxVisible", zzaxzVar.zzh).put("hitBox", new JSONObject().put("top", zzaxzVar.zzi.top).put("bottom", zzaxzVar.zzi.bottom).put("left", zzaxzVar.zzi.left).put("right", zzaxzVar.zzi.right)).put("screenDensity", this.zza.getResources().getDisplayMetrics().density);
            jSONObject3.put("isVisible", zzcxeVar.zza);
            if (((Boolean) zzbgq.zzc().zzb(zzblj.zzba)).booleanValue()) {
                JSONArray jSONArray2 = new JSONArray();
                List<Rect> list = zzaxzVar.zzk;
                if (list != null) {
                    for (Rect rect2 : list) {
                        jSONArray2.put(new JSONObject().put("top", rect2.top).put("bottom", rect2.bottom).put("left", rect2.left).put("right", rect2.right));
                    }
                }
                jSONObject3.put("scrollableContainerBoxes", jSONArray2);
            }
            if (!TextUtils.isEmpty(zzcxeVar.zze)) {
                jSONObject3.put("doneReasonCode", "u");
            }
            jSONObject = jSONObject3;
        }
        jSONArray.put(jSONObject);
        jSONObject2.put("units", jSONArray);
        return jSONObject2;
    }
}
