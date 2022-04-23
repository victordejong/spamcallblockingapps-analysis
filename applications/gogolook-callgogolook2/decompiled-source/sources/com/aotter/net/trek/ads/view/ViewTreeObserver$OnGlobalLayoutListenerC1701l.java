package com.aotter.net.trek.ads.view;

import android.os.Build;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
/* renamed from: com.aotter.net.trek.ads.view.l */
/* loaded from: classes-dex2jar.jar:com/aotter/net/trek/ads/view/l.class */
public class ViewTreeObserver$OnGlobalLayoutListenerC1701l implements ViewTreeObserver.OnGlobalLayoutListener {

    /* renamed from: a */
    public final /* synthetic */ ViewGroup.LayoutParams f1389a;

    /* renamed from: b */
    public final /* synthetic */ ViewTreeObserver f1390b;

    /* renamed from: c */
    public final /* synthetic */ NativeVideoView f1391c;

    public ViewTreeObserver$OnGlobalLayoutListenerC1701l(NativeVideoView nativeVideoView, ViewGroup.LayoutParams layoutParams, ViewTreeObserver viewTreeObserver) {
        this.f1391c = nativeVideoView;
        this.f1389a = layoutParams;
        this.f1390b = viewTreeObserver;
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public void onGlobalLayout() {
        TextureVideoView textureVideoView;
        TextureVideoView textureVideoView2;
        textureVideoView = this.f1391c.f1281d;
        this.f1389a.height = (textureVideoView.getMeasuredWidth() / 16) * 9;
        textureVideoView2 = this.f1391c.f1281d;
        textureVideoView2.setLayoutParams(this.f1389a);
        if (Build.VERSION.SDK_INT >= 16) {
            if (this.f1390b.isAlive()) {
                this.f1390b.removeOnGlobalLayoutListener(this);
            }
        } else if (this.f1390b.isAlive()) {
            this.f1390b.removeGlobalOnLayoutListener(this);
        }
    }
}
