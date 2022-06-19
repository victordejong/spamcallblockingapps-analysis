package com.google.android.gms.internal.ads;

import android.content.Context;
import android.graphics.Rect;
import android.os.Build;
import android.os.PowerManager;
import android.text.TextUtils;
import android.view.Display;
import android.view.WindowManager;
import com.facebook.appevents.internal.ViewHierarchyConstants;
import com.google.android.gms.ads.internal.util.zzae;
import com.google.android.gms.ads.internal.zzr;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbjx.class */
public final class zzbjx implements zzamc<zzbkb> {
    private final Context context;
    private final PowerManager zzaae;
    private final zzqt zzfsd;

    public zzbjx(Context context, zzqt zzqtVar) {
        this.context = context;
        this.zzfsd = zzqtVar;
        this.zzaae = (PowerManager) context.getSystemService("power");
    }

    /* renamed from: zza */
    public final JSONObject zzi(zzbkb zzbkbVar) throws JSONException {
        JSONObject jSONObject;
        JSONArray jSONArray = new JSONArray();
        JSONObject jSONObject2 = new JSONObject();
        if (zzbkbVar.zzfss == null) {
            jSONObject = new JSONObject();
        } else {
            zzqx zzqxVar = zzbkbVar.zzfss;
            if (this.zzfsd.zzlx() == null) {
                throw new JSONException("Active view Info cannot be null.");
            }
            boolean z = zzqxVar.zzbrv;
            JSONObject jSONObject3 = new JSONObject();
            jSONObject3.put("afmaVersion", this.zzfsd.zzlw()).put("activeViewJSON", this.zzfsd.zzlx()).put("timestamp", zzbkbVar.timestamp).put("adFormat", this.zzfsd.zzlv()).put("hashCode", this.zzfsd.getUniqueId()).put("isMraid", false).put("isStopped", false).put("isPaused", zzbkbVar.zzfsp).put("isNative", this.zzfsd.isNative()).put("isScreenOn", Build.VERSION.SDK_INT >= 20 ? this.zzaae.isInteractive() : this.zzaae.isScreenOn()).put("appMuted", zzr.zzkw().zzrb()).put("appVolume", zzr.zzkw().zzra()).put("deviceVolume", zzae.zzbg(this.context.getApplicationContext()));
            Rect rect = new Rect();
            Display defaultDisplay = ((WindowManager) this.context.getSystemService("window")).getDefaultDisplay();
            rect.right = defaultDisplay.getWidth();
            rect.bottom = defaultDisplay.getHeight();
            jSONObject3.put("windowVisibility", zzqxVar.zzaal).put("isAttachedToWindow", z).put("viewBox", new JSONObject().put(ViewHierarchyConstants.DIMENSION_TOP_KEY, zzqxVar.zzbrw.top).put("bottom", zzqxVar.zzbrw.bottom).put(ViewHierarchyConstants.DIMENSION_LEFT_KEY, zzqxVar.zzbrw.left).put("right", zzqxVar.zzbrw.right)).put("adBox", new JSONObject().put(ViewHierarchyConstants.DIMENSION_TOP_KEY, zzqxVar.zzbrx.top).put("bottom", zzqxVar.zzbrx.bottom).put(ViewHierarchyConstants.DIMENSION_LEFT_KEY, zzqxVar.zzbrx.left).put("right", zzqxVar.zzbrx.right)).put("globalVisibleBox", new JSONObject().put(ViewHierarchyConstants.DIMENSION_TOP_KEY, zzqxVar.zzbry.top).put("bottom", zzqxVar.zzbry.bottom).put(ViewHierarchyConstants.DIMENSION_LEFT_KEY, zzqxVar.zzbry.left).put("right", zzqxVar.zzbry.right)).put("globalVisibleBoxVisible", zzqxVar.zzbrz).put("localVisibleBox", new JSONObject().put(ViewHierarchyConstants.DIMENSION_TOP_KEY, zzqxVar.zzbsa.top).put("bottom", zzqxVar.zzbsa.bottom).put(ViewHierarchyConstants.DIMENSION_LEFT_KEY, zzqxVar.zzbsa.left).put("right", zzqxVar.zzbsa.right)).put("localVisibleBoxVisible", zzqxVar.zzbsb).put("hitBox", new JSONObject().put(ViewHierarchyConstants.DIMENSION_TOP_KEY, zzqxVar.zzbsc.top).put("bottom", zzqxVar.zzbsc.bottom).put(ViewHierarchyConstants.DIMENSION_LEFT_KEY, zzqxVar.zzbsc.left).put("right", zzqxVar.zzbsc.right)).put("screenDensity", this.context.getResources().getDisplayMetrics().density);
            jSONObject3.put("isVisible", zzbkbVar.zzbrj);
            if (((Boolean) zzwr.zzqr().zzd(zzabp.zzcqu)).booleanValue()) {
                JSONArray jSONArray2 = new JSONArray();
                if (zzqxVar.zzbse != null) {
                    for (Rect rect2 : zzqxVar.zzbse) {
                        jSONArray2.put(new JSONObject().put(ViewHierarchyConstants.DIMENSION_TOP_KEY, rect2.top).put("bottom", rect2.bottom).put(ViewHierarchyConstants.DIMENSION_LEFT_KEY, rect2.left).put("right", rect2.right));
                    }
                }
                jSONObject3.put("scrollableContainerBoxes", jSONArray2);
            }
            if (!TextUtils.isEmpty(zzbkbVar.zzfsr)) {
                jSONObject3.put("doneReasonCode", "u");
            }
            jSONObject = jSONObject3;
        }
        jSONArray.put(jSONObject);
        jSONObject2.put("units", jSONArray);
        return jSONObject2;
    }
}
