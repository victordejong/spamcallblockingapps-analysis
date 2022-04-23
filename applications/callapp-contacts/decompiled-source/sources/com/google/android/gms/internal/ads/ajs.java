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
public final class ajs implements lk<ajw> {

    /* renamed from: a  reason: collision with root package name */
    private final Context f23441a;

    /* renamed from: b  reason: collision with root package name */
    private final eed f23442b;

    /* renamed from: c  reason: collision with root package name */
    private final PowerManager f23443c;

    public ajs(Context context, eed eedVar) {
        this.f23441a = context;
        this.f23442b = eedVar;
        this.f23443c = (PowerManager) context.getSystemService("power");
    }

    public final JSONObject a(ajw ajwVar) throws JSONException {
        JSONObject jSONObject;
        JSONArray jSONArray = new JSONArray();
        JSONObject jSONObject2 = new JSONObject();
        if (ajwVar.e == null) {
            jSONObject = new JSONObject();
        } else {
            eeh eehVar = ajwVar.e;
            if (this.f23442b.f27721b != null) {
                boolean z = eehVar.f27726a;
                JSONObject jSONObject3 = new JSONObject();
                jSONObject3.put("afmaVersion", this.f23442b.f27723d).put("activeViewJSON", this.f23442b.f27721b).put(Reporting.Key.TIMESTAMP, ajwVar.f23453c).put("adFormat", this.f23442b.f27720a).put("hashCode", this.f23442b.f27722c).put("isMraid", false).put("isStopped", false).put("isPaused", ajwVar.f23452b).put("isNative", this.f23442b.e).put("isScreenOn", Build.VERSION.SDK_INT >= 20 ? this.f23443c.isInteractive() : this.f23443c.isScreenOn()).put("appMuted", zzr.zzla().zzrh()).put("appVolume", zzr.zzla().zzrg()).put("deviceVolume", zzae.zzbj(this.f23441a.getApplicationContext()));
                Rect rect = new Rect();
                Display defaultDisplay = ((WindowManager) this.f23441a.getSystemService("window")).getDefaultDisplay();
                rect.right = defaultDisplay.getWidth();
                rect.bottom = defaultDisplay.getHeight();
                jSONObject3.put("windowVisibility", eehVar.f27727b).put("isAttachedToWindow", z).put("viewBox", new JSONObject().put("top", eehVar.f27728c.top).put("bottom", eehVar.f27728c.bottom).put("left", eehVar.f27728c.left).put("right", eehVar.f27728c.right)).put("adBox", new JSONObject().put("top", eehVar.f27729d.top).put("bottom", eehVar.f27729d.bottom).put("left", eehVar.f27729d.left).put("right", eehVar.f27729d.right)).put("globalVisibleBox", new JSONObject().put("top", eehVar.e.top).put("bottom", eehVar.e.bottom).put("left", eehVar.e.left).put("right", eehVar.e.right)).put("globalVisibleBoxVisible", eehVar.f).put("localVisibleBox", new JSONObject().put("top", eehVar.g.top).put("bottom", eehVar.g.bottom).put("left", eehVar.g.left).put("right", eehVar.g.right)).put("localVisibleBoxVisible", eehVar.h).put("hitBox", new JSONObject().put("top", eehVar.i.top).put("bottom", eehVar.i.bottom).put("left", eehVar.i.left).put("right", eehVar.i.right)).put("screenDensity", this.f23441a.getResources().getDisplayMetrics().density);
                jSONObject3.put("isVisible", ajwVar.f23451a);
                if (((Boolean) ekb.e().a(aq.aS)).booleanValue()) {
                    JSONArray jSONArray2 = new JSONArray();
                    if (eehVar.k != null) {
                        for (Rect rect2 : eehVar.k) {
                            jSONArray2.put(new JSONObject().put("top", rect2.top).put("bottom", rect2.bottom).put("left", rect2.left).put("right", rect2.right));
                        }
                    }
                    jSONObject3.put("scrollableContainerBoxes", jSONArray2);
                }
                if (!TextUtils.isEmpty(ajwVar.f23454d)) {
                    jSONObject3.put("doneReasonCode", "u");
                }
                jSONObject = jSONObject3;
            } else {
                throw new JSONException("Active view Info cannot be null.");
            }
        }
        jSONArray.put(jSONObject);
        jSONObject2.put("units", jSONArray);
        return jSONObject2;
    }
}
