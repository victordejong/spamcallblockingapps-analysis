package com.bytedance.sdk.openadsdk.component.b;

import android.content.Context;
import android.view.View;
import com.bytedance.sdk.openadsdk.AdSlot;
import com.bytedance.sdk.openadsdk.TTFeedAd;
import com.bytedance.sdk.openadsdk.core.e.i;
import com.bytedance.sdk.openadsdk.core.f.a;
import com.bytedance.sdk.openadsdk.core.n;
import com.bytedance.sdk.openadsdk.core.video.nativevideo.NativeVideoTsView;
import com.bytedance.sdk.openadsdk.core.video.nativevideo.c;
import com.bytedance.sdk.openadsdk.multipro.b.a;
import com.bytedance.sdk.openadsdk.utils.ab;
import com.bytedance.sdk.openadsdk.utils.af;
import com.bytedance.sdk.openadsdk.utils.t;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/component/b/c.class */
public class c extends a implements TTFeedAd, c.b, c.AbstractC0169c, a.AbstractC0181a {

    /* renamed from: d  reason: collision with root package name */
    int f8591d;
    AdSlot e;
    int f;
    private TTFeedAd.VideoAdListener m;

    /* renamed from: b  reason: collision with root package name */
    boolean f8589b = false;

    /* renamed from: c  reason: collision with root package name */
    boolean f8590c = true;

    /* renamed from: a  reason: collision with root package name */
    com.bytedance.sdk.openadsdk.multipro.b.a f8588a = new com.bytedance.sdk.openadsdk.multipro.b.a();

    /* JADX INFO: Access modifiers changed from: package-private */
    public c(Context context, i iVar, int i) {
        super(context, iVar, i);
        this.f = i;
        int d2 = af.d(this.h.S());
        this.f8591d = d2;
        a(d2);
        a("embeded_ad");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public c(Context context, i iVar, int i, AdSlot adSlot) {
        super(context, iVar, i);
        this.f = i;
        this.e = adSlot;
        int d2 = af.d(this.h.S());
        this.f8591d = d2;
        a(d2);
        a("embeded_ad");
    }

    private void a(int i) {
        int c2 = n.h().c(i);
        if (3 == c2) {
            this.f8589b = false;
            this.f8590c = false;
        } else if (1 == c2 && t.d(this.i)) {
            this.f8589b = false;
            this.f8590c = true;
        } else if (2 == c2) {
            if (t.e(this.i) || t.d(this.i)) {
                this.f8589b = false;
                this.f8590c = true;
            }
        } else if (4 == c2) {
            this.f8589b = true;
        }
    }

    public com.bytedance.sdk.openadsdk.multipro.b.a a() {
        return this.f8588a;
    }

    public void a(int i, int i2) {
        TTFeedAd.VideoAdListener videoAdListener = this.m;
        if (videoAdListener != null) {
            videoAdListener.onVideoError(i, i2);
        }
    }

    public void a(long j, long j2) {
        TTFeedAd.VideoAdListener videoAdListener = this.m;
        if (videoAdListener != null) {
            videoAdListener.onProgressUpdate(j, j2);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.f.a
    public void a(String str) {
        super.a(str);
    }

    public void c() {
        TTFeedAd.VideoAdListener videoAdListener = this.m;
        if (videoAdListener != null) {
            videoAdListener.onVideoAdContinuePlay(this);
        }
    }

    public void d() {
        TTFeedAd.VideoAdListener videoAdListener = this.m;
        if (videoAdListener != null) {
            videoAdListener.onVideoAdPaused(this);
        }
    }

    public void d_() {
        TTFeedAd.VideoAdListener videoAdListener = this.m;
        if (videoAdListener != null) {
            videoAdListener.onVideoAdComplete(this);
        }
    }

    public void e() {
        TTFeedAd.VideoAdListener videoAdListener = this.m;
        if (videoAdListener != null) {
            videoAdListener.onVideoAdStartPlay(this);
        }
    }

    public void f() {
        TTFeedAd.VideoAdListener videoAdListener = this.m;
        if (videoAdListener != null) {
            videoAdListener.onVideoLoad(this);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.f.a, com.bytedance.sdk.openadsdk.TTNativeAd
    public View getAdView() {
        NativeVideoTsView nativeVideoTsView;
        if (this.h == null || this.i == null) {
            return null;
        }
        if (i.d(this.h)) {
            try {
                nativeVideoTsView = new NativeVideoTsView(this.i, this.h);
                if (ab.a(this.h)) {
                    nativeVideoTsView.setVideoAdClickListener(new NativeVideoTsView.b() { // from class: com.bytedance.sdk.openadsdk.component.b.c.1
                        @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.NativeVideoTsView.b
                        public void a(View view, int i) {
                            if (c.this.g != null) {
                                c.this.g.a(view, i);
                            }
                        }
                    });
                }
                nativeVideoTsView.setControllerStatusCallBack(new NativeVideoTsView.a() { // from class: com.bytedance.sdk.openadsdk.component.b.c.2
                    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.NativeVideoTsView.a
                    public void a(boolean z, long j, long j2, long j3, boolean z2) {
                        c.this.f8588a.f9888a = z;
                        c.this.f8588a.e = j;
                        c.this.f8588a.f = j2;
                        c.this.f8588a.g = j3;
                        c.this.f8588a.f9891d = z2;
                    }
                });
                nativeVideoTsView.setVideoAdLoadListener(this);
                nativeVideoTsView.setVideoAdInteractionListener(this);
                if (5 == this.f) {
                    nativeVideoTsView.setIsAutoPlay(this.f8589b ? this.e.isAutoPlay() : this.f8590c);
                } else {
                    nativeVideoTsView.setIsAutoPlay(this.f8590c);
                }
                nativeVideoTsView.setIsQuiet(n.h().a(this.f8591d));
            } catch (Exception e) {
            }
            if (i.d(this.h) || nativeVideoTsView == null || !nativeVideoTsView.a(0L, true, false)) {
                return null;
            }
            return nativeVideoTsView;
        }
        nativeVideoTsView = null;
        return i.d(this.h) ? null : null;
    }

    public double getVideoDuration() {
        if (this.h == null || this.h.B() == null) {
            return 0.0d;
        }
        return this.h.B().e();
    }

    public void setVideoAdListener(TTFeedAd.VideoAdListener videoAdListener) {
        this.m = videoAdListener;
    }
}
