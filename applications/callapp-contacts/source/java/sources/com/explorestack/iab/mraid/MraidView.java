package com.explorestack.iab.mraid;

import android.app.Activity;
import android.content.Context;
import android.content.MutableContextWrapper;
import android.content.res.Configuration;
import android.graphics.Point;
import android.graphics.Rect;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.amazonaws.services.p101s3.util.Mimetypes;
import com.explorestack.iab.mraid.C9568h;
import com.explorestack.iab.mraid.C9573i;
import com.explorestack.iab.mraid.CloseableLayout;
import com.explorestack.iab.utils.AbstractC9588c;
import com.explorestack.iab.utils.Assets;
import com.explorestack.iab.utils.C9593h;
import com.explorestack.iab.utils.C9597j;
import com.explorestack.iab.utils.C9599l;
import com.explorestack.iab.utils.C9601n;
import com.explorestack.iab.utils.Logger;
import com.explorestack.iab.utils.Utils;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.io.UnsupportedEncodingException;
import java.lang.ref.WeakReference;
import java.net.URLDecoder;
import net.pubnative.lite.sdk.mraid.MRAIDNativeFeature;
/* loaded from: classes2-dex2jar.jar:com/explorestack/iab/mraid/MraidView.class */
public class MraidView extends CloseableLayout implements CloseableLayout.AbstractC9541c, AbstractC9588c {
    private static final String TAG = "MRAIDView";
    private final String baseUrl;
    private final C9593h closeStyle;
    private final float closeTimeSec;
    private final MutableContextWrapper contextWrapper;
    private final C9593h countDownStyle;
    private Runnable currentOpenRunnable;
    private final float durationSec;
    private CloseableLayout expandedContainer;
    private final boolean forceUseNativeCloseButton;
    private boolean isOpenNotified;
    private boolean isReadyNotified;
    private boolean isShownNotified;
    private final boolean isTag;
    private boolean isUseCustomCloseCalled;
    private WeakReference<Activity> lastInteractedActivity;
    private MraidViewListener listener;
    private final C9593h loadingStyle;
    private C9597j loadingWrapper;
    private final C9561a nativeFeatureManager;
    private String pendingHtmlData;
    private final EnumC9563c placement;
    private final boolean preload;
    private final C9568h primaryController;
    private final String productLink;
    private C9601n progressHelper;
    private final C9593h progressStyle;
    private C9599l progressWrapper;

    /* renamed from: r1 */
    private final boolean f32453r1;

    /* renamed from: r2 */
    private final boolean f32454r2;
    private CloseableLayout resizedContainer;
    private final C9565e screenMetrics;
    private final GestureDetector scrollPreventGestureDetector;
    private C9568h secondaryController;
    private EnumC9567g state;
    private Integer storedOrientation;
    private final C9573i viewOnScreenObserver;

    /* renamed from: com.explorestack.iab.mraid.MraidView$5 */
    /* loaded from: classes2-dex2jar.jar:com/explorestack/iab/mraid/MraidView$5.class */
    public final class RunnableC95485 implements Runnable {

        /* renamed from: a */
        final /* synthetic */ C9568h f32459a;

        RunnableC95485(C9568h c9568h) {
            MraidView.this = r4;
            this.f32459a = c9568h;
        }

        @Override // java.lang.Runnable
        public final void run() {
            C9593h resolveDefCloseStyle = Assets.resolveDefCloseStyle(MraidView.this.getContext(), MraidView.this.closeStyle);
            final Point m24112a = Utils.m24112a(MraidView.this.screenMetrics.f32507b, resolveDefCloseStyle.m24054e().intValue(), resolveDefCloseStyle.m24052f().intValue());
            MraidView.this.handleMotionClick(m24112a.x, m24112a.y, this.f32459a, new Runnable() { // from class: com.explorestack.iab.mraid.MraidView.5.1
                @Override // java.lang.Runnable
                public final void run() {
                    MraidView.this.handleScriptClick(m24112a.x, m24112a.y, RunnableC95485.this.f32459a, new Runnable() { // from class: com.explorestack.iab.mraid.MraidView.5.1.1
                        @Override // java.lang.Runnable
                        public final void run() {
                            MraidView.this.handleOpenProductLink();
                        }
                    });
                }
            });
        }
    }

    /* renamed from: com.explorestack.iab.mraid.MraidView$a */
    /* loaded from: classes2-dex2jar.jar:com/explorestack/iab/mraid/MraidView$a.class */
    public static final class C9555a {

        /* renamed from: a */
        final EnumC9563c f32470a;

        /* renamed from: b */
        String f32471b;

        /* renamed from: c */
        String f32472c;

        /* renamed from: d */
        String[] f32473d;

        /* renamed from: e */
        public MraidViewListener f32474e;

        /* renamed from: f */
        C9593h f32475f;

        /* renamed from: g */
        C9593h f32476g;

        /* renamed from: h */
        C9593h f32477h;

        /* renamed from: i */
        C9593h f32478i;

        /* renamed from: j */
        float f32479j;

        /* renamed from: k */
        float f32480k;

        /* renamed from: l */
        boolean f32481l;

        /* renamed from: m */
        public boolean f32482m;

        /* renamed from: n */
        boolean f32483n;

        /* renamed from: o */
        boolean f32484o;

        /* renamed from: p */
        boolean f32485p;

        public C9555a() {
            this(EnumC9563c.INLINE);
        }

        public C9555a(EnumC9563c enumC9563c) {
            this.f32473d = null;
            this.f32479j = BitmapDescriptorFactory.HUE_RED;
            this.f32480k = BitmapDescriptorFactory.HUE_RED;
            this.f32482m = true;
            this.f32470a = enumC9563c;
        }

        /* renamed from: a */
        public final MraidView m24184a(Context context) {
            return new MraidView(context, this);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.explorestack.iab.mraid.MraidView$b */
    /* loaded from: classes2-dex2jar.jar:com/explorestack/iab/mraid/MraidView$b.class */
    public abstract class AbstractC9556b implements C9568h.AbstractC9571a {
        private AbstractC9556b() {
            MraidView.this = r4;
        }

        @Override // com.explorestack.iab.mraid.C9568h.AbstractC9571a
        /* renamed from: a */
        public final void mo24147a() {
            MraidLog.m24185d(MraidView.TAG, "Callback: onLoaded");
            if (MraidView.this.listener != null) {
                MraidView.this.listener.onLoaded(MraidView.this);
            }
        }

        @Override // com.explorestack.iab.mraid.C9568h.AbstractC9571a
        /* renamed from: a */
        public final void mo24146a(int i) {
            MraidLog.m24185d(MraidView.TAG, "Callback: onError (" + i + ")");
            if (MraidView.this.listener != null) {
                MraidView.this.listener.onError(MraidView.this, i);
            }
        }

        @Override // com.explorestack.iab.mraid.C9568h.AbstractC9571a
        /* renamed from: a */
        public final void mo24145a(C9562b c9562b) {
            MraidLog.m24185d(MraidView.TAG, "Callback: onOrientation ".concat(String.valueOf(c9562b)));
            if (MraidView.this.isInterstitial() || MraidView.this.state == EnumC9567g.EXPANDED) {
                MraidView.this.applyOrientation(c9562b);
            }
        }

        @Override // com.explorestack.iab.mraid.C9568h.AbstractC9571a
        /* renamed from: a */
        public final void mo24144a(C9564d c9564d) {
            MraidLog.m24185d(MraidView.TAG, "Callback: onResize (" + c9564d + ")");
            MraidView.this.handleResize(c9564d);
        }

        @Override // com.explorestack.iab.mraid.C9568h.AbstractC9571a
        /* renamed from: b */
        public final void mo24141b() {
            MraidLog.m24185d(MraidView.TAG, "Callback: onClose");
            MraidView.this.handleClose();
        }

        @Override // com.explorestack.iab.mraid.C9568h.AbstractC9571a
        /* renamed from: b */
        public final void mo24140b(String str) {
            MraidLog.m24185d(MraidView.TAG, "Callback: onOpen (" + str + ")");
            MraidView.this.handleOpen(str);
        }

        @Override // com.explorestack.iab.mraid.C9568h.AbstractC9571a
        /* renamed from: c */
        public final void mo24138c(String str) {
            MraidLog.m24185d(MraidView.TAG, "Callback: onExpand ".concat(String.valueOf(str)));
            if (MraidView.this.isInterstitial()) {
                return;
            }
            MraidView.this.handleExpand(str);
        }

        @Override // com.explorestack.iab.mraid.C9568h.AbstractC9571a
        /* renamed from: d */
        public final void mo24137d(String str) {
            MraidLog.m24185d(MraidView.TAG, "Callback: playVideo ".concat(String.valueOf(str)));
            try {
                String decode = URLDecoder.decode(str, "UTF-8");
                if (MraidView.this.listener == null) {
                    return;
                }
                MraidView.this.listener.onPlayVideo(MraidView.this, decode);
            } catch (UnsupportedEncodingException e) {
                e.printStackTrace();
            }
        }
    }

    private MraidView(Context context, C9555a c9555a) {
        super(context);
        this.state = EnumC9567g.LOADING;
        this.isReadyNotified = false;
        this.isShownNotified = false;
        this.isOpenNotified = false;
        this.isUseCustomCloseCalled = false;
        MutableContextWrapper mutableContextWrapper = new MutableContextWrapper(context);
        this.contextWrapper = mutableContextWrapper;
        this.listener = c9555a.f32474e;
        this.placement = c9555a.f32470a;
        this.baseUrl = c9555a.f32471b;
        this.productLink = c9555a.f32472c;
        this.closeTimeSec = c9555a.f32479j;
        float f = c9555a.f32480k;
        this.durationSec = f;
        this.isTag = c9555a.f32481l;
        this.preload = c9555a.f32482m;
        this.forceUseNativeCloseButton = c9555a.f32483n;
        this.f32453r1 = c9555a.f32484o;
        this.f32454r2 = c9555a.f32485p;
        this.closeStyle = c9555a.f32475f;
        this.countDownStyle = c9555a.f32476g;
        this.loadingStyle = c9555a.f32477h;
        C9593h c9593h = c9555a.f32478i;
        this.progressStyle = c9593h;
        this.nativeFeatureManager = new C9561a(c9555a.f32473d);
        this.screenMetrics = new C9565e(context);
        this.viewOnScreenObserver = new C9573i();
        this.scrollPreventGestureDetector = new GestureDetector(context, new GestureDetector.SimpleOnGestureListener() { // from class: com.explorestack.iab.mraid.MraidView.1
            @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
            public final boolean onScroll(MotionEvent motionEvent, MotionEvent motionEvent2, float f2, float f3) {
                return true;
            }
        });
        C9568h c9568h = new C9568h(mutableContextWrapper, new AbstractC9556b() { // from class: com.explorestack.iab.mraid.MraidView.2
            @Override // com.explorestack.iab.mraid.C9568h.AbstractC9571a
            /* renamed from: a */
            public final void mo24143a(String str) {
                MraidView.this.handlePageLoaded(str);
            }

            @Override // com.explorestack.iab.mraid.C9568h.AbstractC9571a
            /* renamed from: a */
            public final void mo24142a(boolean z) {
                if (!MraidView.this.forceUseNativeCloseButton) {
                    if (z && !MraidView.this.isUseCustomCloseCalled) {
                        MraidView.this.isUseCustomCloseCalled = true;
                    }
                    MraidView mraidView = MraidView.this;
                    mraidView.syncCustomClose(mraidView.primaryController);
                }
            }

            @Override // com.explorestack.iab.mraid.C9568h.AbstractC9571a
            /* renamed from: b */
            public final void mo24139b(boolean z) {
                if (z) {
                    MraidView.this.notifyReady();
                    if (MraidView.this.isShownNotified) {
                        return;
                    }
                    MraidView.this.isShownNotified = true;
                    if (MraidView.this.listener == null) {
                        return;
                    }
                    MraidView.this.listener.onShown(MraidView.this);
                }
            }
        });
        this.primaryController = c9568h;
        addView(c9568h.f32521b, new FrameLayout.LayoutParams(-1, -1, 17));
        if (f > BitmapDescriptorFactory.HUE_RED) {
            C9599l c9599l = new C9599l(null);
            this.progressWrapper = c9599l;
            c9599l.m24045a(context, (ViewGroup) this, c9593h);
            C9601n c9601n = new C9601n(this, new C9601n.AbstractC9604a() { // from class: com.explorestack.iab.mraid.MraidView.3
                @Override // com.explorestack.iab.utils.C9601n.AbstractC9604a
                /* renamed from: a */
                public final void mo24030a() {
                    MraidView.this.progressWrapper.m24041d();
                    if (MraidView.this.isOpenNotified || !MraidView.this.f32454r2 || MraidView.this.durationSec <= BitmapDescriptorFactory.HUE_RED) {
                        return;
                    }
                    MraidView.this.handleRedirect();
                }

                @Override // com.explorestack.iab.utils.C9601n.AbstractC9604a
                /* renamed from: a */
                public final void mo24029a(float f2, long j, long j2) {
                    int i = (int) (j / 1000);
                    MraidView.this.progressWrapper.m24038a(f2, i, (int) (j2 / 1000));
                }
            });
            this.progressHelper = c9601n;
            if (c9601n.f32617c != f) {
                c9601n.f32617c = f;
                c9601n.f32618d = f * 1000.0f;
                c9601n.m24034a();
            }
        }
        setCloseClickListener(this);
    }

    /* JADX WARN: Code restructure failed: missing block: B:22:0x006f, code lost:
        if (r9 != false) goto L15;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void applyOrientation(com.explorestack.iab.mraid.C9562b r5) {
        /*
            r4 = this;
            r0 = r5
            if (r0 != 0) goto L5
            return
        L5:
            r0 = r4
            android.app.Activity r0 = r0.peekActivity()
            r6 = r0
            java.lang.String r0 = "MRAIDView"
            java.lang.String r1 = "applyOrientation: "
            r2 = r5
            java.lang.String r2 = java.lang.String.valueOf(r2)
            java.lang.String r1 = r1.concat(r2)
            com.explorestack.iab.mraid.MraidLog.m24185d(r0, r1)
            r0 = r6
            if (r0 != 0) goto L26
            java.lang.String r0 = "MRAIDView"
            java.lang.String r1 = "no any interacted activities"
            com.explorestack.iab.mraid.MraidLog.m24185d(r0, r1)
            return
        L26:
            r0 = r4
            r1 = r6
            r0.storeOrientation(r1)
            r0 = r6
            android.content.res.Resources r0 = r0.getResources()
            android.content.res.Configuration r0 = r0.getConfiguration()
            int r0 = r0.orientation
            r7 = r0
            r0 = 0
            r8 = r0
            r0 = r7
            r1 = 1
            if (r0 != r1) goto L44
            r0 = 1
            r9 = r0
            goto L47
        L44:
            r0 = 0
            r9 = r0
        L47:
            r0 = r5
            int r0 = r0.f32499b
            if (r0 != 0) goto L53
        L4e:
            r0 = 1
            r7 = r0
            goto L75
        L53:
            r0 = r8
            r7 = r0
            r0 = r5
            int r0 = r0.f32499b
            r1 = 1
            if (r0 == r1) goto L75
            r0 = r5
            boolean r0 = r0.f32498a
            if (r0 == 0) goto L6a
            r0 = -1
            r7 = r0
            goto L75
        L6a:
            r0 = r8
            r7 = r0
            r0 = r9
            if (r0 == 0) goto L75
            goto L4e
        L75:
            r0 = r6
            r1 = r7
            r0.setRequestedOrientation(r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.explorestack.iab.mraid.MraidView.applyOrientation(com.explorestack.iab.mraid.b):void");
    }

    public void closeExpanded() {
        detachContainer(this.expandedContainer);
        this.expandedContainer = null;
        Activity peekActivity = peekActivity();
        if (peekActivity != null) {
            restoreOrientation(peekActivity);
        }
        C9568h c9568h = this.secondaryController;
        if (c9568h != null) {
            c9568h.m24163a();
            this.secondaryController = null;
        } else {
            addView(this.primaryController.f32521b);
        }
        setViewState(EnumC9567g.DEFAULT);
    }

    public void closeResized() {
        detachContainer(this.resizedContainer);
        this.resizedContainer = null;
        addView(this.primaryController.f32521b);
        setViewState(EnumC9567g.DEFAULT);
    }

    private void detachContainer(View view) {
        if (view == null) {
            return;
        }
        if (view instanceof ViewGroup) {
            ((ViewGroup) view).removeAllViews();
        }
        Utils.m24104b(view);
    }

    public void handleExpand(String str) {
        C9568h c9568h;
        if (isInterstitial()) {
            return;
        }
        if (this.state != EnumC9567g.DEFAULT && this.state != EnumC9567g.RESIZED) {
            return;
        }
        if (str == null) {
            c9568h = this.primaryController;
        } else {
            try {
                String decode = URLDecoder.decode(str, "UTF-8");
                String str2 = decode;
                if (!decode.startsWith("http://")) {
                    str2 = decode;
                    if (!decode.startsWith("https://")) {
                        str2 = this.baseUrl + decode;
                    }
                }
                C9568h c9568h2 = new C9568h(this.contextWrapper, new AbstractC9556b() { // from class: com.explorestack.iab.mraid.MraidView.6
                    @Override // com.explorestack.iab.mraid.C9568h.AbstractC9571a
                    /* renamed from: a */
                    public final void mo24143a(String str3) {
                        MraidView.this.handlePartTwoLoaded();
                    }

                    @Override // com.explorestack.iab.mraid.C9568h.AbstractC9571a
                    /* renamed from: a */
                    public final void mo24142a(boolean z) {
                        if (MraidView.this.secondaryController != null) {
                            MraidView mraidView = MraidView.this;
                            mraidView.syncCustomClose(mraidView.secondaryController);
                        }
                    }

                    @Override // com.explorestack.iab.mraid.C9568h.AbstractC9571a
                    /* renamed from: b */
                    public final void mo24139b(boolean z) {
                    }
                });
                this.secondaryController = c9568h2;
                c9568h2.f32522c = false;
                c9568h2.f32521b.loadUrl(str2);
                c9568h = c9568h2;
            } catch (UnsupportedEncodingException e) {
                return;
            }
        }
        CloseableLayout closeableLayout = this.expandedContainer;
        if (closeableLayout == null || closeableLayout.getParent() == null) {
            View m24165b = C9566f.m24165b(peekContext(), this);
            if (!(m24165b instanceof ViewGroup)) {
                MraidLog.m24186b(TAG, "Can't add resized view because can't find required parent");
                return;
            }
            CloseableLayout closeableLayout2 = new CloseableLayout(getContext());
            this.expandedContainer = closeableLayout2;
            closeableLayout2.setCloseClickListener(this);
            ((ViewGroup) m24165b).addView(this.expandedContainer);
        }
        MraidWebView mraidWebView = c9568h.f32521b;
        Utils.m24104b(mraidWebView);
        this.expandedContainer.addView(mraidWebView);
        prepareFullscreenBehavior(this.expandedContainer, c9568h);
        applyOrientation(c9568h.f32525f);
        setViewState(EnumC9567g.EXPANDED);
        MraidViewListener mraidViewListener = this.listener;
        if (mraidViewListener == null) {
            return;
        }
        mraidViewListener.onExpand(this);
    }

    public void handleMotionClick(int i, int i2, C9568h c9568h, Runnable runnable) {
        if (!this.isOpenNotified) {
            handleMotionClick(c9568h.f32521b, i, i2);
            this.currentOpenRunnable = runnable;
            postDelayed(runnable, 150L);
        }
    }

    private void handleMotionClick(MraidWebView mraidWebView, int i, int i2) {
        mraidWebView.dispatchTouchEvent(obtainMotionEvent(0, i, i2));
        mraidWebView.dispatchTouchEvent(obtainMotionEvent(1, i, i2));
    }

    public void handleOpenProductLink() {
        if (this.isOpenNotified || TextUtils.isEmpty(this.productLink)) {
            return;
        }
        handleOpen(this.productLink);
    }

    public void handlePageLoaded(String str) {
        if (this.state != EnumC9567g.LOADING) {
            return;
        }
        this.primaryController.m24162a(this.nativeFeatureManager);
        this.primaryController.m24161a(this.placement);
        C9568h c9568h = this.primaryController;
        c9568h.m24155a(c9568h.f32521b.f32490b);
        syncScreenMetrics(this.primaryController.f32521b);
        setViewState(EnumC9567g.DEFAULT);
        notifyReady();
        setLoadingVisible(false);
        if (isInterstitial()) {
            prepareFullscreenBehavior(this, this.primaryController);
        }
        if (this.listener == null || !this.preload || this.isTag || str.equals("data:text/html,<html></html>")) {
            return;
        }
        this.listener.onLoaded(this);
    }

    public void handlePartTwoLoaded() {
        if (this.secondaryController == null) {
            return;
        }
        updateMetrics(new Runnable() { // from class: com.explorestack.iab.mraid.MraidView.8
            @Override // java.lang.Runnable
            public final void run() {
                MraidView.this.secondaryController.m24162a(MraidView.this.nativeFeatureManager);
                MraidView.this.secondaryController.m24161a(MraidView.this.placement);
                MraidView.this.secondaryController.m24155a(MraidView.this.secondaryController.f32521b.f32490b);
                MraidView.this.secondaryController.m24159a(MraidView.this.state);
                MraidView.this.secondaryController.m24156a("mraid.fireReadyEvent();");
            }
        });
    }

    public void handleRedirect() {
        C9568h c9568h = this.secondaryController;
        if (c9568h == null) {
            c9568h = this.primaryController;
        }
        RunnableC95485 runnableC95485 = new RunnableC95485(c9568h);
        Point m24100c = Utils.m24100c(this.screenMetrics.f32507b);
        handleMotionClick(m24100c.x, m24100c.y, c9568h, runnableC95485);
    }

    public void handleResize(C9564d c9564d) {
        if (this.state == EnumC9567g.LOADING || this.state == EnumC9567g.HIDDEN || this.state == EnumC9567g.EXPANDED || this.placement == EnumC9563c.INTERSTITIAL) {
            MraidLog.m24185d(TAG, "Callback: onResize (invalidate state: " + this.state + ")");
            return;
        }
        CloseableLayout closeableLayout = this.resizedContainer;
        if (closeableLayout == null || closeableLayout.getParent() == null) {
            View m24165b = C9566f.m24165b(peekContext(), this);
            if (!(m24165b instanceof ViewGroup)) {
                MraidLog.m24186b(TAG, "Can't add resized view because can't find required parent");
                return;
            }
            CloseableLayout closeableLayout2 = new CloseableLayout(getContext());
            this.resizedContainer = closeableLayout2;
            closeableLayout2.setCloseClickListener(this);
            ((ViewGroup) m24165b).addView(this.resizedContainer);
        }
        MraidWebView mraidWebView = this.primaryController.f32521b;
        Utils.m24104b(mraidWebView);
        this.resizedContainer.addView(mraidWebView);
        C9593h resolveDefCloseStyle = Assets.resolveDefCloseStyle(getContext(), this.closeStyle);
        resolveDefCloseStyle.f32587e = Integer.valueOf(c9564d.f32504e.getGravity() & 7);
        resolveDefCloseStyle.f32588f = Integer.valueOf(c9564d.f32504e.getGravity() & 112);
        this.resizedContainer.setCloseStyle(resolveDefCloseStyle);
        this.resizedContainer.setCloseVisibility(false, this.closeTimeSec);
        setResizedViewSizeAndPosition(c9564d);
        setViewState(EnumC9567g.RESIZED);
    }

    public void handleScriptClick(int i, int i2, C9568h c9568h, Runnable runnable) {
        if (!this.isOpenNotified) {
            c9568h.m24156a(String.format("(function click(x, y) {var ev = new MouseEvent('click', {    'view': window,    'bubbles': true,    'cancelable': true,    'screenX': x,    'screenY': y});var el = document.elementFromPoint(x, y);if (el !== null) {      el.dispatchEvent(ev); }})(%s, %s)", Integer.valueOf(i), Integer.valueOf(i2)));
            this.currentOpenRunnable = runnable;
            postDelayed(runnable, 150L);
        }
    }

    public boolean isInterstitial() {
        return this.placement == EnumC9563c.INTERSTITIAL;
    }

    public void notifyReady() {
        if (!this.isReadyNotified) {
            this.isReadyNotified = true;
            this.primaryController.m24156a("mraid.fireReadyEvent();");
        }
    }

    private MotionEvent obtainMotionEvent(int i, int i2, int i3) {
        return MotionEvent.obtain(SystemClock.uptimeMillis(), SystemClock.uptimeMillis(), i, i2, i3, 0);
    }

    private Context peekContext() {
        Activity peekActivity = peekActivity();
        Activity activity = peekActivity;
        if (peekActivity == null) {
            activity = getContext();
        }
        return activity;
    }

    private void performLoad(String str) {
        if (str == null && this.baseUrl == null) {
            MraidViewListener mraidViewListener = this.listener;
            if (mraidViewListener == null) {
                return;
            }
            mraidViewListener.onError(this, 0);
            return;
        }
        C9568h c9568h = this.primaryController;
        String str2 = this.baseUrl;
        String format = String.format("<script type='application/javascript'>%s</script>%s", C9566f.m24172a(), C9566f.m24164b(str));
        c9568h.f32522c = false;
        c9568h.f32521b.loadDataWithBaseURL(str2, format, Mimetypes.MIMETYPE_HTML, "UTF-8", null);
        C9568h c9568h2 = this.primaryController;
        Logger.LogLevel m24190a = MraidLog.m24190a();
        if (m24190a == Logger.LogLevel.debug) {
            c9568h2.m24156a("mraid.logLevel = mraid.LogLevelEnum.DEBUG;");
        } else if (m24190a == Logger.LogLevel.info) {
            c9568h2.m24156a("mraid.logLevel = mraid.LogLevelEnum.INFO;");
        } else if (m24190a == Logger.LogLevel.warning) {
            c9568h2.m24156a("mraid.logLevel = mraid.LogLevelEnum.WARNING;");
        } else if (m24190a == Logger.LogLevel.error) {
            c9568h2.m24156a("mraid.logLevel = mraid.LogLevelEnum.ERROR;");
        } else if (m24190a != Logger.LogLevel.none) {
        } else {
            c9568h2.m24156a("mraid.logLevel = mraid.LogLevelEnum.NONE;");
        }
    }

    private void prepareFullscreenBehavior(CloseableLayout closeableLayout, C9568h c9568h) {
        closeableLayout.setCloseStyle(this.closeStyle);
        closeableLayout.setCountDownStyle(this.countDownStyle);
        syncCustomClose(c9568h);
    }

    private void restoreOrientation(Activity activity) {
        Integer num = this.storedOrientation;
        if (num != null) {
            activity.setRequestedOrientation(num.intValue());
            this.storedOrientation = null;
        }
    }

    private void setResizedViewSizeAndPosition(C9564d c9564d) {
        MraidLog.m24185d(TAG, "setResizedViewSizeAndPosition: ".concat(String.valueOf(c9564d)));
        if (this.resizedContainer == null) {
            return;
        }
        int m24117a = Utils.m24117a(getContext(), c9564d.f32500a);
        int m24117a2 = Utils.m24117a(getContext(), c9564d.f32501b);
        int m24117a3 = Utils.m24117a(getContext(), c9564d.f32502c);
        int m24117a4 = Utils.m24117a(getContext(), c9564d.f32503d);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(m24117a, m24117a2);
        Rect rect = this.screenMetrics.f32512g;
        int i = rect.left;
        int i2 = rect.top;
        layoutParams.leftMargin = i + m24117a3;
        layoutParams.topMargin = i2 + m24117a4;
        this.resizedContainer.setLayoutParams(layoutParams);
    }

    public void setViewState(EnumC9567g enumC9567g) {
        this.state = enumC9567g;
        this.primaryController.m24159a(enumC9567g);
        C9568h c9568h = this.secondaryController;
        if (c9568h != null) {
            c9568h.m24159a(enumC9567g);
        }
        if (enumC9567g != EnumC9567g.HIDDEN) {
            updateMetrics(null);
        }
    }

    private void storeOrientation(Activity activity) {
        this.storedOrientation = Integer.valueOf(activity.getRequestedOrientation());
    }

    public void syncCustomClose(C9568h c9568h) {
        boolean z = !c9568h.f32523d || this.forceUseNativeCloseButton;
        CloseableLayout closeableLayout = this.resizedContainer;
        if (closeableLayout != null) {
            closeableLayout.setCloseVisibility(z, this.closeTimeSec);
            return;
        }
        CloseableLayout closeableLayout2 = this.expandedContainer;
        if (closeableLayout2 != null) {
            closeableLayout2.setCloseVisibility(z, this.closeTimeSec);
        } else if (!isInterstitial()) {
        } else {
            setCloseVisibility(z, this.isUseCustomCloseCalled ? 0.0f : this.closeTimeSec);
        }
    }

    public void syncScreenMetrics(View view) {
        Context peekContext = peekContext();
        DisplayMetrics displayMetrics = peekContext.getResources().getDisplayMetrics();
        C9565e c9565e = this.screenMetrics;
        int i = displayMetrics.widthPixels;
        int i2 = displayMetrics.heightPixels;
        if (c9565e.f32506a.width() != i || c9565e.f32506a.height() != i2) {
            c9565e.f32506a.set(0, 0, i, i2);
            c9565e.m24174a(c9565e.f32506a, c9565e.f32507b);
        }
        int[] iArr = new int[2];
        View m24170a = C9566f.m24170a(peekContext, this);
        m24170a.getLocationOnScreen(iArr);
        C9565e c9565e2 = this.screenMetrics;
        c9565e2.m24173a(c9565e2.f32508c, c9565e2.f32509d, iArr[0], iArr[1], m24170a.getWidth(), m24170a.getHeight());
        getLocationOnScreen(iArr);
        C9565e c9565e3 = this.screenMetrics;
        c9565e3.m24173a(c9565e3.f32512g, c9565e3.f32513h, iArr[0], iArr[1], getWidth(), getHeight());
        view.getLocationOnScreen(iArr);
        C9565e c9565e4 = this.screenMetrics;
        c9565e4.m24173a(c9565e4.f32510e, c9565e4.f32511f, iArr[0], iArr[1], view.getWidth(), view.getHeight());
        this.primaryController.m24160a(this.screenMetrics);
        C9568h c9568h = this.secondaryController;
        if (c9568h != null) {
            c9568h.m24160a(this.screenMetrics);
        }
    }

    public void updateMetrics(final Runnable runnable) {
        C9568h c9568h = this.secondaryController;
        MraidWebView mraidWebView = c9568h != null ? c9568h.f32521b : this.primaryController.f32521b;
        C9573i c9573i = this.viewOnScreenObserver;
        c9573i.m24135a();
        c9573i.f32530a = new C9573i.C9574a(new View[]{this, mraidWebView});
        C9573i.C9574a c9574a = c9573i.f32530a;
        final MraidWebView mraidWebView2 = mraidWebView;
        c9574a.f32532b = new Runnable() { // from class: com.explorestack.iab.mraid.MraidView.9
            @Override // java.lang.Runnable
            public final void run() {
                MraidView.this.syncScreenMetrics(mraidWebView2);
                Runnable runnable2 = runnable;
                if (runnable2 != null) {
                    runnable2.run();
                }
            }
        };
        c9574a.f32533c = c9574a.f32531a.length;
        Utils.m24103b(c9574a.f32534d);
    }

    @Override // com.explorestack.iab.mraid.CloseableLayout
    public boolean canBeClosed() {
        if (getOnScreenTimeMs() <= C9566f.f32515a && !this.primaryController.f32524e) {
            if (!this.forceUseNativeCloseButton && this.primaryController.f32523d) {
                return false;
            }
            return super.canBeClosed();
        }
        return true;
    }

    @Override // com.explorestack.iab.utils.AbstractC9588c
    public void clickHandleCanceled() {
        setLoadingVisible(false);
    }

    public void clickHandleError() {
        setLoadingVisible(false);
    }

    @Override // com.explorestack.iab.utils.AbstractC9588c
    public void clickHandled() {
        setLoadingVisible(false);
    }

    public void destroy() {
        this.listener = null;
        this.lastInteractedActivity = null;
        this.viewOnScreenObserver.m24135a();
        Activity peekActivity = peekActivity();
        if (peekActivity != null) {
            restoreOrientation(peekActivity);
        }
        detachContainer(this.resizedContainer);
        detachContainer(this.expandedContainer);
        this.primaryController.m24163a();
        C9568h c9568h = this.secondaryController;
        if (c9568h != null) {
            c9568h.m24163a();
        }
        C9601n c9601n = this.progressHelper;
        if (c9601n != null) {
            c9601n.m24033b();
            c9601n.f32615a.getViewTreeObserver().removeGlobalOnLayoutListener(c9601n.f32620f);
        }
    }

    public void handleClose() {
        if (this.isOpenNotified || !this.f32453r1) {
            post(new Runnable() { // from class: com.explorestack.iab.mraid.MraidView.4
                @Override // java.lang.Runnable
                public final void run() {
                    if (MraidView.this.state == EnumC9567g.RESIZED) {
                        MraidView.this.closeResized();
                    } else if (MraidView.this.state == EnumC9567g.EXPANDED) {
                        MraidView.this.closeExpanded();
                    } else if (!MraidView.this.isInterstitial()) {
                    } else {
                        MraidView.this.setViewState(EnumC9567g.HIDDEN);
                        if (MraidView.this.listener == null) {
                            return;
                        }
                        MraidView.this.listener.onClose(MraidView.this);
                    }
                }
            });
        } else {
            handleRedirect();
        }
    }

    void handleOpen(String str) {
        this.isOpenNotified = true;
        removeCallbacks(this.currentOpenRunnable);
        if (this.listener == null || str.startsWith(MRAIDNativeFeature.TEL) || str.startsWith(MRAIDNativeFeature.SMS)) {
            return;
        }
        setLoadingVisible(true);
        this.listener.onOpenBrowser(this, str, this);
    }

    public void load(String str) {
        if (this.preload) {
            performLoad(str);
            return;
        }
        this.pendingHtmlData = str;
        MraidViewListener mraidViewListener = this.listener;
        if (mraidViewListener == null) {
            return;
        }
        mraidViewListener.onLoaded(this);
    }

    @Override // com.explorestack.iab.mraid.CloseableLayout.AbstractC9541c
    public void onCloseClick() {
        handleClose();
    }

    @Override // android.view.View
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        MraidLog.m24185d(TAG, "onConfigurationChanged: " + Utils.m24121a(configuration.orientation));
        post(new Runnable() { // from class: com.explorestack.iab.mraid.MraidView.7
            @Override // java.lang.Runnable
            public final void run() {
                MraidView.this.updateMetrics(null);
            }
        });
    }

    @Override // com.explorestack.iab.mraid.CloseableLayout.AbstractC9541c
    public void onCountDownFinish() {
        if (this.isOpenNotified || !this.f32454r2 || this.durationSec != BitmapDescriptorFactory.HUE_RED) {
            return;
        }
        handleRedirect();
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (this.scrollPreventGestureDetector.onTouchEvent(motionEvent)) {
            motionEvent.setAction(3);
        }
        return super.onTouchEvent(motionEvent);
    }

    public Activity peekActivity() {
        WeakReference<Activity> weakReference = this.lastInteractedActivity;
        return weakReference != null ? weakReference.get() : null;
    }

    public void setLastInteractedActivity(Activity activity) {
        if (activity != null) {
            this.lastInteractedActivity = new WeakReference<>(activity);
            this.contextWrapper.setBaseContext(activity);
        }
    }

    public void setLoadingVisible(boolean z) {
        if (!z) {
            C9597j c9597j = this.loadingWrapper;
            if (c9597j == null) {
                return;
            }
            c9597j.m24046a(8);
            return;
        }
        if (this.loadingWrapper == null) {
            C9597j c9597j2 = new C9597j(null);
            this.loadingWrapper = c9597j2;
            c9597j2.m24045a(getContext(), (ViewGroup) this, this.loadingStyle);
        }
        this.loadingWrapper.m24046a(0);
        this.loadingWrapper.m24044b();
    }

    public void show(Activity activity) {
        if (this.preload) {
            if (isInterstitial()) {
                prepareFullscreenBehavior(this, this.primaryController);
            }
            notifyReady();
        } else {
            setLoadingVisible(true);
            performLoad(this.pendingHtmlData);
            this.pendingHtmlData = null;
        }
        setLastInteractedActivity(activity);
        applyOrientation(this.primaryController.f32525f);
    }
}
