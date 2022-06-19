package com.explorestack.iab.mraid;

import android.app.Activity;
import android.content.Context;
import android.view.ViewGroup;
import com.explorestack.iab.mraid.MraidActivity;
import com.explorestack.iab.mraid.MraidView;
import com.explorestack.iab.utils.AbstractC9588c;
import com.explorestack.iab.utils.C9593h;
import java.util.concurrent.atomic.AtomicInteger;
/* loaded from: classes2-dex2jar.jar:com/explorestack/iab/mraid/MraidInterstitial.class */
public class MraidInterstitial {

    /* renamed from: f */
    static final /* synthetic */ boolean f32437f = true;

    /* renamed from: g */
    private static final String f32438g = "MraidInterstitial";

    /* renamed from: h */
    private static final AtomicInteger f32439h = new AtomicInteger(0);

    /* renamed from: a */
    MraidInterstitialListener f32440a;

    /* renamed from: b */
    MraidView f32441b;

    /* renamed from: c */
    boolean f32442c;

    /* renamed from: d */
    boolean f32443d;

    /* renamed from: i */
    private boolean f32445i;

    /* renamed from: id */
    public final int f32446id = f32439h.getAndIncrement();

    /* renamed from: j */
    private boolean f32447j = true;

    /* renamed from: k */
    private boolean f32448k = false;

    /* renamed from: e */
    final MraidViewListener f32444e = new MraidViewListener() { // from class: com.explorestack.iab.mraid.MraidInterstitial.1
        @Override // com.explorestack.iab.mraid.MraidViewListener
        public final void onClose(MraidView mraidView) {
            MraidLog.m24185d(MraidInterstitial.f32438g, "ViewListener: onClose");
            MraidInterstitial.m24191c(MraidInterstitial.this);
            MraidInterstitial.this.m24198a();
        }

        @Override // com.explorestack.iab.mraid.MraidViewListener
        public final void onError(MraidView mraidView, int i) {
            String str = MraidInterstitial.f32438g;
            MraidLog.m24185d(str, "ViewListener: onError (" + i + ")");
            MraidInterstitial.m24191c(MraidInterstitial.this);
            MraidInterstitial mraidInterstitial = MraidInterstitial.this;
            mraidInterstitial.f32442c = false;
            mraidInterstitial.f32443d = true;
            if (mraidInterstitial.f32440a != null) {
                mraidInterstitial.f32440a.onError(mraidInterstitial, i);
            }
            mraidInterstitial.destroy();
        }

        @Override // com.explorestack.iab.mraid.MraidViewListener
        public final void onExpand(MraidView mraidView) {
        }

        @Override // com.explorestack.iab.mraid.MraidViewListener
        public final void onLoaded(MraidView mraidView) {
            MraidLog.m24185d(MraidInterstitial.f32438g, "ViewListener: onLoaded");
            MraidInterstitial.this.f32442c = true;
            if (MraidInterstitial.this.f32440a != null) {
                MraidInterstitial.this.f32440a.onLoaded(MraidInterstitial.this);
            }
        }

        @Override // com.explorestack.iab.mraid.MraidViewListener
        public final void onOpenBrowser(MraidView mraidView, String str, AbstractC9588c abstractC9588c) {
            String str2 = MraidInterstitial.f32438g;
            MraidLog.m24185d(str2, "ViewListener: onOpenBrowser (" + str + ")");
            if (MraidInterstitial.this.f32440a != null) {
                MraidInterstitial.this.f32440a.onOpenBrowser(MraidInterstitial.this, str, abstractC9588c);
            }
        }

        @Override // com.explorestack.iab.mraid.MraidViewListener
        public final void onPlayVideo(MraidView mraidView, String str) {
            String str2 = MraidInterstitial.f32438g;
            MraidLog.m24185d(str2, "ViewListener: onPlayVideo (" + str + ")");
            if (MraidInterstitial.this.f32440a != null) {
                MraidInterstitial.this.f32440a.onPlayVideo(MraidInterstitial.this, str);
            }
        }

        @Override // com.explorestack.iab.mraid.MraidViewListener
        public final void onShown(MraidView mraidView) {
            MraidLog.m24185d(MraidInterstitial.f32438g, "ViewListener: onShown");
            if (MraidInterstitial.this.f32440a != null) {
                MraidInterstitial.this.f32440a.onShown(MraidInterstitial.this);
            }
        }
    };

    /* loaded from: classes2-dex2jar.jar:com/explorestack/iab/mraid/MraidInterstitial$Builder.class */
    public class Builder {

        /* renamed from: b */
        private final MraidView.C9555a f32451b = new MraidView.C9555a(EnumC9563c.INTERSTITIAL);

        public Builder() {
            MraidInterstitial.this = r6;
        }

        public MraidInterstitial build(Context context) {
            this.f32451b.f32474e = MraidInterstitial.this.f32444e;
            MraidInterstitial.this.f32441b = this.f32451b.m24184a(context);
            return MraidInterstitial.this;
        }

        public Builder forceUseNativeCloseButton(boolean z) {
            this.f32451b.f32483n = z;
            return this;
        }

        public Builder setBaseUrl(String str) {
            this.f32451b.f32471b = str;
            return this;
        }

        public Builder setCloseStyle(C9593h c9593h) {
            this.f32451b.f32475f = c9593h;
            return this;
        }

        public Builder setCloseTime(float f) {
            this.f32451b.f32479j = f;
            return this;
        }

        public Builder setCountDownStyle(C9593h c9593h) {
            this.f32451b.f32476g = c9593h;
            return this;
        }

        public Builder setDurationSec(float f) {
            this.f32451b.f32480k = f;
            return this;
        }

        public Builder setIsTag(boolean z) {
            this.f32451b.f32481l = z;
            return this;
        }

        public Builder setListener(MraidInterstitialListener mraidInterstitialListener) {
            MraidInterstitial.this.f32440a = mraidInterstitialListener;
            return this;
        }

        public Builder setLoadingStyle(C9593h c9593h) {
            this.f32451b.f32477h = c9593h;
            return this;
        }

        public Builder setPreload(boolean z) {
            this.f32451b.f32482m = z;
            return this;
        }

        public Builder setProductLink(String str) {
            this.f32451b.f32472c = str;
            return this;
        }

        public Builder setProgressStyle(C9593h c9593h) {
            this.f32451b.f32478i = c9593h;
            return this;
        }

        public Builder setR1(boolean z) {
            this.f32451b.f32484o = z;
            return this;
        }

        public Builder setR2(boolean z) {
            this.f32451b.f32485p = z;
            return this;
        }

        public Builder setSupportedNativeFeatures(String[] strArr) {
            this.f32451b.f32473d = strArr;
            return this;
        }
    }

    private MraidInterstitial() {
    }

    /* renamed from: c */
    static /* synthetic */ void m24191c(MraidInterstitial mraidInterstitial) {
        Activity peekActivity;
        if (!mraidInterstitial.f32448k || (peekActivity = mraidInterstitial.f32441b.peekActivity()) == null) {
            return;
        }
        peekActivity.finish();
        peekActivity.overridePendingTransition(0, 0);
    }

    public static Builder newBuilder() {
        return new Builder();
    }

    /* renamed from: a */
    public final void m24198a() {
        if (isClosed() || isReceivedError()) {
            return;
        }
        this.f32442c = false;
        this.f32445i = true;
        MraidInterstitialListener mraidInterstitialListener = this.f32440a;
        if (mraidInterstitialListener != null) {
            mraidInterstitialListener.onClose(this);
        }
        if (!this.f32447j) {
            return;
        }
        destroy();
    }

    /* renamed from: a */
    public final void m24197a(Activity activity, ViewGroup viewGroup, boolean z, boolean z2) {
        if (!isReady()) {
            if (activity != null && z) {
                activity.finish();
                activity.overridePendingTransition(0, 0);
            }
            m24194b();
            MraidLog.m24188a(f32438g, "Show failed: interstitial is not ready");
        } else if (!f32437f && this.f32441b == null) {
            throw new AssertionError();
        } else {
            this.f32447j = z2;
            this.f32448k = z;
            viewGroup.addView(this.f32441b, new ViewGroup.LayoutParams(-1, -1));
            this.f32441b.show(activity);
        }
    }

    /* renamed from: b */
    public final void m24194b() {
        MraidInterstitialListener mraidInterstitialListener = this.f32440a;
        if (mraidInterstitialListener != null) {
            mraidInterstitialListener.onError(this, 1);
        }
    }

    public boolean canBeClosed() {
        MraidView mraidView = this.f32441b;
        return mraidView == null || mraidView.canBeClosed() || isReceivedError();
    }

    public void destroy() {
        MraidLog.m24185d(f32438g, "destroy");
        this.f32442c = false;
        this.f32440a = null;
        MraidView mraidView = this.f32441b;
        if (mraidView != null) {
            mraidView.destroy();
            this.f32441b = null;
        }
    }

    public void dispatchClose() {
        if (this.f32441b == null || !canBeClosed()) {
            return;
        }
        this.f32441b.handleClose();
    }

    public boolean isClosed() {
        return this.f32445i;
    }

    public boolean isReady() {
        return this.f32442c && this.f32441b != null;
    }

    public boolean isReceivedError() {
        return this.f32443d;
    }

    public void load(String str) {
        MraidView mraidView = this.f32441b;
        if (mraidView != null) {
            mraidView.load(str);
            return;
        }
        throw new IllegalStateException("MraidView not created (mraidView == null)");
    }

    public void show(Context context, MraidActivity.MraidType mraidType) {
        MraidActivity.show(context, this, mraidType);
    }

    public void showInView(ViewGroup viewGroup, boolean z) {
        m24197a(null, viewGroup, false, z);
    }
}
