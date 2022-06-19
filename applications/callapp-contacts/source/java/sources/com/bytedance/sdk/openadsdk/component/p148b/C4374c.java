package com.bytedance.sdk.openadsdk.component.p148b;

import android.content.Context;
import android.view.View;
import com.bytedance.sdk.openadsdk.AdSlot;
import com.bytedance.sdk.openadsdk.TTFeedAd;
import com.bytedance.sdk.openadsdk.core.C4600n;
import com.bytedance.sdk.openadsdk.core.p154e.C4557i;
import com.bytedance.sdk.openadsdk.core.p155f.C4567a;
import com.bytedance.sdk.openadsdk.core.video.nativevideo.AbstractC4719c;
import com.bytedance.sdk.openadsdk.core.video.nativevideo.NativeVideoTsView;
import com.bytedance.sdk.openadsdk.multipro.p190b.C5095a;
import com.bytedance.sdk.openadsdk.utils.C5434ab;
import com.bytedance.sdk.openadsdk.utils.C5438af;
import com.bytedance.sdk.openadsdk.utils.C5482t;
/* renamed from: com.bytedance.sdk.openadsdk.component.b.c */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/component/b/c.class */
public class C4374c extends C4567a implements TTFeedAd, AbstractC4719c.AbstractC4721b, AbstractC4719c.AbstractC4722c, C5095a.AbstractC5096a {

    /* renamed from: d */
    int f16069d;

    /* renamed from: e */
    AdSlot f16070e;

    /* renamed from: f */
    int f16071f;

    /* renamed from: m */
    private TTFeedAd.VideoAdListener f16072m;

    /* renamed from: b */
    boolean f16067b = false;

    /* renamed from: c */
    boolean f16068c = true;

    /* renamed from: a */
    C5095a f16066a = new C5095a();

    public C4374c(Context context, C4557i c4557i, int i) {
        super(context, c4557i, i);
        this.f16071f = i;
        int m32278d = C5438af.m32278d(this.f16639h.m35228S());
        this.f16069d = m32278d;
        m35677a(m32278d);
        mo35032a("embeded_ad");
    }

    public C4374c(Context context, C4557i c4557i, int i, AdSlot adSlot) {
        super(context, c4557i, i);
        this.f16071f = i;
        this.f16070e = adSlot;
        int m32278d = C5438af.m32278d(this.f16639h.m35228S());
        this.f16069d = m32278d;
        m35677a(m32278d);
        mo35032a("embeded_ad");
    }

    /* renamed from: a */
    private void m35677a(int i) {
        int m34902c = C4600n.m34805h().m34902c(i);
        if (3 == m34902c) {
            this.f16067b = false;
            this.f16068c = false;
        } else if (1 == m34902c && C5482t.m32087d(this.f16640i)) {
            this.f16067b = false;
            this.f16068c = true;
        } else if (2 != m34902c) {
            if (4 != m34902c) {
                return;
            }
            this.f16067b = true;
        } else if (!C5482t.m32086e(this.f16640i) && !C5482t.m32087d(this.f16640i)) {
        } else {
            this.f16067b = false;
            this.f16068c = true;
        }
    }

    /* renamed from: a */
    public C5095a mo33081a() {
        return this.f16066a;
    }

    /* renamed from: a */
    public void mo34355a(int i, int i2) {
        TTFeedAd.VideoAdListener videoAdListener = this.f16072m;
        if (videoAdListener != null) {
            videoAdListener.onVideoError(i, i2);
        }
    }

    /* renamed from: a */
    public void mo34360a(long j, long j2) {
        TTFeedAd.VideoAdListener videoAdListener = this.f16072m;
        if (videoAdListener != null) {
            videoAdListener.onProgressUpdate(j, j2);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.p155f.C4567a
    /* renamed from: a */
    public void mo35032a(String str) {
        super.mo35032a(str);
    }

    /* renamed from: c */
    public void mo34359c() {
        TTFeedAd.VideoAdListener videoAdListener = this.f16072m;
        if (videoAdListener != null) {
            videoAdListener.onVideoAdContinuePlay(this);
        }
    }

    /* renamed from: d */
    public void mo34358d() {
        TTFeedAd.VideoAdListener videoAdListener = this.f16072m;
        if (videoAdListener != null) {
            videoAdListener.onVideoAdPaused(this);
        }
    }

    /* renamed from: d_ */
    public void mo34357d_() {
        TTFeedAd.VideoAdListener videoAdListener = this.f16072m;
        if (videoAdListener != null) {
            videoAdListener.onVideoAdComplete(this);
        }
    }

    /* renamed from: e */
    public void mo34356e() {
        TTFeedAd.VideoAdListener videoAdListener = this.f16072m;
        if (videoAdListener != null) {
            videoAdListener.onVideoAdStartPlay(this);
        }
    }

    /* renamed from: f */
    public void mo34354f() {
        TTFeedAd.VideoAdListener videoAdListener = this.f16072m;
        if (videoAdListener != null) {
            videoAdListener.onVideoLoad(this);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.p155f.C4567a, com.bytedance.sdk.openadsdk.TTNativeAd
    public View getAdView() {
        NativeVideoTsView nativeVideoTsView;
        if (this.f16639h == null || this.f16640i == null) {
            return null;
        }
        if (C4557i.m35180d(this.f16639h)) {
            try {
                nativeVideoTsView = new NativeVideoTsView(this.f16640i, this.f16639h);
                if (C5434ab.m32325a(this.f16639h)) {
                    nativeVideoTsView.setVideoAdClickListener(new NativeVideoTsView.AbstractC4715b() { // from class: com.bytedance.sdk.openadsdk.component.b.c.1
                        @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.NativeVideoTsView.AbstractC4715b
                        /* renamed from: a */
                        public void mo34243a(View view, int i) {
                            if (C4374c.this.f16638g != null) {
                                C4374c.this.f16638g.m34825a(view, i);
                            }
                        }
                    });
                }
                nativeVideoTsView.setControllerStatusCallBack(new NativeVideoTsView.AbstractC4714a() { // from class: com.bytedance.sdk.openadsdk.component.b.c.2
                    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.NativeVideoTsView.AbstractC4714a
                    /* renamed from: a */
                    public void mo34366a(boolean z, long j, long j2, long j3, boolean z2) {
                        C4374c.this.f16066a.f18359a = z;
                        C4374c.this.f16066a.f18363e = j;
                        C4374c.this.f16066a.f18364f = j2;
                        C4374c.this.f16066a.f18365g = j3;
                        C4374c.this.f16066a.f18362d = z2;
                    }
                });
                nativeVideoTsView.setVideoAdLoadListener(this);
                nativeVideoTsView.setVideoAdInteractionListener(this);
                if (5 == this.f16071f) {
                    nativeVideoTsView.setIsAutoPlay(this.f16067b ? this.f16070e.isAutoPlay() : this.f16068c);
                } else {
                    nativeVideoTsView.setIsAutoPlay(this.f16068c);
                }
                nativeVideoTsView.setIsQuiet(C4600n.m34805h().m34914a(this.f16069d));
            } catch (Exception e) {
            }
            if (!C4557i.m35180d(this.f16639h) && nativeVideoTsView != null && nativeVideoTsView.m34393a(0L, true, false)) {
                return nativeVideoTsView;
            }
            return null;
        }
        nativeVideoTsView = null;
        return !C4557i.m35180d(this.f16639h) ? null : null;
    }

    public double getVideoDuration() {
        if (this.f16639h == null || this.f16639h.m35245B() == null) {
            return 0.0d;
        }
        return this.f16639h.m35245B().m35049e();
    }

    public void setVideoAdListener(TTFeedAd.VideoAdListener videoAdListener) {
        this.f16072m = videoAdListener;
    }
}
