package com.google.android.gms.internal.ads;

import android.content.Context;
import android.graphics.Rect;
import android.os.Build;
import android.os.PowerManager;
import android.text.TextUtils;
import android.view.Display;
import android.view.WindowManager;
import com.google.android.gms.ads.internal.C2341q;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/aiz.class */
public final class aiz implements AbstractC3245jg<ajd> {

    /* renamed from: a */
    private final Context f9776a;

    /* renamed from: b */
    private final dtm f9777b;

    /* renamed from: c */
    private final PowerManager f9778c;

    public aiz(Context context, dtm dtmVar) {
        this.f9776a = context;
        this.f9777b = dtmVar;
        this.f9778c = (PowerManager) context.getSystemService("power");
    }

    /* renamed from: a */
    public final JSONObject mo7728a(ajd ajdVar) {
        JSONObject jSONObject;
        JSONArray jSONArray = new JSONArray();
        JSONObject jSONObject2 = new JSONObject();
        if (ajdVar.f9803e == null) {
            jSONObject = new JSONObject();
        } else {
            dtt dttVar = ajdVar.f9803e;
            if (this.f9777b.m8625c() == null) {
                throw new JSONException("Active view Info cannot be null.");
            }
            boolean z = dttVar.f15730a;
            JSONObject jSONObject3 = new JSONObject();
            JSONObject put = jSONObject3.put("afmaVersion", this.f9777b.m8626b()).put("activeViewJSON", this.f9777b.m8625c()).put("timestamp", ajdVar.f9801c).put("adFormat", this.f9777b.m8627a()).put("hashCode", this.f9777b.m8624d());
            dtm dtmVar = this.f9777b;
            put.put("isMraid", false).put("isStopped", false).put("isPaused", ajdVar.f9800b).put("isNative", this.f9777b.m8623e()).put("isScreenOn", Build.VERSION.SDK_INT >= 20 ? this.f9778c.isInteractive() : this.f9778c.isScreenOn()).put("appMuted", C2341q.m14739h().m6900b()).put("appVolume", C2341q.m14739h().m6904a()).put("deviceVolume", C3585vw.m6902a(this.f9776a.getApplicationContext()));
            Rect rect = new Rect();
            Display defaultDisplay = ((WindowManager) this.f9776a.getSystemService("window")).getDefaultDisplay();
            rect.right = defaultDisplay.getWidth();
            rect.bottom = defaultDisplay.getHeight();
            jSONObject3.put("windowVisibility", dttVar.f15731b).put("isAttachedToWindow", z).put("viewBox", new JSONObject().put("top", dttVar.f15732c.top).put("bottom", dttVar.f15732c.bottom).put("left", dttVar.f15732c.left).put("right", dttVar.f15732c.right)).put("adBox", new JSONObject().put("top", dttVar.f15733d.top).put("bottom", dttVar.f15733d.bottom).put("left", dttVar.f15733d.left).put("right", dttVar.f15733d.right)).put("globalVisibleBox", new JSONObject().put("top", dttVar.f15734e.top).put("bottom", dttVar.f15734e.bottom).put("left", dttVar.f15734e.left).put("right", dttVar.f15734e.right)).put("globalVisibleBoxVisible", dttVar.f15735f).put("localVisibleBox", new JSONObject().put("top", dttVar.f15736g.top).put("bottom", dttVar.f15736g.bottom).put("left", dttVar.f15736g.left).put("right", dttVar.f15736g.right)).put("localVisibleBoxVisible", dttVar.f15737h).put("hitBox", new JSONObject().put("top", dttVar.f15738i.top).put("bottom", dttVar.f15738i.bottom).put("left", dttVar.f15738i.left).put("right", dttVar.f15738i.right)).put("screenDensity", this.f9776a.getResources().getDisplayMetrics().density);
            jSONObject3.put("isVisible", ajdVar.f9799a);
            if (((Boolean) dyx.m8158e().m7876a(edi.f16347aF)).booleanValue()) {
                JSONArray jSONArray2 = new JSONArray();
                if (dttVar.f15740k != null) {
                    for (Rect rect2 : dttVar.f15740k) {
                        jSONArray2.put(new JSONObject().put("top", rect2.top).put("bottom", rect2.bottom).put("left", rect2.left).put("right", rect2.right));
                    }
                }
                jSONObject3.put("scrollableContainerBoxes", jSONArray2);
            }
            if (!TextUtils.isEmpty(ajdVar.f9802d)) {
                jSONObject3.put("doneReasonCode", "u");
            }
            jSONObject = jSONObject3;
        }
        jSONArray.put(jSONObject);
        jSONObject2.put("units", jSONArray);
        return jSONObject2;
    }
}
