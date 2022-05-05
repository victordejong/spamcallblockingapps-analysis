package com.aotter.net.trek.ads.view.controller;

import android.app.Dialog;
import android.text.TextUtils;
import com.aotter.net.trek.ads.interfaces.TrekMediaViewListener;
import com.aotter.net.trek.model.CatWalk;
import com.aotter.net.trek.model.NativeAd;
import com.aotter.net.trek.util.TrekLog;
/* loaded from: classes-dex2jar.jar:com/aotter/net/trek/ads/view/controller/TrekMediaViewHandler.class */
public class TrekMediaViewHandler {

    /* renamed from: a */
    public CatWalk f1372a;

    /* renamed from: b */
    public final TrekMediaViewListener f1373b;

    /* renamed from: c */
    public final NativeAd f1374c;

    /* renamed from: d */
    public Dialog f1375d;

    public TrekMediaViewHandler(NativeAd nativeAd, TrekMediaViewListener trekMediaViewListener) {
        this.f1374c = nativeAd;
        this.f1373b = trekMediaViewListener;
    }

    /* renamed from: a */
    private void m36423a() {
        switch (C1692b.f1378a[CatWalk.CatWalkAction.fromString(this.f1372a.getAction()).ordinal()]) {
            case 1:
            default:
                return;
            case 2:
                this.f1373b.actionCapture();
                return;
            case 3:
                this.f1373b.actionClose(this.f1375d);
                return;
            case 4:
                this.f1373b.actionBrowser(this.f1372a.getBrowser());
                return;
            case 5:
                this.f1373b.actionVideo(this.f1372a.getVideo());
                return;
            case 6:
                this.f1373b.onAdClick(this.f1372a, this.f1374c);
                return;
            case 7:
                if (!TextUtils.isEmpty(this.f1372a.getAction())) {
                    TrekLog.m36319d(this.f1372a.getAction());
                    return;
                }
                return;
        }
    }

    public void setCatWalk(CatWalk catWalk, Dialog dialog) {
        this.f1372a = catWalk;
        this.f1375d = dialog;
        m36423a();
    }

    public void setDialog(Dialog dialog) {
        this.f1375d = dialog;
    }
}
