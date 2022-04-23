package com.explorestack.iab.mraid;

import android.app.Activity;
import android.content.Context;
import android.view.ViewGroup;
import com.explorestack.iab.mraid.MraidActivity;
import com.explorestack.iab.mraid.MraidView;
import com.explorestack.iab.utils.c;
import com.explorestack.iab.utils.h;
import java.util.concurrent.atomic.AtomicInteger;
/* loaded from: classes2-dex2jar.jar:com/explorestack/iab/mraid/MraidInterstitial.class */
public class MraidInterstitial {
    static final /* synthetic */ boolean f = true;
    private static final String g = "MraidInterstitial";
    private static final AtomicInteger h = new AtomicInteger(0);

    /* renamed from: a  reason: collision with root package name */
    MraidInterstitialListener f19093a;

    /* renamed from: b  reason: collision with root package name */
    MraidView f19094b;

    /* renamed from: c  reason: collision with root package name */
    boolean f19095c;

    /* renamed from: d  reason: collision with root package name */
    boolean f19096d;
    private boolean i;
    public final int id = h.getAndIncrement();
    private boolean j = true;
    private boolean k = false;
    final MraidViewListener e = new MraidViewListener() { // from class: com.explorestack.iab.mraid.MraidInterstitial.1
        @Override // com.explorestack.iab.mraid.MraidViewListener
        public final void onClose(MraidView mraidView) {
            MraidLog.d(MraidInterstitial.g, "ViewListener: onClose");
            MraidInterstitial.c(MraidInterstitial.this);
            MraidInterstitial.this.a();
        }

        @Override // com.explorestack.iab.mraid.MraidViewListener
        public final void onError(MraidView mraidView, int i) {
            String str = MraidInterstitial.g;
            MraidLog.d(str, "ViewListener: onError (" + i + ")");
            MraidInterstitial.c(MraidInterstitial.this);
            MraidInterstitial mraidInterstitial = MraidInterstitial.this;
            mraidInterstitial.f19095c = false;
            mraidInterstitial.f19096d = true;
            if (mraidInterstitial.f19093a != null) {
                mraidInterstitial.f19093a.onError(mraidInterstitial, i);
            }
            mraidInterstitial.destroy();
        }

        @Override // com.explorestack.iab.mraid.MraidViewListener
        public final void onExpand(MraidView mraidView) {
        }

        @Override // com.explorestack.iab.mraid.MraidViewListener
        public final void onLoaded(MraidView mraidView) {
            MraidLog.d(MraidInterstitial.g, "ViewListener: onLoaded");
            MraidInterstitial.this.f19095c = true;
            if (MraidInterstitial.this.f19093a != null) {
                MraidInterstitial.this.f19093a.onLoaded(MraidInterstitial.this);
            }
        }

        @Override // com.explorestack.iab.mraid.MraidViewListener
        public final void onOpenBrowser(MraidView mraidView, String str, c cVar) {
            String str2 = MraidInterstitial.g;
            MraidLog.d(str2, "ViewListener: onOpenBrowser (" + str + ")");
            if (MraidInterstitial.this.f19093a != null) {
                MraidInterstitial.this.f19093a.onOpenBrowser(MraidInterstitial.this, str, cVar);
            }
        }

        @Override // com.explorestack.iab.mraid.MraidViewListener
        public final void onPlayVideo(MraidView mraidView, String str) {
            String str2 = MraidInterstitial.g;
            MraidLog.d(str2, "ViewListener: onPlayVideo (" + str + ")");
            if (MraidInterstitial.this.f19093a != null) {
                MraidInterstitial.this.f19093a.onPlayVideo(MraidInterstitial.this, str);
            }
        }

        @Override // com.explorestack.iab.mraid.MraidViewListener
        public final void onShown(MraidView mraidView) {
            MraidLog.d(MraidInterstitial.g, "ViewListener: onShown");
            if (MraidInterstitial.this.f19093a != null) {
                MraidInterstitial.this.f19093a.onShown(MraidInterstitial.this);
            }
        }
    };

    /* loaded from: classes2-dex2jar.jar:com/explorestack/iab/mraid/MraidInterstitial$Builder.class */
    public class Builder {

        /* renamed from: b  reason: collision with root package name */
        private final MraidView.a f19099b = new MraidView.a(c.INTERSTITIAL);

        public Builder() {
        }

        public MraidInterstitial build(Context context) {
            this.f19099b.e = MraidInterstitial.this.e;
            MraidInterstitial.this.f19094b = this.f19099b.a(context);
            return MraidInterstitial.this;
        }

        public Builder forceUseNativeCloseButton(boolean z) {
            this.f19099b.n = z;
            return this;
        }

        public Builder setBaseUrl(String str) {
            this.f19099b.f19117b = str;
            return this;
        }

        public Builder setCloseStyle(h hVar) {
            this.f19099b.f = hVar;
            return this;
        }

        public Builder setCloseTime(float f) {
            this.f19099b.j = f;
            return this;
        }

        public Builder setCountDownStyle(h hVar) {
            this.f19099b.g = hVar;
            return this;
        }

        public Builder setDurationSec(float f) {
            this.f19099b.k = f;
            return this;
        }

        public Builder setIsTag(boolean z) {
            this.f19099b.l = z;
            return this;
        }

        public Builder setListener(MraidInterstitialListener mraidInterstitialListener) {
            MraidInterstitial.this.f19093a = mraidInterstitialListener;
            return this;
        }

        public Builder setLoadingStyle(h hVar) {
            this.f19099b.h = hVar;
            return this;
        }

        public Builder setPreload(boolean z) {
            this.f19099b.m = z;
            return this;
        }

        public Builder setProductLink(String str) {
            this.f19099b.f19118c = str;
            return this;
        }

        public Builder setProgressStyle(h hVar) {
            this.f19099b.i = hVar;
            return this;
        }

        public Builder setR1(boolean z) {
            this.f19099b.o = z;
            return this;
        }

        public Builder setR2(boolean z) {
            this.f19099b.p = z;
            return this;
        }

        public Builder setSupportedNativeFeatures(String[] strArr) {
            this.f19099b.f19119d = strArr;
            return this;
        }
    }

    private MraidInterstitial() {
    }

    static /* synthetic */ void c(MraidInterstitial mraidInterstitial) {
        Activity peekActivity;
        if (mraidInterstitial.k && (peekActivity = mraidInterstitial.f19094b.peekActivity()) != null) {
            peekActivity.finish();
            peekActivity.overridePendingTransition(0, 0);
        }
    }

    public static Builder newBuilder() {
        return new Builder();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a() {
        if (!isClosed() && !isReceivedError()) {
            this.f19095c = false;
            this.i = true;
            MraidInterstitialListener mraidInterstitialListener = this.f19093a;
            if (mraidInterstitialListener != null) {
                mraidInterstitialListener.onClose(this);
            }
            if (this.j) {
                destroy();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(Activity activity, ViewGroup viewGroup, boolean z, boolean z2) {
        if (!isReady()) {
            if (activity != null && z) {
                activity.finish();
                activity.overridePendingTransition(0, 0);
            }
            b();
            MraidLog.a(g, "Show failed: interstitial is not ready");
        } else if (f || this.f19094b != null) {
            this.j = z2;
            this.k = z;
            viewGroup.addView(this.f19094b, new ViewGroup.LayoutParams(-1, -1));
            this.f19094b.show(activity);
        } else {
            throw new AssertionError();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void b() {
        MraidInterstitialListener mraidInterstitialListener = this.f19093a;
        if (mraidInterstitialListener != null) {
            mraidInterstitialListener.onError(this, 1);
        }
    }

    public boolean canBeClosed() {
        MraidView mraidView = this.f19094b;
        return mraidView == null || mraidView.canBeClosed() || isReceivedError();
    }

    public void destroy() {
        MraidLog.d(g, "destroy");
        this.f19095c = false;
        this.f19093a = null;
        MraidView mraidView = this.f19094b;
        if (mraidView != null) {
            mraidView.destroy();
            this.f19094b = null;
        }
    }

    public void dispatchClose() {
        if (this.f19094b != null && canBeClosed()) {
            this.f19094b.handleClose();
        }
    }

    public boolean isClosed() {
        return this.i;
    }

    public boolean isReady() {
        return this.f19095c && this.f19094b != null;
    }

    public boolean isReceivedError() {
        return this.f19096d;
    }

    public void load(String str) {
        MraidView mraidView = this.f19094b;
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
        a(null, viewGroup, false, z);
    }
}
