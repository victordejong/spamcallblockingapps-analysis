package com.bytedance.sdk.openadsdk.component.p148b;

import android.content.Context;
import android.graphics.Bitmap;
import android.view.View;
import com.bytedance.sdk.openadsdk.TTDrawFeedAd;
import com.bytedance.sdk.openadsdk.TTFeedAd;
import com.bytedance.sdk.openadsdk.core.C4600n;
import com.bytedance.sdk.openadsdk.core.p154e.C4557i;
import com.bytedance.sdk.openadsdk.core.video.nativevideo.NativeDrawVideoTsView;
import com.bytedance.sdk.openadsdk.core.video.nativevideo.NativeVideoTsView;
import com.bytedance.sdk.openadsdk.multipro.p190b.C5095a;
import com.bytedance.sdk.openadsdk.utils.C5438af;
/* renamed from: com.bytedance.sdk.openadsdk.component.b.b */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/component/b/b.class */
public class C4372b extends C4374c implements TTDrawFeedAd {

    /* renamed from: m */
    private boolean f16061m;

    /* renamed from: n */
    private Bitmap f16062n;

    /* renamed from: o */
    private int f16063o;

    /* renamed from: p */
    private TTDrawFeedAd.DrawVideoListener f16064p;

    public C4372b(Context context, C4557i c4557i, int i) {
        super(context, c4557i, i);
        mo35032a("embeded_ad");
    }

    /* JADX WARN: Code restructure failed: missing block: B:8:0x0022, code lost:
        if (com.bytedance.sdk.openadsdk.utils.C5482t.m32087d(r3.f16640i) == false) goto L9;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean m35679a(int r4) {
        /*
            r3 = this;
            com.bytedance.sdk.openadsdk.core.h.e r0 = com.bytedance.sdk.openadsdk.core.C4600n.m34805h()
            r1 = r4
            int r0 = r0.m34902c(r1)
            r4 = r0
            r0 = 1
            r5 = r0
            r0 = 3
            r1 = r4
            if (r0 != r1) goto L14
        Lf:
            r0 = 0
            r6 = r0
            goto L42
        L14:
            r0 = 1
            r1 = r4
            if (r0 != r1) goto L25
            r0 = r5
            r6 = r0
            r0 = r3
            android.content.Context r0 = r0.f16640i
            boolean r0 = com.bytedance.sdk.openadsdk.utils.C5482t.m32087d(r0)
            if (r0 != 0) goto L42
        L25:
            r0 = 2
            r1 = r4
            if (r0 != r1) goto Lf
            r0 = r5
            r6 = r0
            r0 = r3
            android.content.Context r0 = r0.f16640i
            boolean r0 = com.bytedance.sdk.openadsdk.utils.C5482t.m32086e(r0)
            if (r0 != 0) goto L42
            r0 = r3
            android.content.Context r0 = r0.f16640i
            boolean r0 = com.bytedance.sdk.openadsdk.utils.C5482t.m32087d(r0)
            if (r0 == 0) goto Lf
            r0 = r5
            r6 = r0
        L42:
            r0 = r6
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.openadsdk.component.p148b.C4372b.m35679a(int):boolean");
    }

    /* renamed from: g */
    private void m35678g() {
        int i = this.f16063o;
        if (i >= 200) {
            this.f16063o = 200;
        } else if (i > 20) {
        } else {
            this.f16063o = 20;
        }
    }

    @Override // com.bytedance.sdk.openadsdk.component.p148b.C4374c, com.bytedance.sdk.openadsdk.multipro.p190b.C5095a.AbstractC5096a
    /* renamed from: a */
    public /* bridge */ /* synthetic */ C5095a mo33081a() {
        return super.mo33081a();
    }

    @Override // com.bytedance.sdk.openadsdk.component.p148b.C4374c, com.bytedance.sdk.openadsdk.core.video.nativevideo.AbstractC4719c.AbstractC4722c
    /* renamed from: a */
    public /* bridge */ /* synthetic */ void mo34355a(int i, int i2) {
        super.mo34355a(i, i2);
    }

    @Override // com.bytedance.sdk.openadsdk.component.p148b.C4374c, com.bytedance.sdk.openadsdk.core.video.nativevideo.AbstractC4719c.AbstractC4721b
    /* renamed from: a */
    public /* bridge */ /* synthetic */ void mo34360a(long j, long j2) {
        super.mo34360a(j, j2);
    }

    @Override // com.bytedance.sdk.openadsdk.component.p148b.C4374c, com.bytedance.sdk.openadsdk.core.p155f.C4567a
    /* renamed from: a */
    public void mo35032a(String str) {
        super.mo35032a(str);
    }

    @Override // com.bytedance.sdk.openadsdk.component.p148b.C4374c, com.bytedance.sdk.openadsdk.core.video.nativevideo.AbstractC4719c.AbstractC4721b
    /* renamed from: c */
    public /* bridge */ /* synthetic */ void mo34359c() {
        super.mo34359c();
    }

    @Override // com.bytedance.sdk.openadsdk.component.p148b.C4374c, com.bytedance.sdk.openadsdk.core.video.nativevideo.AbstractC4719c.AbstractC4721b
    /* renamed from: d */
    public /* bridge */ /* synthetic */ void mo34358d() {
        super.mo34358d();
    }

    @Override // com.bytedance.sdk.openadsdk.component.p148b.C4374c, com.bytedance.sdk.openadsdk.core.video.nativevideo.AbstractC4719c.AbstractC4721b
    /* renamed from: d_ */
    public /* bridge */ /* synthetic */ void mo34357d_() {
        super.mo34357d_();
    }

    @Override // com.bytedance.sdk.openadsdk.component.p148b.C4374c, com.bytedance.sdk.openadsdk.core.video.nativevideo.AbstractC4719c.AbstractC4721b
    /* renamed from: e */
    public /* bridge */ /* synthetic */ void mo34356e() {
        super.mo34356e();
    }

    @Override // com.bytedance.sdk.openadsdk.component.p148b.C4374c, com.bytedance.sdk.openadsdk.core.video.nativevideo.AbstractC4719c.AbstractC4722c
    /* renamed from: f */
    public /* bridge */ /* synthetic */ void mo34354f() {
        super.mo34354f();
    }

    @Override // com.bytedance.sdk.openadsdk.component.p148b.C4374c, com.bytedance.sdk.openadsdk.core.p155f.C4567a, com.bytedance.sdk.openadsdk.TTNativeAd
    public View getAdView() {
        NativeDrawVideoTsView nativeDrawVideoTsView;
        if (this.f16639h == null || this.f16640i == null) {
            return null;
        }
        if (C4557i.m35180d(this.f16639h)) {
            try {
                nativeDrawVideoTsView = new NativeDrawVideoTsView(this.f16640i, this.f16639h);
                nativeDrawVideoTsView.setControllerStatusCallBack(new NativeVideoTsView.AbstractC4714a() { // from class: com.bytedance.sdk.openadsdk.component.b.b.1
                    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.NativeVideoTsView.AbstractC4714a
                    /* renamed from: a */
                    public void mo34366a(boolean z, long j, long j2, long j3, boolean z2) {
                        C4372b.this.f16066a.f18359a = z;
                        C4372b.this.f16066a.f18363e = j;
                        C4372b.this.f16066a.f18364f = j2;
                        C4372b.this.f16066a.f18365g = j3;
                        C4372b.this.f16066a.f18362d = z2;
                    }
                });
                nativeDrawVideoTsView.setVideoAdLoadListener(this);
                nativeDrawVideoTsView.setVideoAdInteractionListener(this);
                int m32278d = C5438af.m32278d(this.f16639h.m35228S());
                nativeDrawVideoTsView.setIsAutoPlay(m35679a(m32278d));
                nativeDrawVideoTsView.setIsQuiet(C4600n.m34805h().m34914a(m32278d));
                nativeDrawVideoTsView.setCanInterruptVideoPlay(this.f16061m);
                Bitmap bitmap = this.f16062n;
                if (bitmap != null) {
                    nativeDrawVideoTsView.m34396a(bitmap, this.f16063o);
                }
                nativeDrawVideoTsView.setDrawVideoListener(this.f16064p);
            } catch (Exception e) {
            }
            if (!C4557i.m35180d(this.f16639h) && nativeDrawVideoTsView != null && nativeDrawVideoTsView.m34393a(0L, true, false)) {
                return nativeDrawVideoTsView;
            }
            return null;
        }
        nativeDrawVideoTsView = null;
        return !C4557i.m35180d(this.f16639h) ? null : null;
    }

    @Override // com.bytedance.sdk.openadsdk.component.p148b.C4374c, com.bytedance.sdk.openadsdk.TTFeedAd
    public /* bridge */ /* synthetic */ double getVideoDuration() {
        return super.getVideoDuration();
    }

    @Override // com.bytedance.sdk.openadsdk.TTDrawFeedAd
    public void setCanInterruptVideoPlay(boolean z) {
        this.f16061m = z;
    }

    @Override // com.bytedance.sdk.openadsdk.TTDrawFeedAd
    public void setDrawVideoListener(TTDrawFeedAd.DrawVideoListener drawVideoListener) {
        this.f16064p = drawVideoListener;
    }

    @Override // com.bytedance.sdk.openadsdk.TTDrawFeedAd
    public void setPauseIcon(Bitmap bitmap, int i) {
        this.f16062n = bitmap;
        this.f16063o = i;
        m35678g();
    }

    @Override // com.bytedance.sdk.openadsdk.component.p148b.C4374c, com.bytedance.sdk.openadsdk.TTFeedAd
    public /* bridge */ /* synthetic */ void setVideoAdListener(TTFeedAd.VideoAdListener videoAdListener) {
        super.setVideoAdListener(videoAdListener);
    }
}
