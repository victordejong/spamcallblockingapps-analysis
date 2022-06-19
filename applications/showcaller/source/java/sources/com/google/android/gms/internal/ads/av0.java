package com.google.android.gms.internal.ads;

import android.content.Context;
import android.graphics.Rect;
import android.media.AudioManager;
import android.os.Build;
import android.os.PowerManager;
import android.text.TextUtils;
import android.view.Display;
import android.view.WindowManager;
import com.google.android.gms.ads.internal.C5667s;
import com.google.android.gms.ads.internal.util.C5688f;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/av0.class */
public final class av0 implements j60<dv0> {

    /* renamed from: a */
    private final Context f20137a;

    /* renamed from: b */
    private final C6703lj f20138b;

    /* renamed from: c */
    private final PowerManager f20139c;

    public av0(Context context, C6703lj c6703lj) {
        this.f20137a = context;
        this.f20138b = c6703lj;
        this.f20139c = (PowerManager) context.getSystemService("power");
    }

    /* renamed from: a */
    public final JSONObject mo8186b(dv0 dv0Var) {
        JSONObject jSONObject;
        JSONArray jSONArray = new JSONArray();
        JSONObject jSONObject2 = new JSONObject();
        C6851pj c6851pj = dv0Var.f21881f;
        if (c6851pj == null) {
            jSONObject = new JSONObject();
        } else if (this.f20138b.m13500c() == null) {
            throw new JSONException("Active view Info cannot be null.");
        } else {
            boolean z = c6851pj.f28014a;
            JSONObject jSONObject3 = new JSONObject();
            jSONObject3.put("afmaVersion", this.f20138b.m13501b()).put("activeViewJSON", this.f20138b.m13500c()).put("timestamp", dv0Var.f21879d).put("adFormat", this.f20138b.m13502a()).put("hashCode", this.f20138b.m13499d()).put("isMraid", false).put("isStopped", false).put("isPaused", dv0Var.f21877b).put("isNative", this.f20138b.m13498e()).put("isScreenOn", Build.VERSION.SDK_INT >= 20 ? this.f20139c.isInteractive() : this.f20139c.isScreenOn()).put("appMuted", C5667s.m18155i().m18029d()).put("appVolume", C5667s.m18155i().m18031b()).put("deviceVolume", C5688f.m18028e(this.f20137a.getApplicationContext()));
            if (((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25631Y3)).booleanValue()) {
                AudioManager audioManager = (AudioManager) this.f20137a.getApplicationContext().getSystemService("audio");
                Integer valueOf = audioManager == null ? null : Integer.valueOf(audioManager.getMode());
                if (valueOf != null) {
                    jSONObject3.put("audioMode", valueOf);
                }
            }
            Rect rect = new Rect();
            Display defaultDisplay = ((WindowManager) this.f20137a.getSystemService("window")).getDefaultDisplay();
            rect.right = defaultDisplay.getWidth();
            rect.bottom = defaultDisplay.getHeight();
            jSONObject3.put("windowVisibility", c6851pj.f28015b).put("isAttachedToWindow", z).put("viewBox", new JSONObject().put("top", c6851pj.f28016c.top).put("bottom", c6851pj.f28016c.bottom).put("left", c6851pj.f28016c.left).put("right", c6851pj.f28016c.right)).put("adBox", new JSONObject().put("top", c6851pj.f28017d.top).put("bottom", c6851pj.f28017d.bottom).put("left", c6851pj.f28017d.left).put("right", c6851pj.f28017d.right)).put("globalVisibleBox", new JSONObject().put("top", c6851pj.f28018e.top).put("bottom", c6851pj.f28018e.bottom).put("left", c6851pj.f28018e.left).put("right", c6851pj.f28018e.right)).put("globalVisibleBoxVisible", c6851pj.f28019f).put("localVisibleBox", new JSONObject().put("top", c6851pj.f28020g.top).put("bottom", c6851pj.f28020g.bottom).put("left", c6851pj.f28020g.left).put("right", c6851pj.f28020g.right)).put("localVisibleBoxVisible", c6851pj.f28021h).put("hitBox", new JSONObject().put("top", c6851pj.f28022i.top).put("bottom", c6851pj.f28022i.bottom).put("left", c6851pj.f28022i.left).put("right", c6851pj.f28022i.right)).put("screenDensity", this.f20137a.getResources().getDisplayMetrics().density);
            jSONObject3.put("isVisible", dv0Var.f21876a);
            if (((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25596U0)).booleanValue()) {
                JSONArray jSONArray2 = new JSONArray();
                List<Rect> list = c6851pj.f28024k;
                if (list != null) {
                    for (Rect rect2 : list) {
                        jSONArray2.put(new JSONObject().put("top", rect2.top).put("bottom", rect2.bottom).put("left", rect2.left).put("right", rect2.right));
                    }
                }
                jSONObject3.put("scrollableContainerBoxes", jSONArray2);
            }
            if (!TextUtils.isEmpty(dv0Var.f21880e)) {
                jSONObject3.put("doneReasonCode", "u");
            }
            jSONObject = jSONObject3;
        }
        jSONArray.put(jSONObject);
        jSONObject2.put("units", jSONArray);
        return jSONObject2;
    }
}
