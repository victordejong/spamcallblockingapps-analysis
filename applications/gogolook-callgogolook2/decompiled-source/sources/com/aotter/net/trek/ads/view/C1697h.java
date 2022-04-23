package com.aotter.net.trek.ads.view;

import android.app.Dialog;
import android.webkit.JavascriptInterface;
import com.aotter.net.gson.Gson;
import com.aotter.net.gson.JsonObject;
import com.aotter.net.trek.ads.interfaces.InterActiveWebViewListener;
import com.aotter.net.trek.ads.view.controller.TrekMediaViewHandler;
import com.aotter.net.trek.model.CatWalk;
import com.aotter.net.trek.util.TrekLog;
/* renamed from: com.aotter.net.trek.ads.view.h */
/* loaded from: classes-dex2jar.jar:com/aotter/net/trek/ads/view/h.class */
public class C1697h {

    /* renamed from: a */
    public final /* synthetic */ InterActiveWebView f1385a;

    public C1697h(InterActiveWebView interActiveWebView) {
        this.f1385a = interActiveWebView;
    }

    public /* synthetic */ C1697h(InterActiveWebView interActiveWebView, C1686a aVar) {
        this(interActiveWebView);
    }

    @JavascriptInterface
    public void doStuff(String str) {
        Gson gson;
        Gson gson2;
        TrekMediaViewHandler trekMediaViewHandler;
        InterActiveWebViewListener interActiveWebViewListener;
        boolean z;
        InterActiveWebViewListener interActiveWebViewListener2;
        TrekMediaViewHandler trekMediaViewHandler2;
        Dialog dialog;
        TrekLog.m36319d(str);
        gson = this.f1385a.f1265d;
        JsonObject jsonObject = (JsonObject) gson.fromJson(str, (Class<Object>) JsonObject.class);
        if (jsonObject.has("message")) {
            gson2 = this.f1385a.f1265d;
            CatWalk catWalk = (CatWalk) gson2.fromJson(jsonObject.get("message").toString(), (Class<Object>) CatWalk.class);
            trekMediaViewHandler = this.f1385a.f1267f;
            if (trekMediaViewHandler != null) {
                trekMediaViewHandler2 = this.f1385a.f1267f;
                dialog = this.f1385a.f1268g;
                trekMediaViewHandler2.setCatWalk(catWalk, dialog);
            }
            if (CatWalk.CatWalkAction.fromString(catWalk.getAction()) == CatWalk.CatWalkAction.GAME_LOAD_COMPLETE) {
                interActiveWebViewListener = this.f1385a.f1275n;
                if (interActiveWebViewListener != null) {
                    interActiveWebViewListener2 = this.f1385a.f1275n;
                    interActiveWebViewListener2.onPageFinish();
                }
                this.f1385a.f1276o = true;
                z = this.f1385a.f1277p;
                if (z) {
                    this.f1385a.recordImpression();
                    return;
                }
                return;
            }
            return;
        }
        TrekLog.m36317e("jsi has no message");
    }
}
