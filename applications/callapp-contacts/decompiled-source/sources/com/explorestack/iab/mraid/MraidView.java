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
import com.amazonaws.services.s3.util.Mimetypes;
import com.explorestack.iab.mraid.CloseableLayout;
import com.explorestack.iab.mraid.h;
import com.explorestack.iab.mraid.i;
import com.explorestack.iab.utils.Assets;
import com.explorestack.iab.utils.Logger;
import com.explorestack.iab.utils.Utils;
import com.explorestack.iab.utils.c;
import com.explorestack.iab.utils.h;
import com.explorestack.iab.utils.j;
import com.explorestack.iab.utils.l;
import com.explorestack.iab.utils.n;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.io.UnsupportedEncodingException;
import java.lang.ref.WeakReference;
import java.net.URLDecoder;
import net.pubnative.lite.sdk.mraid.MRAIDNativeFeature;
/* loaded from: classes2-dex2jar.jar:com/explorestack/iab/mraid/MraidView.class */
public class MraidView extends CloseableLayout implements CloseableLayout.c, c {
    private static final String TAG = "MRAIDView";
    private final String baseUrl;
    private final h closeStyle;
    private final float closeTimeSec;
    private final MutableContextWrapper contextWrapper;
    private final h countDownStyle;
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
    private final h loadingStyle;
    private j loadingWrapper;
    private final com.explorestack.iab.mraid.a nativeFeatureManager;
    private String pendingHtmlData;
    private final c placement;
    private final boolean preload;
    private final h primaryController;
    private final String productLink;
    private n progressHelper;
    private final h progressStyle;
    private l progressWrapper;
    private final boolean r1;
    private final boolean r2;
    private CloseableLayout resizedContainer;
    private final e screenMetrics;
    private final GestureDetector scrollPreventGestureDetector;
    private h secondaryController;
    private g state;
    private Integer storedOrientation;
    private final i viewOnScreenObserver;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.explorestack.iab.mraid.MraidView$5  reason: invalid class name */
    /* loaded from: classes2-dex2jar.jar:com/explorestack/iab/mraid/MraidView$5.class */
    public final class AnonymousClass5 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ h f19105a;

        AnonymousClass5(h hVar) {
            this.f19105a = hVar;
        }

        @Override // java.lang.Runnable
        public final void run() {
            h resolveDefCloseStyle = Assets.resolveDefCloseStyle(MraidView.this.getContext(), MraidView.this.closeStyle);
            final Point a2 = Utils.a(MraidView.this.screenMetrics.f19135b, resolveDefCloseStyle.e().intValue(), resolveDefCloseStyle.f().intValue());
            MraidView.this.handleMotionClick(a2.x, a2.y, this.f19105a, new Runnable() { // from class: com.explorestack.iab.mraid.MraidView.5.1
                @Override // java.lang.Runnable
                public final void run() {
                    MraidView.this.handleScriptClick(a2.x, a2.y, AnonymousClass5.this.f19105a, new Runnable() { // from class: com.explorestack.iab.mraid.MraidView.5.1.1
                        @Override // java.lang.Runnable
                        public final void run() {
                            MraidView.this.handleOpenProductLink();
                        }
                    });
                }
            });
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/explorestack/iab/mraid/MraidView$a.class */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        final c f19116a;

        /* renamed from: b  reason: collision with root package name */
        String f19117b;

        /* renamed from: c  reason: collision with root package name */
        String f19118c;

        /* renamed from: d  reason: collision with root package name */
        String[] f19119d;
        public MraidViewListener e;
        h f;
        h g;
        h h;
        h i;
        float j;
        float k;
        boolean l;
        public boolean m;
        boolean n;
        boolean o;
        boolean p;

        public a() {
            this(c.INLINE);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public a(c cVar) {
            this.f19119d = null;
            this.j = BitmapDescriptorFactory.HUE_RED;
            this.k = BitmapDescriptorFactory.HUE_RED;
            this.m = true;
            this.f19116a = cVar;
        }

        public final MraidView a(Context context) {
            return new MraidView(context, this);
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/explorestack/iab/mraid/MraidView$b.class */
    abstract class b implements h.a {
        private b() {
        }

        @Override // com.explorestack.iab.mraid.h.a
        public final void a() {
            MraidLog.d(MraidView.TAG, "Callback: onLoaded");
            if (MraidView.this.listener != null) {
                MraidView.this.listener.onLoaded(MraidView.this);
            }
        }

        @Override // com.explorestack.iab.mraid.h.a
        public final void a(int i) {
            MraidLog.d(MraidView.TAG, "Callback: onError (" + i + ")");
            if (MraidView.this.listener != null) {
                MraidView.this.listener.onError(MraidView.this, i);
            }
        }

        @Override // com.explorestack.iab.mraid.h.a
        public final void a(com.explorestack.iab.mraid.b bVar) {
            MraidLog.d(MraidView.TAG, "Callback: onOrientation ".concat(String.valueOf(bVar)));
            if (MraidView.this.isInterstitial() || MraidView.this.state == g.EXPANDED) {
                MraidView.this.applyOrientation(bVar);
            }
        }

        @Override // com.explorestack.iab.mraid.h.a
        public final void a(d dVar) {
            MraidLog.d(MraidView.TAG, "Callback: onResize (" + dVar + ")");
            MraidView.this.handleResize(dVar);
        }

        @Override // com.explorestack.iab.mraid.h.a
        public final void b() {
            MraidLog.d(MraidView.TAG, "Callback: onClose");
            MraidView.this.handleClose();
        }

        @Override // com.explorestack.iab.mraid.h.a
        public final void b(String str) {
            MraidLog.d(MraidView.TAG, "Callback: onOpen (" + str + ")");
            MraidView.this.handleOpen(str);
        }

        @Override // com.explorestack.iab.mraid.h.a
        public final void c(String str) {
            MraidLog.d(MraidView.TAG, "Callback: onExpand ".concat(String.valueOf(str)));
            if (!MraidView.this.isInterstitial()) {
                MraidView.this.handleExpand(str);
            }
        }

        @Override // com.explorestack.iab.mraid.h.a
        public final void d(String str) {
            MraidLog.d(MraidView.TAG, "Callback: playVideo ".concat(String.valueOf(str)));
            try {
                String decode = URLDecoder.decode(str, "UTF-8");
                if (MraidView.this.listener != null) {
                    MraidView.this.listener.onPlayVideo(MraidView.this, decode);
                }
            } catch (UnsupportedEncodingException e) {
                e.printStackTrace();
            }
        }
    }

    private MraidView(Context context, a aVar) {
        super(context);
        this.state = g.LOADING;
        this.isReadyNotified = false;
        this.isShownNotified = false;
        this.isOpenNotified = false;
        this.isUseCustomCloseCalled = false;
        MutableContextWrapper mutableContextWrapper = new MutableContextWrapper(context);
        this.contextWrapper = mutableContextWrapper;
        this.listener = aVar.e;
        this.placement = aVar.f19116a;
        this.baseUrl = aVar.f19117b;
        this.productLink = aVar.f19118c;
        this.closeTimeSec = aVar.j;
        float f = aVar.k;
        this.durationSec = f;
        this.isTag = aVar.l;
        this.preload = aVar.m;
        this.forceUseNativeCloseButton = aVar.n;
        this.r1 = aVar.o;
        this.r2 = aVar.p;
        this.closeStyle = aVar.f;
        this.countDownStyle = aVar.g;
        this.loadingStyle = aVar.h;
        com.explorestack.iab.utils.h hVar = aVar.i;
        this.progressStyle = hVar;
        this.nativeFeatureManager = new com.explorestack.iab.mraid.a(aVar.f19119d);
        this.screenMetrics = new e(context);
        this.viewOnScreenObserver = new i();
        this.scrollPreventGestureDetector = new GestureDetector(context, new GestureDetector.SimpleOnGestureListener() { // from class: com.explorestack.iab.mraid.MraidView.1
            @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
            public final boolean onScroll(MotionEvent motionEvent, MotionEvent motionEvent2, float f2, float f3) {
                return true;
            }
        });
        h hVar2 = new h(mutableContextWrapper, new b() { // from class: com.explorestack.iab.mraid.MraidView.2
            @Override // com.explorestack.iab.mraid.h.a
            public final void a(String str) {
                MraidView.this.handlePageLoaded(str);
            }

            @Override // com.explorestack.iab.mraid.h.a
            public final void a(boolean z) {
                if (!MraidView.this.forceUseNativeCloseButton) {
                    if (z && !MraidView.this.isUseCustomCloseCalled) {
                        MraidView.this.isUseCustomCloseCalled = true;
                    }
                    MraidView mraidView = MraidView.this;
                    mraidView.syncCustomClose(mraidView.primaryController);
                }
            }

            @Override // com.explorestack.iab.mraid.h.a
            public final void b(boolean z) {
                if (z) {
                    MraidView.this.notifyReady();
                    if (!MraidView.this.isShownNotified) {
                        MraidView.this.isShownNotified = true;
                        if (MraidView.this.listener != null) {
                            MraidView.this.listener.onShown(MraidView.this);
                        }
                    }
                }
            }
        });
        this.primaryController = hVar2;
        addView(hVar2.f19143b, new FrameLayout.LayoutParams(-1, -1, 17));
        if (f > BitmapDescriptorFactory.HUE_RED) {
            l lVar = new l(null);
            this.progressWrapper = lVar;
            lVar.a(context, (ViewGroup) this, hVar);
            n nVar = new n(this, new n.a() { // from class: com.explorestack.iab.mraid.MraidView.3
                @Override // com.explorestack.iab.utils.n.a
                public final void a() {
                    MraidView.this.progressWrapper.d();
                    if (!MraidView.this.isOpenNotified && MraidView.this.r2 && MraidView.this.durationSec > BitmapDescriptorFactory.HUE_RED) {
                        MraidView.this.handleRedirect();
                    }
                }

                @Override // com.explorestack.iab.utils.n.a
                public final void a(float f2, long j, long j2) {
                    int i = (int) (j / 1000);
                    MraidView.this.progressWrapper.a(f2, i, (int) (j2 / 1000));
                }
            });
            this.progressHelper = nVar;
            if (nVar.f19196c != f) {
                nVar.f19196c = f;
                nVar.f19197d = f * 1000.0f;
                nVar.a();
            }
        }
        setCloseClickListener(this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x006f, code lost:
        if (r9 != false) goto L_0x004e;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void applyOrientation(com.explorestack.iab.mraid.b r5) {
        /*
            r4 = this;
            r0 = r5
            if (r0 != 0) goto L_0x0005
            return
        L_0x0005:
            r0 = r4
            android.app.Activity r0 = r0.peekActivity()
            r6 = r0
            java.lang.String r0 = "MRAIDView"
            java.lang.String r1 = "applyOrientation: "
            r2 = r5
            java.lang.String r2 = java.lang.String.valueOf(r2)
            java.lang.String r1 = r1.concat(r2)
            com.explorestack.iab.mraid.MraidLog.d(r0, r1)
            r0 = r6
            if (r0 != 0) goto L_0x0026
            java.lang.String r0 = "MRAIDView"
            java.lang.String r1 = "no any interacted activities"
            com.explorestack.iab.mraid.MraidLog.d(r0, r1)
            return
        L_0x0026:
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
            if (r0 != r1) goto L_0x0044
            r0 = 1
            r9 = r0
            goto L_0x0047
        L_0x0044:
            r0 = 0
            r9 = r0
        L_0x0047:
            r0 = r5
            int r0 = r0.f19129b
            if (r0 != 0) goto L_0x0053
        L_0x004e:
            r0 = 1
            r7 = r0
            goto L_0x0075
        L_0x0053:
            r0 = r8
            r7 = r0
            r0 = r5
            int r0 = r0.f19129b
            r1 = 1
            if (r0 == r1) goto L_0x0075
            r0 = r5
            boolean r0 = r0.f19128a
            if (r0 == 0) goto L_0x006a
            r0 = -1
            r7 = r0
            goto L_0x0075
        L_0x006a:
            r0 = r8
            r7 = r0
            r0 = r9
            if (r0 == 0) goto L_0x0075
            goto L_0x004e
        L_0x0075:
            r0 = r6
            r1 = r7
            r0.setRequestedOrientation(r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.explorestack.iab.mraid.MraidView.applyOrientation(com.explorestack.iab.mraid.b):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void closeExpanded() {
        detachContainer(this.expandedContainer);
        this.expandedContainer = null;
        Activity peekActivity = peekActivity();
        if (peekActivity != null) {
            restoreOrientation(peekActivity);
        }
        h hVar = this.secondaryController;
        if (hVar != null) {
            hVar.a();
            this.secondaryController = null;
        } else {
            addView(this.primaryController.f19143b);
        }
        setViewState(g.DEFAULT);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void closeResized() {
        detachContainer(this.resizedContainer);
        this.resizedContainer = null;
        addView(this.primaryController.f19143b);
        setViewState(g.DEFAULT);
    }

    private void detachContainer(View view) {
        if (view != null) {
            if (view instanceof ViewGroup) {
                ((ViewGroup) view).removeAllViews();
            }
            Utils.b(view);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleExpand(String str) {
        h hVar;
        if (!isInterstitial()) {
            if (this.state == g.DEFAULT || this.state == g.RESIZED) {
                if (str == null) {
                    hVar = this.primaryController;
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
                        h hVar2 = new h(this.contextWrapper, new b() { // from class: com.explorestack.iab.mraid.MraidView.6
                            @Override // com.explorestack.iab.mraid.h.a
                            public final void a(String str3) {
                                MraidView.this.handlePartTwoLoaded();
                            }

                            @Override // com.explorestack.iab.mraid.h.a
                            public final void a(boolean z) {
                                if (MraidView.this.secondaryController != null) {
                                    MraidView mraidView = MraidView.this;
                                    mraidView.syncCustomClose(mraidView.secondaryController);
                                }
                            }

                            @Override // com.explorestack.iab.mraid.h.a
                            public final void b(boolean z) {
                            }
                        });
                        this.secondaryController = hVar2;
                        hVar2.f19144c = false;
                        hVar2.f19143b.loadUrl(str2);
                        hVar = hVar2;
                    } catch (UnsupportedEncodingException e) {
                        return;
                    }
                }
                CloseableLayout closeableLayout = this.expandedContainer;
                if (closeableLayout == null || closeableLayout.getParent() == null) {
                    View b2 = f.b(peekContext(), this);
                    if (!(b2 instanceof ViewGroup)) {
                        MraidLog.b(TAG, "Can't add resized view because can't find required parent");
                        return;
                    }
                    CloseableLayout closeableLayout2 = new CloseableLayout(getContext());
                    this.expandedContainer = closeableLayout2;
                    closeableLayout2.setCloseClickListener(this);
                    ((ViewGroup) b2).addView(this.expandedContainer);
                }
                MraidWebView mraidWebView = hVar.f19143b;
                Utils.b(mraidWebView);
                this.expandedContainer.addView(mraidWebView);
                prepareFullscreenBehavior(this.expandedContainer, hVar);
                applyOrientation(hVar.f);
                setViewState(g.EXPANDED);
                MraidViewListener mraidViewListener = this.listener;
                if (mraidViewListener != null) {
                    mraidViewListener.onExpand(this);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleMotionClick(int i, int i2, h hVar, Runnable runnable) {
        if (!this.isOpenNotified) {
            handleMotionClick(hVar.f19143b, i, i2);
            this.currentOpenRunnable = runnable;
            postDelayed(runnable, 150L);
        }
    }

    private void handleMotionClick(MraidWebView mraidWebView, int i, int i2) {
        mraidWebView.dispatchTouchEvent(obtainMotionEvent(0, i, i2));
        mraidWebView.dispatchTouchEvent(obtainMotionEvent(1, i, i2));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleOpenProductLink() {
        if (!this.isOpenNotified && !TextUtils.isEmpty(this.productLink)) {
            handleOpen(this.productLink);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handlePageLoaded(String str) {
        if (this.state == g.LOADING) {
            this.primaryController.a(this.nativeFeatureManager);
            this.primaryController.a(this.placement);
            h hVar = this.primaryController;
            hVar.a(hVar.f19143b.f19123b);
            syncScreenMetrics(this.primaryController.f19143b);
            setViewState(g.DEFAULT);
            notifyReady();
            setLoadingVisible(false);
            if (isInterstitial()) {
                prepareFullscreenBehavior(this, this.primaryController);
            }
            if (this.listener != null && this.preload && !this.isTag && !str.equals("data:text/html,<html></html>")) {
                this.listener.onLoaded(this);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handlePartTwoLoaded() {
        if (this.secondaryController != null) {
            updateMetrics(new Runnable() { // from class: com.explorestack.iab.mraid.MraidView.8
                @Override // java.lang.Runnable
                public final void run() {
                    MraidView.this.secondaryController.a(MraidView.this.nativeFeatureManager);
                    MraidView.this.secondaryController.a(MraidView.this.placement);
                    MraidView.this.secondaryController.a(MraidView.this.secondaryController.f19143b.f19123b);
                    MraidView.this.secondaryController.a(MraidView.this.state);
                    MraidView.this.secondaryController.a("mraid.fireReadyEvent();");
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleRedirect() {
        h hVar = this.secondaryController;
        if (hVar == null) {
            hVar = this.primaryController;
        }
        AnonymousClass5 r0 = new AnonymousClass5(hVar);
        Point c2 = Utils.c(this.screenMetrics.f19135b);
        handleMotionClick(c2.x, c2.y, hVar, r0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleResize(d dVar) {
        if (this.state == g.LOADING || this.state == g.HIDDEN || this.state == g.EXPANDED || this.placement == c.INTERSTITIAL) {
            MraidLog.d(TAG, "Callback: onResize (invalidate state: " + this.state + ")");
            return;
        }
        CloseableLayout closeableLayout = this.resizedContainer;
        if (closeableLayout == null || closeableLayout.getParent() == null) {
            View b2 = f.b(peekContext(), this);
            if (!(b2 instanceof ViewGroup)) {
                MraidLog.b(TAG, "Can't add resized view because can't find required parent");
                return;
            }
            CloseableLayout closeableLayout2 = new CloseableLayout(getContext());
            this.resizedContainer = closeableLayout2;
            closeableLayout2.setCloseClickListener(this);
            ((ViewGroup) b2).addView(this.resizedContainer);
        }
        MraidWebView mraidWebView = this.primaryController.f19143b;
        Utils.b(mraidWebView);
        this.resizedContainer.addView(mraidWebView);
        com.explorestack.iab.utils.h resolveDefCloseStyle = Assets.resolveDefCloseStyle(getContext(), this.closeStyle);
        resolveDefCloseStyle.e = Integer.valueOf(dVar.e.getGravity() & 7);
        resolveDefCloseStyle.f = Integer.valueOf(dVar.e.getGravity() & 112);
        this.resizedContainer.setCloseStyle(resolveDefCloseStyle);
        this.resizedContainer.setCloseVisibility(false, this.closeTimeSec);
        setResizedViewSizeAndPosition(dVar);
        setViewState(g.RESIZED);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleScriptClick(int i, int i2, h hVar, Runnable runnable) {
        if (!this.isOpenNotified) {
            hVar.a(String.format("(function click(x, y) {var ev = new MouseEvent('click', {    'view': window,    'bubbles': true,    'cancelable': true,    'screenX': x,    'screenY': y});var el = document.elementFromPoint(x, y);if (el !== null) {      el.dispatchEvent(ev); }})(%s, %s)", Integer.valueOf(i), Integer.valueOf(i2)));
            this.currentOpenRunnable = runnable;
            postDelayed(runnable, 150L);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isInterstitial() {
        return this.placement == c.INTERSTITIAL;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void notifyReady() {
        if (!this.isReadyNotified) {
            this.isReadyNotified = true;
            this.primaryController.a("mraid.fireReadyEvent();");
        }
    }

    private MotionEvent obtainMotionEvent(int i, int i2, int i3) {
        return MotionEvent.obtain(SystemClock.uptimeMillis(), SystemClock.uptimeMillis(), i, i2, i3, 0);
    }

    private Context peekContext() {
        Activity peekActivity = peekActivity();
        Context context = peekActivity;
        if (peekActivity == null) {
            context = getContext();
        }
        return context;
    }

    private void performLoad(String str) {
        if (str == null && this.baseUrl == null) {
            MraidViewListener mraidViewListener = this.listener;
            if (mraidViewListener != null) {
                mraidViewListener.onError(this, 0);
                return;
            }
            return;
        }
        h hVar = this.primaryController;
        String str2 = this.baseUrl;
        String format = String.format("<script type='application/javascript'>%s</script>%s", f.a(), f.b(str));
        hVar.f19144c = false;
        hVar.f19143b.loadDataWithBaseURL(str2, format, Mimetypes.MIMETYPE_HTML, "UTF-8", null);
        h hVar2 = this.primaryController;
        Logger.LogLevel a2 = MraidLog.a();
        if (a2 == Logger.LogLevel.debug) {
            hVar2.a("mraid.logLevel = mraid.LogLevelEnum.DEBUG;");
        } else if (a2 == Logger.LogLevel.info) {
            hVar2.a("mraid.logLevel = mraid.LogLevelEnum.INFO;");
        } else if (a2 == Logger.LogLevel.warning) {
            hVar2.a("mraid.logLevel = mraid.LogLevelEnum.WARNING;");
        } else if (a2 == Logger.LogLevel.error) {
            hVar2.a("mraid.logLevel = mraid.LogLevelEnum.ERROR;");
        } else if (a2 == Logger.LogLevel.none) {
            hVar2.a("mraid.logLevel = mraid.LogLevelEnum.NONE;");
        }
    }

    private void prepareFullscreenBehavior(CloseableLayout closeableLayout, h hVar) {
        closeableLayout.setCloseStyle(this.closeStyle);
        closeableLayout.setCountDownStyle(this.countDownStyle);
        syncCustomClose(hVar);
    }

    private void restoreOrientation(Activity activity) {
        Integer num = this.storedOrientation;
        if (num != null) {
            activity.setRequestedOrientation(num.intValue());
            this.storedOrientation = null;
        }
    }

    private void setResizedViewSizeAndPosition(d dVar) {
        MraidLog.d(TAG, "setResizedViewSizeAndPosition: ".concat(String.valueOf(dVar)));
        if (this.resizedContainer != null) {
            int a2 = Utils.a(getContext(), dVar.f19130a);
            int a3 = Utils.a(getContext(), dVar.f19131b);
            int a4 = Utils.a(getContext(), dVar.f19132c);
            int a5 = Utils.a(getContext(), dVar.f19133d);
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(a2, a3);
            Rect rect = this.screenMetrics.g;
            int i = rect.left;
            int i2 = rect.top;
            layoutParams.leftMargin = i + a4;
            layoutParams.topMargin = i2 + a5;
            this.resizedContainer.setLayoutParams(layoutParams);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setViewState(g gVar) {
        this.state = gVar;
        this.primaryController.a(gVar);
        h hVar = this.secondaryController;
        if (hVar != null) {
            hVar.a(gVar);
        }
        if (gVar != g.HIDDEN) {
            updateMetrics(null);
        }
    }

    private void storeOrientation(Activity activity) {
        this.storedOrientation = Integer.valueOf(activity.getRequestedOrientation());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void syncCustomClose(h hVar) {
        boolean z = !hVar.f19145d || this.forceUseNativeCloseButton;
        CloseableLayout closeableLayout = this.resizedContainer;
        if (closeableLayout != null) {
            closeableLayout.setCloseVisibility(z, this.closeTimeSec);
            return;
        }
        CloseableLayout closeableLayout2 = this.expandedContainer;
        if (closeableLayout2 != null) {
            closeableLayout2.setCloseVisibility(z, this.closeTimeSec);
        } else if (isInterstitial()) {
            setCloseVisibility(z, this.isUseCustomCloseCalled ? BitmapDescriptorFactory.HUE_RED : this.closeTimeSec);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void syncScreenMetrics(View view) {
        Context peekContext = peekContext();
        DisplayMetrics displayMetrics = peekContext.getResources().getDisplayMetrics();
        e eVar = this.screenMetrics;
        int i = displayMetrics.widthPixels;
        int i2 = displayMetrics.heightPixels;
        if (!(eVar.f19134a.width() == i && eVar.f19134a.height() == i2)) {
            eVar.f19134a.set(0, 0, i, i2);
            eVar.a(eVar.f19134a, eVar.f19135b);
        }
        int[] iArr = new int[2];
        View a2 = f.a(peekContext, this);
        a2.getLocationOnScreen(iArr);
        e eVar2 = this.screenMetrics;
        eVar2.a(eVar2.f19136c, eVar2.f19137d, iArr[0], iArr[1], a2.getWidth(), a2.getHeight());
        getLocationOnScreen(iArr);
        e eVar3 = this.screenMetrics;
        eVar3.a(eVar3.g, eVar3.h, iArr[0], iArr[1], getWidth(), getHeight());
        view.getLocationOnScreen(iArr);
        e eVar4 = this.screenMetrics;
        eVar4.a(eVar4.e, eVar4.f, iArr[0], iArr[1], view.getWidth(), view.getHeight());
        this.primaryController.a(this.screenMetrics);
        h hVar = this.secondaryController;
        if (hVar != null) {
            hVar.a(this.screenMetrics);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateMetrics(final Runnable runnable) {
        h hVar = this.secondaryController;
        final MraidWebView mraidWebView = hVar != null ? hVar.f19143b : this.primaryController.f19143b;
        i iVar = this.viewOnScreenObserver;
        iVar.a();
        iVar.f19149a = new i.a(new View[]{this, mraidWebView});
        i.a aVar = iVar.f19149a;
        aVar.f19151b = new Runnable() { // from class: com.explorestack.iab.mraid.MraidView.9
            @Override // java.lang.Runnable
            public final void run() {
                MraidView.this.syncScreenMetrics(mraidWebView);
                Runnable runnable2 = runnable;
                if (runnable2 != null) {
                    runnable2.run();
                }
            }
        };
        aVar.f19152c = aVar.f19150a.length;
        Utils.b(aVar.f19153d);
    }

    @Override // com.explorestack.iab.mraid.CloseableLayout
    public boolean canBeClosed() {
        if (getOnScreenTimeMs() > f.f19138a || this.primaryController.e) {
            return true;
        }
        if (this.forceUseNativeCloseButton || !this.primaryController.f19145d) {
            return super.canBeClosed();
        }
        return false;
    }

    @Override // com.explorestack.iab.utils.c
    public void clickHandleCanceled() {
        setLoadingVisible(false);
    }

    public void clickHandleError() {
        setLoadingVisible(false);
    }

    @Override // com.explorestack.iab.utils.c
    public void clickHandled() {
        setLoadingVisible(false);
    }

    public void destroy() {
        this.listener = null;
        this.lastInteractedActivity = null;
        this.viewOnScreenObserver.a();
        Activity peekActivity = peekActivity();
        if (peekActivity != null) {
            restoreOrientation(peekActivity);
        }
        detachContainer(this.resizedContainer);
        detachContainer(this.expandedContainer);
        this.primaryController.a();
        h hVar = this.secondaryController;
        if (hVar != null) {
            hVar.a();
        }
        n nVar = this.progressHelper;
        if (nVar != null) {
            nVar.b();
            nVar.f19194a.getViewTreeObserver().removeGlobalOnLayoutListener(nVar.f);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void handleClose() {
        if (this.isOpenNotified || !this.r1) {
            post(new Runnable() { // from class: com.explorestack.iab.mraid.MraidView.4
                @Override // java.lang.Runnable
                public final void run() {
                    if (MraidView.this.state == g.RESIZED) {
                        MraidView.this.closeResized();
                    } else if (MraidView.this.state == g.EXPANDED) {
                        MraidView.this.closeExpanded();
                    } else if (MraidView.this.isInterstitial()) {
                        MraidView.this.setViewState(g.HIDDEN);
                        if (MraidView.this.listener != null) {
                            MraidView.this.listener.onClose(MraidView.this);
                        }
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
        if (this.listener != null && !str.startsWith(MRAIDNativeFeature.TEL) && !str.startsWith(MRAIDNativeFeature.SMS)) {
            setLoadingVisible(true);
            this.listener.onOpenBrowser(this, str, this);
        }
    }

    public void load(String str) {
        if (this.preload) {
            performLoad(str);
            return;
        }
        this.pendingHtmlData = str;
        MraidViewListener mraidViewListener = this.listener;
        if (mraidViewListener != null) {
            mraidViewListener.onLoaded(this);
        }
    }

    @Override // com.explorestack.iab.mraid.CloseableLayout.c
    public void onCloseClick() {
        handleClose();
    }

    @Override // android.view.View
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        MraidLog.d(TAG, "onConfigurationChanged: " + Utils.a(configuration.orientation));
        post(new Runnable() { // from class: com.explorestack.iab.mraid.MraidView.7
            @Override // java.lang.Runnable
            public final void run() {
                MraidView.this.updateMetrics(null);
            }
        });
    }

    @Override // com.explorestack.iab.mraid.CloseableLayout.c
    public void onCountDownFinish() {
        if (!this.isOpenNotified && this.r2 && this.durationSec == BitmapDescriptorFactory.HUE_RED) {
            handleRedirect();
        }
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
        if (z) {
            if (this.loadingWrapper == null) {
                j jVar = new j(null);
                this.loadingWrapper = jVar;
                jVar.a(getContext(), (ViewGroup) this, this.loadingStyle);
            }
            this.loadingWrapper.a(0);
            this.loadingWrapper.b();
            return;
        }
        j jVar2 = this.loadingWrapper;
        if (jVar2 != null) {
            jVar2.a(8);
        }
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
        applyOrientation(this.primaryController.f);
    }
}
