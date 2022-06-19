package com.google.android.gms.internal.ads;

import android.content.Context;
import android.graphics.Rect;
import android.os.Build;
import android.os.PowerManager;
import android.text.TextUtils;
import android.view.Display;
import android.view.WindowManager;
import com.google.android.gms.ads.internal.util.zzae;
import com.google.android.gms.ads.internal.zzr;
import net.pubnative.lite.sdk.analytics.Reporting;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ajs.class */
public final class ajs implements AbstractC12717lk<ajw> {

    /* renamed from: a */
    private final Context f42245a;

    /* renamed from: b */
    private final eed f42246b;

    /* renamed from: c */
    private final PowerManager f42247c;

    public ajs(Context context, eed eedVar) {
        this.f42245a = context;
        this.f42246b = eedVar;
        this.f42247c = (PowerManager) context.getSystemService("power");
    }

    /* renamed from: a */
    public final JSONObject mo14524a(ajw ajwVar) throws JSONException {
        JSONObject jSONObject;
        JSONArray jSONArray = new JSONArray();
        JSONObject jSONObject2 = new JSONObject();
        if (ajwVar.f42265e == null) {
            jSONObject = new JSONObject();
        } else {
            eeh eehVar = ajwVar.f42265e;
            if (this.f42246b.f48856b == null) {
                throw new JSONException("Active view Info cannot be null.");
            }
            boolean z = eehVar.f48863a;
            JSONObject jSONObject3 = new JSONObject();
            jSONObject3.put("afmaVersion", this.f42246b.f48858d).put("activeViewJSON", this.f42246b.f48856b).put(Reporting.Key.TIMESTAMP, ajwVar.f42263c).put("adFormat", this.f42246b.f48855a).put("hashCode", this.f42246b.f48857c).put("isMraid", false).put("isStopped", false).put("isPaused", ajwVar.f42262b).put("isNative", this.f42246b.f48859e).put("isScreenOn", Build.VERSION.SDK_INT >= 20 ? this.f42247c.isInteractive() : this.f42247c.isScreenOn()).put("appMuted", zzr.zzla().zzrh()).put("appVolume", zzr.zzla().zzrg()).put("deviceVolume", zzae.zzbj(this.f42245a.getApplicationContext()));
            Rect rect = new Rect();
            Display defaultDisplay = ((WindowManager) this.f42245a.getSystemService("window")).getDefaultDisplay();
            rect.right = defaultDisplay.getWidth();
            rect.bottom = defaultDisplay.getHeight();
            jSONObject3.put("windowVisibility", eehVar.f48864b).put("isAttachedToWindow", z).put("viewBox", new JSONObject().put("top", eehVar.f48865c.top).put("bottom", eehVar.f48865c.bottom).put("left", eehVar.f48865c.left).put("right", eehVar.f48865c.right)).put("adBox", new JSONObject().put("top", eehVar.f48866d.top).put("bottom", eehVar.f48866d.bottom).put("left", eehVar.f48866d.left).put("right", eehVar.f48866d.right)).put("globalVisibleBox", new JSONObject().put("top", eehVar.f48867e.top).put("bottom", eehVar.f48867e.bottom).put("left", eehVar.f48867e.left).put("right", eehVar.f48867e.right)).put("globalVisibleBoxVisible", eehVar.f48868f).put("localVisibleBox", new JSONObject().put("top", eehVar.f48869g.top).put("bottom", eehVar.f48869g.bottom).put("left", eehVar.f48869g.left).put("right", eehVar.f48869g.right)).put("localVisibleBoxVisible", eehVar.f48870h).put("hitBox", new JSONObject().put("top", eehVar.f48871i.top).put("bottom", eehVar.f48871i.bottom).put("left", eehVar.f48871i.left).put("right", eehVar.f48871i.right)).put("screenDensity", this.f42245a.getResources().getDisplayMetrics().density);
            jSONObject3.put("isVisible", ajwVar.f42261a);
            if (((Boolean) ekb.m14831e().m18571a(C12187aq.f42656aS)).booleanValue()) {
                JSONArray jSONArray2 = new JSONArray();
                if (eehVar.f48873k != null) {
                    for (Rect rect2 : eehVar.f48873k) {
                        jSONArray2.put(new JSONObject().put("top", rect2.top).put("bottom", rect2.bottom).put("left", rect2.left).put("right", rect2.right));
                    }
                }
                jSONObject3.put("scrollableContainerBoxes", jSONArray2);
            }
            if (!TextUtils.isEmpty(ajwVar.f42264d)) {
                jSONObject3.put("doneReasonCode", "u");
            }
            jSONObject = jSONObject3;
        }
        jSONArray.put(jSONObject);
        jSONObject2.put("units", jSONArray);
        return jSONObject2;
    }
}
