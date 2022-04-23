package com.bytedance.sdk.openadsdk.component.b;

import android.content.Context;
import android.graphics.Bitmap;
import android.view.View;
import com.bytedance.sdk.openadsdk.TTDrawFeedAd;
import com.bytedance.sdk.openadsdk.TTFeedAd;
import com.bytedance.sdk.openadsdk.core.e.i;
import com.bytedance.sdk.openadsdk.core.n;
import com.bytedance.sdk.openadsdk.core.video.nativevideo.NativeDrawVideoTsView;
import com.bytedance.sdk.openadsdk.core.video.nativevideo.NativeVideoTsView;
import com.bytedance.sdk.openadsdk.multipro.b.a;
import com.bytedance.sdk.openadsdk.utils.af;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/component/b/b.class */
public class b extends c implements TTDrawFeedAd {
    private boolean m;
    private Bitmap n;
    private int o;
    private TTDrawFeedAd.DrawVideoListener p;

    public b(Context context, i iVar, int i) {
        super(context, iVar, i);
        a("embeded_ad");
    }

    /* JADX WARN: Code restructure failed: missing block: B:8:0x0022, code lost:
        if (com.bytedance.sdk.openadsdk.utils.t.d(r3.i) == false) goto L_0x0025;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean a(int r4) {
        /*
            r3 = this;
            com.bytedance.sdk.openadsdk.core.h.e r0 = com.bytedance.sdk.openadsdk.core.n.h()
            r1 = r4
            int r0 = r0.c(r1)
            r4 = r0
            r0 = 1
            r5 = r0
            r0 = 3
            r1 = r4
            if (r0 != r1) goto L_0x0014
        L_0x000f:
            r0 = 0
            r6 = r0
            goto L_0x0042
        L_0x0014:
            r0 = 1
            r1 = r4
            if (r0 != r1) goto L_0x0025
            r0 = r5
            r6 = r0
            r0 = r3
            android.content.Context r0 = r0.i
            boolean r0 = com.bytedance.sdk.openadsdk.utils.t.d(r0)
            if (r0 != 0) goto L_0x0042
        L_0x0025:
            r0 = 2
            r1 = r4
            if (r0 != r1) goto L_0x000f
            r0 = r5
            r6 = r0
            r0 = r3
            android.content.Context r0 = r0.i
            boolean r0 = com.bytedance.sdk.openadsdk.utils.t.e(r0)
            if (r0 != 0) goto L_0x0042
            r0 = r3
            android.content.Context r0 = r0.i
            boolean r0 = com.bytedance.sdk.openadsdk.utils.t.d(r0)
            if (r0 == 0) goto L_0x000f
            r0 = r5
            r6 = r0
        L_0x0042:
            r0 = r6
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.openadsdk.component.b.b.a(int):boolean");
    }

    private void g() {
        int i = this.o;
        if (i >= 200) {
            this.o = 200;
        } else if (i <= 20) {
            this.o = 20;
        }
    }

    @Override // com.bytedance.sdk.openadsdk.component.b.c, com.bytedance.sdk.openadsdk.multipro.b.a.AbstractC0181a
    public /* bridge */ /* synthetic */ a a() {
        return super.a();
    }

    @Override // com.bytedance.sdk.openadsdk.component.b.c, com.bytedance.sdk.openadsdk.core.video.nativevideo.c.AbstractC0169c
    public /* bridge */ /* synthetic */ void a(int i, int i2) {
        super.a(i, i2);
    }

    @Override // com.bytedance.sdk.openadsdk.component.b.c, com.bytedance.sdk.openadsdk.core.video.nativevideo.c.b
    public /* bridge */ /* synthetic */ void a(long j, long j2) {
        super.a(j, j2);
    }

    @Override // com.bytedance.sdk.openadsdk.component.b.c, com.bytedance.sdk.openadsdk.core.f.a
    public void a(String str) {
        super.a(str);
    }

    @Override // com.bytedance.sdk.openadsdk.component.b.c, com.bytedance.sdk.openadsdk.core.video.nativevideo.c.b
    public /* bridge */ /* synthetic */ void c() {
        super.c();
    }

    @Override // com.bytedance.sdk.openadsdk.component.b.c, com.bytedance.sdk.openadsdk.core.video.nativevideo.c.b
    public /* bridge */ /* synthetic */ void d() {
        super.d();
    }

    @Override // com.bytedance.sdk.openadsdk.component.b.c, com.bytedance.sdk.openadsdk.core.video.nativevideo.c.b
    public /* bridge */ /* synthetic */ void d_() {
        super.d_();
    }

    @Override // com.bytedance.sdk.openadsdk.component.b.c, com.bytedance.sdk.openadsdk.core.video.nativevideo.c.b
    public /* bridge */ /* synthetic */ void e() {
        super.e();
    }

    @Override // com.bytedance.sdk.openadsdk.component.b.c, com.bytedance.sdk.openadsdk.core.video.nativevideo.c.AbstractC0169c
    public /* bridge */ /* synthetic */ void f() {
        super.f();
    }

    @Override // com.bytedance.sdk.openadsdk.component.b.c, com.bytedance.sdk.openadsdk.core.f.a, com.bytedance.sdk.openadsdk.TTNativeAd
    public View getAdView() {
        NativeDrawVideoTsView nativeDrawVideoTsView;
        if (this.h == null || this.i == null) {
            return null;
        }
        if (i.d(this.h)) {
            try {
                nativeDrawVideoTsView = new NativeDrawVideoTsView(this.i, this.h);
                nativeDrawVideoTsView.setControllerStatusCallBack(new NativeVideoTsView.a() { // from class: com.bytedance.sdk.openadsdk.component.b.b.1
                    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.NativeVideoTsView.a
                    public void a(boolean z, long j, long j2, long j3, boolean z2) {
                        b.this.f8588a.f9888a = z;
                        b.this.f8588a.e = j;
                        b.this.f8588a.f = j2;
                        b.this.f8588a.g = j3;
                        b.this.f8588a.f9891d = z2;
                    }
                });
                nativeDrawVideoTsView.setVideoAdLoadListener(this);
                nativeDrawVideoTsView.setVideoAdInteractionListener(this);
                int d2 = af.d(this.h.S());
                nativeDrawVideoTsView.setIsAutoPlay(a(d2));
                nativeDrawVideoTsView.setIsQuiet(n.h().a(d2));
                nativeDrawVideoTsView.setCanInterruptVideoPlay(this.m);
                Bitmap bitmap = this.n;
                if (bitmap != null) {
                    nativeDrawVideoTsView.a(bitmap, this.o);
                }
                nativeDrawVideoTsView.setDrawVideoListener(this.p);
            } catch (Exception e) {
            }
            if (i.d(this.h) || nativeDrawVideoTsView == null || !nativeDrawVideoTsView.a(0L, true, false)) {
                return null;
            }
            return nativeDrawVideoTsView;
        }
        nativeDrawVideoTsView = null;
        return i.d(this.h) ? null : null;
    }

    @Override // com.bytedance.sdk.openadsdk.component.b.c, com.bytedance.sdk.openadsdk.TTFeedAd
    public /* bridge */ /* synthetic */ double getVideoDuration() {
        return super.getVideoDuration();
    }

    @Override // com.bytedance.sdk.openadsdk.TTDrawFeedAd
    public void setCanInterruptVideoPlay(boolean z) {
        this.m = z;
    }

    @Override // com.bytedance.sdk.openadsdk.TTDrawFeedAd
    public void setDrawVideoListener(TTDrawFeedAd.DrawVideoListener drawVideoListener) {
        this.p = drawVideoListener;
    }

    @Override // com.bytedance.sdk.openadsdk.TTDrawFeedAd
    public void setPauseIcon(Bitmap bitmap, int i) {
        this.n = bitmap;
        this.o = i;
        g();
    }

    @Override // com.bytedance.sdk.openadsdk.component.b.c, com.bytedance.sdk.openadsdk.TTFeedAd
    public /* bridge */ /* synthetic */ void setVideoAdListener(TTFeedAd.VideoAdListener videoAdListener) {
        super.setVideoAdListener(videoAdListener);
    }
}
