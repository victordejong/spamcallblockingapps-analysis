package com.aotter.net.trek.ads.video;

import android.view.View;
import com.aotter.net.trek.ads.interfaces.InstreamVideoListener;
/* renamed from: com.aotter.net.trek.ads.video.g */
/* loaded from: classes-dex2jar.jar:com/aotter/net/trek/ads/video/g.class */
public class View$OnClickListenerC1684g implements View.OnClickListener {

    /* renamed from: a */
    public final /* synthetic */ NativeVideoViewController f1261a;

    public View$OnClickListenerC1684g(NativeVideoViewController nativeVideoViewController) {
        this.f1261a = nativeVideoViewController;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        InstreamVideoListener instreamVideoListener;
        InstreamVideoListener instreamVideoListener2;
        instreamVideoListener = this.f1261a.f1251v;
        if (instreamVideoListener != null) {
            instreamVideoListener2 = this.f1261a.f1251v;
            instreamVideoListener2.onInstreamVideoClosed();
        }
        this.f1261a.m36527g().onFinish();
    }
}
