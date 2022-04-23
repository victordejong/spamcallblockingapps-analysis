package com.mopub.mraid;

import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.graphics.Rect;
import android.net.Uri;
import android.os.Handler;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.WindowManager;
import android.webkit.ConsoleMessage;
import android.webkit.JsResult;
import android.widget.FrameLayout;
import com.mopub.common.AdReport;
import com.mopub.common.CloseableLayout;
import com.mopub.common.ExternalViewabilitySessionManager;
import com.mopub.common.Preconditions;
import com.mopub.common.UrlAction;
import com.mopub.common.UrlHandler;
import com.mopub.common.VisibleForTesting;
import com.mopub.common.logging.MoPubLog;
import com.mopub.common.util.DeviceUtils;
import com.mopub.common.util.Dips;
import com.mopub.common.util.ManifestUtils;
import com.mopub.common.util.Utils;
import com.mopub.common.util.Views;
import com.mopub.mobileads.BaseVideoPlayerActivity;
import com.mopub.mobileads.BaseWebView;
import com.mopub.mobileads.MoPubErrorCode;
import com.mopub.mobileads.util.WebViews;
import com.mopub.mraid.MraidBridge;
import java.lang.ref.WeakReference;
import java.net.URI;
import java.util.EnumSet;
import p131c.p421j.p425c.C6666a;
/* loaded from: classes2-dex2jar.jar:com/mopub/mraid/MraidController.class */
public class MraidController {

    /* renamed from: a */
    public final AdReport f34565a;

    /* renamed from: b */
    public WeakReference<Activity> f34566b;

    /* renamed from: c */
    public final Context f34567c;

    /* renamed from: d */
    public final PlacementType f34568d;

    /* renamed from: e */
    public final FrameLayout f34569e;

    /* renamed from: f */
    public final CloseableLayout f34570f;

    /* renamed from: g */
    public ViewGroup f34571g;

    /* renamed from: h */
    public final C8906i f34572h;

    /* renamed from: i */
    public final C6666a f34573i;

    /* renamed from: j */
    public ViewState f34574j;

    /* renamed from: k */
    public MraidListener f34575k;

    /* renamed from: l */
    public UseCustomCloseListener f34576l;

    /* renamed from: m */
    public MraidWebViewDebugListener f34577m;

    /* renamed from: n */
    public MraidBridge.MraidWebView f34578n;

    /* renamed from: o */
    public MraidBridge.MraidWebView f34579o;

    /* renamed from: p */
    public final MraidBridge f34580p;

    /* renamed from: q */
    public final MraidBridge f34581q;

    /* renamed from: r */
    public C8905h f34582r;

    /* renamed from: s */
    public Integer f34583s;

    /* renamed from: t */
    public UrlHandler.MoPubSchemeListener f34584t;

    /* renamed from: u */
    public boolean f34585u;

    /* renamed from: v */
    public MraidOrientation f34586v;

    /* renamed from: w */
    public final MraidNativeCommandHandler f34587w;

    /* renamed from: x */
    public boolean f34588x;

    /* renamed from: y */
    public final MraidBridge.MraidBridgeListener f34589y;

    /* renamed from: z */
    public final MraidBridge.MraidBridgeListener f34590z;

    /* loaded from: classes2-dex2jar.jar:com/mopub/mraid/MraidController$MraidListener.class */
    public interface MraidListener {
        void onClose();

        void onExpand();

        void onFailedToLoad();

        void onLoaded(View view);

        void onOpen();

        void onRenderProcessGone(MoPubErrorCode moPubErrorCode);

        void onResize(boolean z);
    }

    /* loaded from: classes2-dex2jar.jar:com/mopub/mraid/MraidController$MraidWebViewCacheListener.class */
    public interface MraidWebViewCacheListener {
        void onReady(MraidBridge.MraidWebView mraidWebView, ExternalViewabilitySessionManager externalViewabilitySessionManager);
    }

    /* loaded from: classes2-dex2jar.jar:com/mopub/mraid/MraidController$UseCustomCloseListener.class */
    public interface UseCustomCloseListener {
        void useCustomCloseChanged(boolean z);
    }

    /* renamed from: com.mopub.mraid.MraidController$a */
    /* loaded from: classes2-dex2jar.jar:com/mopub/mraid/MraidController$a.class */
    public class C8898a implements UrlHandler.MoPubSchemeListener {
        public C8898a() {
        }

        @Override // com.mopub.common.UrlHandler.MoPubSchemeListener
        public void onClose() {
        }

        @Override // com.mopub.common.UrlHandler.MoPubSchemeListener
        public void onCrash() {
            if (MraidController.this.f34578n != null) {
                MraidController.this.f34578n.loadUrl("chrome://crash");
            }
        }

        @Override // com.mopub.common.UrlHandler.MoPubSchemeListener
        public void onFailLoad() {
        }

        @Override // com.mopub.common.UrlHandler.MoPubSchemeListener
        public void onFinishLoad() {
        }
    }

    /* renamed from: com.mopub.mraid.MraidController$b */
    /* loaded from: classes2-dex2jar.jar:com/mopub/mraid/MraidController$b.class */
    public class C8899b implements CloseableLayout.OnCloseListener {
        public C8899b() {
        }

        @Override // com.mopub.common.CloseableLayout.OnCloseListener
        public void onClose() {
            MraidController.this.mo4035h();
        }
    }

    /* renamed from: com.mopub.mraid.MraidController$c */
    /* loaded from: classes2-dex2jar.jar:com/mopub/mraid/MraidController$c.class */
    public class View$OnTouchListenerC8900c implements View.OnTouchListener {
        public View$OnTouchListenerC8900c(MraidController mraidController) {
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            return true;
        }
    }

    /* renamed from: com.mopub.mraid.MraidController$d */
    /* loaded from: classes2-dex2jar.jar:com/mopub/mraid/MraidController$d.class */
    public class C8901d implements MraidBridge.MraidBridgeListener {
        public C8901d() {
        }

        @Override // com.mopub.mraid.MraidBridge.MraidBridgeListener
        public void onClose() {
            MraidController.this.mo4035h();
        }

        @Override // com.mopub.mraid.MraidBridge.MraidBridgeListener
        public boolean onConsoleMessage(ConsoleMessage consoleMessage) {
            return MraidController.this.m4091a(consoleMessage);
        }

        @Override // com.mopub.mraid.MraidBridge.MraidBridgeListener
        public void onExpand(URI uri, boolean z) throws MraidCommandException {
            MraidController.this.m4082a(uri, z);
        }

        @Override // com.mopub.mraid.MraidBridge.MraidBridgeListener
        public boolean onJsAlert(String str, JsResult jsResult) {
            return MraidController.this.m4083a(str, jsResult);
        }

        @Override // com.mopub.mraid.MraidBridge.MraidBridgeListener
        public void onOpen(URI uri) {
            MraidController.this.m4084a(uri.toString());
        }

        @Override // com.mopub.mraid.MraidBridge.MraidBridgeListener
        public void onPageFailedToLoad() {
            if (MraidController.this.f34575k != null) {
                MraidController.this.f34575k.onFailedToLoad();
            }
        }

        @Override // com.mopub.mraid.MraidBridge.MraidBridgeListener
        public void onPageLoaded() {
            MraidController.this.m4065i();
            if (MraidController.this.f34575k != null) {
                MraidController.this.f34575k.onLoaded(MraidController.this.f34569e);
            }
        }

        @Override // com.mopub.mraid.MraidBridge.MraidBridgeListener
        public void onPlayVideo(URI uri) {
            MraidController.this.m4077b(uri.toString());
        }

        @Override // com.mopub.mraid.MraidBridge.MraidBridgeListener
        public void onRenderProcessGone(MoPubErrorCode moPubErrorCode) {
            MraidController.this.m4090a(moPubErrorCode);
        }

        @Override // com.mopub.mraid.MraidBridge.MraidBridgeListener
        public void onResize(int i, int i2, int i3, int i4, CloseableLayout.ClosePosition closePosition, boolean z) throws MraidCommandException {
            MraidController.this.m4092a(i, i2, i3, i4, closePosition, z);
        }

        @Override // com.mopub.mraid.MraidBridge.MraidBridgeListener
        public void onSetOrientationProperties(boolean z, MraidOrientation mraidOrientation) throws MraidCommandException {
            MraidController.this.m4081a(z, mraidOrientation);
        }

        @Override // com.mopub.mraid.MraidBridge.MraidBridgeListener
        public void onUseCustomClose(boolean z) {
            MraidController.this.mo4036a(z);
        }

        @Override // com.mopub.mraid.MraidBridge.MraidBridgeListener
        public void onVisibilityChanged(boolean z) {
            if (!MraidController.this.f34581q.m4106c()) {
                MraidController.this.f34580p.m4112a(z);
            }
        }
    }

    /* renamed from: com.mopub.mraid.MraidController$e */
    /* loaded from: classes2-dex2jar.jar:com/mopub/mraid/MraidController$e.class */
    public class C8902e implements MraidBridge.MraidBridgeListener {
        public C8902e() {
        }

        @Override // com.mopub.mraid.MraidBridge.MraidBridgeListener
        public void onClose() {
            MraidController.this.mo4035h();
        }

        @Override // com.mopub.mraid.MraidBridge.MraidBridgeListener
        public boolean onConsoleMessage(ConsoleMessage consoleMessage) {
            return MraidController.this.m4091a(consoleMessage);
        }

        @Override // com.mopub.mraid.MraidBridge.MraidBridgeListener
        public void onExpand(URI uri, boolean z) {
        }

        @Override // com.mopub.mraid.MraidBridge.MraidBridgeListener
        public boolean onJsAlert(String str, JsResult jsResult) {
            return MraidController.this.m4083a(str, jsResult);
        }

        @Override // com.mopub.mraid.MraidBridge.MraidBridgeListener
        public void onOpen(URI uri) {
            MraidController.this.m4084a(uri.toString());
        }

        @Override // com.mopub.mraid.MraidBridge.MraidBridgeListener
        public void onPageFailedToLoad() {
        }

        @Override // com.mopub.mraid.MraidBridge.MraidBridgeListener
        public void onPageLoaded() {
            MraidController.this.m4063j();
        }

        @Override // com.mopub.mraid.MraidBridge.MraidBridgeListener
        public void onPlayVideo(URI uri) {
            MraidController.this.m4077b(uri.toString());
        }

        @Override // com.mopub.mraid.MraidBridge.MraidBridgeListener
        public void onRenderProcessGone(MoPubErrorCode moPubErrorCode) {
            MraidController.this.m4090a(moPubErrorCode);
        }

        @Override // com.mopub.mraid.MraidBridge.MraidBridgeListener
        public void onResize(int i, int i2, int i3, int i4, CloseableLayout.ClosePosition closePosition, boolean z) throws MraidCommandException {
            throw new MraidCommandException("Not allowed to resize from an expanded state");
        }

        @Override // com.mopub.mraid.MraidBridge.MraidBridgeListener
        public void onSetOrientationProperties(boolean z, MraidOrientation mraidOrientation) throws MraidCommandException {
            MraidController.this.m4081a(z, mraidOrientation);
        }

        @Override // com.mopub.mraid.MraidBridge.MraidBridgeListener
        public void onUseCustomClose(boolean z) {
            MraidController.this.mo4036a(z);
        }

        @Override // com.mopub.mraid.MraidBridge.MraidBridgeListener
        public void onVisibilityChanged(boolean z) {
            MraidController.this.f34580p.m4112a(z);
            MraidController.this.f34581q.m4112a(z);
        }
    }

    /* renamed from: com.mopub.mraid.MraidController$f */
    /* loaded from: classes2-dex2jar.jar:com/mopub/mraid/MraidController$f.class */
    public class RunnableC8903f implements Runnable {
        public RunnableC8903f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            MraidBridge mraidBridge = MraidController.this.f34581q;
            boolean a = MraidController.this.f34587w.m4047a(MraidController.this.f34567c);
            boolean b = MraidController.this.f34587w.m4046b(MraidController.this.f34567c);
            MraidNativeCommandHandler unused = MraidController.this.f34587w;
            boolean c = MraidNativeCommandHandler.m4045c(MraidController.this.f34567c);
            MraidNativeCommandHandler unused2 = MraidController.this.f34587w;
            mraidBridge.m4111a(a, b, c, MraidNativeCommandHandler.isStorePictureSupported(MraidController.this.f34567c), MraidController.this.m4061k());
            MraidController.this.f34581q.m4117a(MraidController.this.f34574j);
            MraidController.this.f34581q.m4118a(MraidController.this.f34568d);
            MraidController.this.f34581q.m4112a(MraidController.this.f34581q.m4099f());
            MraidController.this.f34581q.m4097g();
        }
    }

    /* renamed from: com.mopub.mraid.MraidController$g */
    /* loaded from: classes2-dex2jar.jar:com/mopub/mraid/MraidController$g.class */
    public class RunnableC8904g implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ View f34596a;

        /* renamed from: b */
        public final /* synthetic */ Runnable f34597b;

        public RunnableC8904g(View view, Runnable runnable) {
            this.f34596a = view;
            this.f34597b = runnable;
        }

        @Override // java.lang.Runnable
        public void run() {
            DisplayMetrics displayMetrics = MraidController.this.f34567c.getResources().getDisplayMetrics();
            MraidController.this.f34573i.m20118a(displayMetrics.widthPixels, displayMetrics.heightPixels);
            int[] iArr = new int[2];
            ViewGroup f = MraidController.this.m4070f();
            f.getLocationOnScreen(iArr);
            MraidController.this.f34573i.m20112c(iArr[0], iArr[1], f.getWidth(), f.getHeight());
            MraidController.this.f34569e.getLocationOnScreen(iArr);
            MraidController.this.f34573i.m20114b(iArr[0], iArr[1], MraidController.this.f34569e.getWidth(), MraidController.this.f34569e.getHeight());
            this.f34596a.getLocationOnScreen(iArr);
            MraidController.this.f34573i.m20117a(iArr[0], iArr[1], this.f34596a.getWidth(), this.f34596a.getHeight());
            MraidController.this.f34580p.notifyScreenMetrics(MraidController.this.f34573i);
            if (MraidController.this.f34581q.m4106c()) {
                MraidController.this.f34581q.notifyScreenMetrics(MraidController.this.f34573i);
            }
            Runnable runnable = this.f34597b;
            if (runnable != null) {
                runnable.run();
            }
        }
    }

    @VisibleForTesting
    /* renamed from: com.mopub.mraid.MraidController$h */
    /* loaded from: classes2-dex2jar.jar:com/mopub/mraid/MraidController$h.class */
    public class C8905h extends BroadcastReceiver {

        /* renamed from: a */
        public Context f34599a;

        /* renamed from: b */
        public int f34600b = -1;

        public C8905h() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            int e;
            if (this.f34599a != null && "android.intent.action.CONFIGURATION_CHANGED".equals(intent.getAction()) && (e = MraidController.this.m4072e()) != this.f34600b) {
                this.f34600b = e;
                MraidController.this.m4094a(e);
            }
        }

        public void register(Context context) {
            Preconditions.checkNotNull(context);
            Context applicationContext = context.getApplicationContext();
            this.f34599a = applicationContext;
            if (applicationContext != null) {
                applicationContext.registerReceiver(this, new IntentFilter("android.intent.action.CONFIGURATION_CHANGED"));
            }
        }

        public void unregister() {
            Context context = this.f34599a;
            if (context != null) {
                context.unregisterReceiver(this);
                this.f34599a = null;
            }
        }
    }

    @VisibleForTesting
    /* renamed from: com.mopub.mraid.MraidController$i */
    /* loaded from: classes2-dex2jar.jar:com/mopub/mraid/MraidController$i.class */
    public static class C8906i {

        /* renamed from: a */
        public final Handler f34602a = new Handler();

        /* renamed from: b */
        public C8907a f34603b;

        /* renamed from: com.mopub.mraid.MraidController$i$a */
        /* loaded from: classes2-dex2jar.jar:com/mopub/mraid/MraidController$i$a.class */
        public static class C8907a {

            /* renamed from: a */
            public final View[] f34604a;

            /* renamed from: b */
            public final Handler f34605b;

            /* renamed from: c */
            public Runnable f34606c;

            /* renamed from: d */
            public int f34607d;

            /* renamed from: e */
            public final Runnable f34608e;

            /* renamed from: com.mopub.mraid.MraidController$i$a$a */
            /* loaded from: classes2-dex2jar.jar:com/mopub/mraid/MraidController$i$a$a.class */
            public class RunnableC8908a implements Runnable {

                /* renamed from: com.mopub.mraid.MraidController$i$a$a$a */
                /* loaded from: classes2-dex2jar.jar:com/mopub/mraid/MraidController$i$a$a$a.class */
                public class ViewTreeObserver$OnPreDrawListenerC8909a implements ViewTreeObserver.OnPreDrawListener {

                    /* renamed from: a */
                    public final /* synthetic */ View f34610a;

                    public ViewTreeObserver$OnPreDrawListenerC8909a(View view) {
                        this.f34610a = view;
                    }

                    @Override // android.view.ViewTreeObserver.OnPreDrawListener
                    public boolean onPreDraw() {
                        this.f34610a.getViewTreeObserver().removeOnPreDrawListener(this);
                        C8907a.this.m4051b();
                        return true;
                    }
                }

                public RunnableC8908a() {
                }

                @Override // java.lang.Runnable
                public void run() {
                    View[] viewArr;
                    for (View view : C8907a.this.f34604a) {
                        if (view.getHeight() > 0 || view.getWidth() > 0) {
                            C8907a.this.m4051b();
                        } else {
                            view.getViewTreeObserver().addOnPreDrawListener(new ViewTreeObserver$OnPreDrawListenerC8909a(view));
                        }
                    }
                }
            }

            public C8907a(Handler handler, View[] viewArr) {
                this.f34608e = new RunnableC8908a();
                this.f34605b = handler;
                this.f34604a = viewArr;
            }

            public /* synthetic */ C8907a(Handler handler, View[] viewArr, C8898a aVar) {
                this(handler, viewArr);
            }

            /* renamed from: a */
            public void m4054a() {
                this.f34605b.removeCallbacks(this.f34608e);
                this.f34606c = null;
            }

            /* renamed from: a */
            public void m4052a(Runnable runnable) {
                this.f34606c = runnable;
                this.f34607d = this.f34604a.length;
                this.f34605b.post(this.f34608e);
            }

            /* renamed from: b */
            public final void m4051b() {
                Runnable runnable;
                int i = this.f34607d - 1;
                this.f34607d = i;
                if (i == 0 && (runnable = this.f34606c) != null) {
                    runnable.run();
                    this.f34606c = null;
                }
            }
        }

        /* renamed from: a */
        public C8907a m4055a(View... viewArr) {
            C8907a aVar = new C8907a(this.f34602a, viewArr, null);
            this.f34603b = aVar;
            return aVar;
        }

        /* renamed from: a */
        public void m4056a() {
            C8907a aVar = this.f34603b;
            if (aVar != null) {
                aVar.m4054a();
                this.f34603b = null;
            }
        }
    }

    public MraidController(Context context, AdReport adReport, PlacementType placementType) {
        this(context, adReport, placementType, new MraidBridge(adReport, placementType), new MraidBridge(adReport, PlacementType.INTERSTITIAL), new C8906i());
    }

    @VisibleForTesting
    public MraidController(Context context, AdReport adReport, PlacementType placementType, MraidBridge mraidBridge, MraidBridge mraidBridge2, C8906i iVar) {
        this.f34574j = ViewState.LOADING;
        this.f34582r = new C8905h();
        this.f34584t = new C8898a();
        this.f34585u = true;
        this.f34586v = MraidOrientation.NONE;
        this.f34588x = true;
        this.f34589y = new C8901d();
        this.f34590z = new C8902e();
        Context applicationContext = context.getApplicationContext();
        this.f34567c = applicationContext;
        Preconditions.checkNotNull(applicationContext);
        this.f34565a = adReport;
        if (context instanceof Activity) {
            this.f34566b = new WeakReference<>((Activity) context);
        } else {
            this.f34566b = new WeakReference<>(null);
        }
        this.f34568d = placementType;
        this.f34580p = mraidBridge;
        this.f34581q = mraidBridge2;
        this.f34572h = iVar;
        this.f34574j = ViewState.LOADING;
        this.f34573i = new C6666a(this.f34567c, this.f34567c.getResources().getDisplayMetrics().density);
        this.f34569e = new FrameLayout(this.f34567c);
        CloseableLayout closeableLayout = new CloseableLayout(this.f34567c);
        this.f34570f = closeableLayout;
        closeableLayout.setOnCloseListener(new C8899b());
        View view = new View(this.f34567c);
        view.setOnTouchListener(new View$OnTouchListenerC8900c(this));
        this.f34570f.addView(view, new FrameLayout.LayoutParams(-1, -1));
        this.f34582r.register(this.f34567c);
        this.f34580p.m4124a(this.f34589y);
        this.f34581q.m4124a(this.f34590z);
        this.f34587w = new MraidNativeCommandHandler();
    }

    @VisibleForTesting
    /* renamed from: a */
    public static void m4089a(MraidListener mraidListener, ViewState viewState, ViewState viewState2) {
        Preconditions.checkNotNull(mraidListener);
        Preconditions.checkNotNull(viewState);
        Preconditions.checkNotNull(viewState2);
        ViewState viewState3 = ViewState.EXPANDED;
        if (viewState2 == viewState3) {
            mraidListener.onExpand();
        } else if (viewState == viewState3 && viewState2 == ViewState.DEFAULT) {
            mraidListener.onClose();
        } else if (viewState2 == ViewState.HIDDEN) {
            mraidListener.onClose();
        } else if (viewState == ViewState.RESIZED && viewState2 == ViewState.DEFAULT) {
            mraidListener.onResize(true);
        } else if (viewState2 == ViewState.RESIZED) {
            mraidListener.onResize(false);
        }
    }

    /* renamed from: a */
    public int m4093a(int i, int i2, int i3) {
        return Math.max(i, Math.min(i2, i3));
    }

    @VisibleForTesting
    /* renamed from: a */
    public void m4095a() throws MraidCommandException {
        MraidOrientation mraidOrientation = this.f34586v;
        if (mraidOrientation != MraidOrientation.NONE) {
            m4079b(mraidOrientation.getActivityInfoOrientation());
        } else if (this.f34585u) {
            m4057m();
        } else {
            Activity activity = this.f34566b.get();
            if (activity != null) {
                m4079b(DeviceUtils.getScreenOrientation(activity));
                return;
            }
            throw new MraidCommandException("Unable to set MRAID expand orientation to 'none'; expected passed in Activity Context.");
        }
    }

    /* renamed from: a */
    public void m4094a(int i) {
        m4085a((Runnable) null);
    }

    @VisibleForTesting
    /* renamed from: a */
    public void m4092a(int i, int i2, int i3, int i4, CloseableLayout.ClosePosition closePosition, boolean z) throws MraidCommandException {
        if (this.f34578n != null) {
            ViewState viewState = this.f34574j;
            if (viewState != ViewState.LOADING && viewState != ViewState.HIDDEN) {
                if (viewState == ViewState.EXPANDED) {
                    throw new MraidCommandException("Not allowed to resize from an already expanded ad");
                } else if (this.f34568d != PlacementType.INTERSTITIAL) {
                    int dipsToIntPixels = Dips.dipsToIntPixels(i, this.f34567c);
                    int dipsToIntPixels2 = Dips.dipsToIntPixels(i2, this.f34567c);
                    int dipsToIntPixels3 = Dips.dipsToIntPixels(i3, this.f34567c);
                    int dipsToIntPixels4 = Dips.dipsToIntPixels(i4, this.f34567c);
                    int i5 = this.f34573i.m20115b().left + dipsToIntPixels3;
                    int i6 = this.f34573i.m20115b().top + dipsToIntPixels4;
                    Rect rect = new Rect(i5, i6, dipsToIntPixels + i5, i6 + dipsToIntPixels2);
                    if (!z) {
                        Rect d = this.f34573i.m20111d();
                        if (rect.width() > d.width() || rect.height() > d.height()) {
                            throw new MraidCommandException("resizeProperties specified a size (" + i + ", " + i2 + ") and offset (" + i3 + ", " + i4 + ") that doesn't allow the ad to appear within the max allowed size (" + this.f34573i.m20110e().width() + ", " + this.f34573i.m20110e().height() + ")");
                        }
                        rect.offsetTo(m4093a(d.left, rect.left, d.right - rect.width()), m4093a(d.top, rect.top, d.bottom - rect.height()));
                    }
                    Rect rect2 = new Rect();
                    this.f34570f.applyCloseRegionBounds(closePosition, rect, rect2);
                    if (!this.f34573i.m20111d().contains(rect2)) {
                        throw new MraidCommandException("resizeProperties specified a size (" + i + ", " + i2 + ") and offset (" + i3 + ", " + i4 + ") that doesn't allow the close region to appear within the max allowed size (" + this.f34573i.m20110e().width() + ", " + this.f34573i.m20110e().height() + ")");
                    } else if (rect.contains(rect2)) {
                        this.f34570f.setCloseVisible(false);
                        this.f34570f.setClosePosition(closePosition);
                        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(rect.width(), rect.height());
                        layoutParams.leftMargin = rect.left - this.f34573i.m20111d().left;
                        layoutParams.topMargin = rect.top - this.f34573i.m20111d().top;
                        ViewState viewState2 = this.f34574j;
                        if (viewState2 == ViewState.DEFAULT) {
                            this.f34569e.removeView(this.f34578n);
                            this.f34569e.setVisibility(4);
                            this.f34570f.addView(this.f34578n, new FrameLayout.LayoutParams(-1, -1));
                            m4074d().addView(this.f34570f, layoutParams);
                        } else if (viewState2 == ViewState.RESIZED) {
                            this.f34570f.setLayoutParams(layoutParams);
                        }
                        this.f34570f.setClosePosition(closePosition);
                        m4086a(ViewState.RESIZED);
                    } else {
                        throw new MraidCommandException("resizeProperties specified a size (" + i + ", " + dipsToIntPixels2 + ") and offset (" + i3 + ", " + i4 + ") that don't allow the close region to appear within the resized ad.");
                    }
                } else {
                    throw new MraidCommandException("Not allowed to resize from an interstitial ad");
                }
            }
        } else {
            throw new MraidCommandException("Unable to resize after the WebView is destroyed");
        }
    }

    @VisibleForTesting
    /* renamed from: a */
    public void m4090a(MoPubErrorCode moPubErrorCode) {
        MraidListener mraidListener = this.f34575k;
        if (mraidListener != null) {
            mraidListener.onRenderProcessGone(moPubErrorCode);
        }
    }

    /* renamed from: a */
    public final void m4086a(ViewState viewState) {
        MoPubLog.SdkLogEvent sdkLogEvent = MoPubLog.SdkLogEvent.CUSTOM;
        MoPubLog.log(sdkLogEvent, "MRAID state set to " + viewState);
        ViewState viewState2 = this.f34574j;
        this.f34574j = viewState;
        this.f34580p.m4117a(viewState);
        if (this.f34581q.m4101e()) {
            this.f34581q.m4117a(viewState);
        }
        MraidListener mraidListener = this.f34575k;
        if (mraidListener != null) {
            m4089a(mraidListener, viewState2, viewState);
        }
        m4085a((Runnable) null);
    }

    /* renamed from: a */
    public final void m4085a(Runnable runnable) {
        this.f34572h.m4056a();
        MraidBridge.MraidWebView currentWebView = getCurrentWebView();
        if (currentWebView != null) {
            this.f34572h.m4055a(this.f34569e, currentWebView).m4052a(new RunnableC8904g(currentWebView, runnable));
        }
    }

    @VisibleForTesting
    /* renamed from: a */
    public void m4084a(String str) {
        MraidListener mraidListener = this.f34575k;
        if (mraidListener != null) {
            mraidListener.onOpen();
        }
        Uri parse = Uri.parse(str);
        if (UrlAction.HANDLE_PHONE_SCHEME.shouldTryHandlingUrl(parse)) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM_WITH_THROWABLE, String.format("Uri scheme %s is not allowed.", parse.getScheme()), new MraidCommandException("Unsupported MRAID Javascript command"));
            return;
        }
        UrlHandler.Builder builder = new UrlHandler.Builder();
        AdReport adReport = this.f34565a;
        if (adReport != null) {
            builder.withDspCreativeId(adReport.getDspCreativeId());
        }
        EnumSet<UrlAction> of = EnumSet.of(UrlAction.IGNORE_ABOUT_SCHEME, UrlAction.OPEN_NATIVE_BROWSER, UrlAction.OPEN_IN_APP_BROWSER, UrlAction.HANDLE_SHARE_TWEET, UrlAction.FOLLOW_DEEP_LINK_WITH_FALLBACK, UrlAction.FOLLOW_DEEP_LINK);
        if (ManifestUtils.isDebuggable(this.f34567c)) {
            of.add(UrlAction.HANDLE_MOPUB_SCHEME);
            builder.withMoPubSchemeListener(this.f34584t);
        }
        builder.withSupportedUrlActions(of).build().handleUrl(this.f34567c, str);
    }

    /* renamed from: a */
    public void m4082a(URI uri, boolean z) throws MraidCommandException {
        if (this.f34578n == null) {
            throw new MraidCommandException("Unable to expand after the WebView is destroyed");
        } else if (this.f34568d != PlacementType.INTERSTITIAL) {
            ViewState viewState = this.f34574j;
            if (viewState == ViewState.DEFAULT || viewState == ViewState.RESIZED) {
                m4095a();
                boolean z2 = uri != null;
                if (z2) {
                    MraidBridge.MraidWebView mraidWebView = new MraidBridge.MraidWebView(this.f34567c);
                    this.f34579o = mraidWebView;
                    this.f34581q.m4123a(mraidWebView);
                    this.f34581q.setContentUrl(uri.toString());
                }
                FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1);
                ViewState viewState2 = this.f34574j;
                if (viewState2 == ViewState.DEFAULT) {
                    if (z2) {
                        this.f34570f.addView(this.f34579o, layoutParams);
                    } else {
                        this.f34569e.removeView(this.f34578n);
                        this.f34569e.setVisibility(4);
                        this.f34570f.addView(this.f34578n, layoutParams);
                    }
                    m4074d().addView(this.f34570f, new FrameLayout.LayoutParams(-1, -1));
                } else if (viewState2 == ViewState.RESIZED && z2) {
                    this.f34570f.removeView(this.f34578n);
                    this.f34569e.addView(this.f34578n, layoutParams);
                    this.f34569e.setVisibility(4);
                    this.f34570f.addView(this.f34579o, layoutParams);
                }
                this.f34570f.setLayoutParams(layoutParams);
                mo4036a(z);
                m4086a(ViewState.EXPANDED);
            }
        }
    }

    @VisibleForTesting
    /* renamed from: a */
    public void mo4036a(boolean z) {
        if (z != m4059l()) {
            this.f34570f.setCloseVisible(!z);
            UseCustomCloseListener useCustomCloseListener = this.f34576l;
            if (useCustomCloseListener != null) {
                useCustomCloseListener.useCustomCloseChanged(z);
            }
        }
    }

    @VisibleForTesting
    /* renamed from: a */
    public void m4081a(boolean z, MraidOrientation mraidOrientation) throws MraidCommandException {
        if (m4087a(mraidOrientation)) {
            this.f34585u = z;
            this.f34586v = mraidOrientation;
            if (this.f34574j == ViewState.EXPANDED || (this.f34568d == PlacementType.INTERSTITIAL && !this.f34588x)) {
                m4095a();
                return;
            }
            return;
        }
        throw new MraidCommandException("Unable to force orientation to " + mraidOrientation);
    }

    @VisibleForTesting
    /* renamed from: a */
    public boolean m4091a(ConsoleMessage consoleMessage) {
        MraidWebViewDebugListener mraidWebViewDebugListener = this.f34577m;
        if (mraidWebViewDebugListener != null) {
            return mraidWebViewDebugListener.onConsoleMessage(consoleMessage);
        }
        return true;
    }

    @VisibleForTesting
    /* renamed from: a */
    public boolean m4087a(MraidOrientation mraidOrientation) {
        boolean z = true;
        boolean z2 = true;
        if (mraidOrientation == MraidOrientation.NONE) {
            return true;
        }
        Activity activity = this.f34566b.get();
        if (activity == null) {
            return false;
        }
        try {
            ActivityInfo activityInfo = activity.getPackageManager().getActivityInfo(new ComponentName(activity, activity.getClass()), 0);
            int i = activityInfo.screenOrientation;
            if (i != -1) {
                if (i != mraidOrientation.getActivityInfoOrientation()) {
                    z2 = false;
                }
                return z2;
            }
            if (!Utils.bitMaskContainsFlag(activityInfo.configChanges, 128) || !Utils.bitMaskContainsFlag(activityInfo.configChanges, 1024)) {
                z = false;
            }
            return z;
        } catch (PackageManager.NameNotFoundException e) {
            return false;
        }
    }

    @VisibleForTesting
    /* renamed from: a */
    public boolean m4083a(String str, JsResult jsResult) {
        MraidWebViewDebugListener mraidWebViewDebugListener = this.f34577m;
        if (mraidWebViewDebugListener != null) {
            return mraidWebViewDebugListener.onJsAlert(str, jsResult);
        }
        jsResult.confirm();
        return true;
    }

    /* renamed from: b */
    public final void m4080b() {
        this.f34580p.m4128a();
        this.f34578n = null;
    }

    @VisibleForTesting
    /* renamed from: b */
    public void m4079b(int i) throws MraidCommandException {
        Activity activity = this.f34566b.get();
        if (activity == null || !m4087a(this.f34586v)) {
            throw new MraidCommandException("Attempted to lock orientation to unsupported value: " + this.f34586v.name());
        }
        if (this.f34583s == null) {
            this.f34583s = Integer.valueOf(activity.getRequestedOrientation());
        }
        activity.setRequestedOrientation(i);
    }

    @VisibleForTesting
    /* renamed from: b */
    public void m4077b(String str) {
        BaseVideoPlayerActivity.startMraid(this.f34567c, str);
    }

    /* renamed from: c */
    public final void m4076c() {
        this.f34581q.m4128a();
        this.f34579o = null;
    }

    /* renamed from: d */
    public final ViewGroup m4074d() {
        if (this.f34571g == null) {
            this.f34571g = m4070f();
        }
        return this.f34571g;
    }

    public void destroy() {
        this.f34572h.m4056a();
        try {
            this.f34582r.unregister();
        } catch (IllegalArgumentException e) {
            if (!e.getMessage().contains("Receiver not registered")) {
                throw e;
            }
        }
        if (!this.f34588x) {
            pause(true);
        }
        Views.removeFromParent(this.f34570f);
        m4080b();
        m4076c();
        m4057m();
    }

    /* renamed from: e */
    public final int m4072e() {
        return ((WindowManager) this.f34567c.getSystemService("window")).getDefaultDisplay().getRotation();
    }

    /* renamed from: f */
    public final ViewGroup m4070f() {
        ViewGroup viewGroup = this.f34571g;
        if (viewGroup != null) {
            return viewGroup;
        }
        View topmostView = Views.getTopmostView(this.f34566b.get(), this.f34569e);
        return topmostView instanceof ViewGroup ? (ViewGroup) topmostView : this.f34569e;
    }

    public void fillContent(String str, MraidWebViewCacheListener mraidWebViewCacheListener) {
        Preconditions.checkNotNull(str, "htmlData cannot be null");
        MraidBridge.MraidWebView mraidWebView = new MraidBridge.MraidWebView(this.f34567c);
        this.f34578n = mraidWebView;
        if (mraidWebViewCacheListener != null) {
            mraidWebViewCacheListener.onReady(mraidWebView, null);
        }
        this.f34580p.m4123a(this.f34578n);
        this.f34569e.addView(this.f34578n, new FrameLayout.LayoutParams(-1, -1));
        this.f34580p.setContentHtml(str);
    }

    /* renamed from: g */
    public WeakReference<Activity> m4068g() {
        return this.f34566b;
    }

    public FrameLayout getAdContainer() {
        return this.f34569e;
    }

    public Context getContext() {
        return this.f34567c;
    }

    public MraidBridge.MraidWebView getCurrentWebView() {
        return this.f34581q.m4106c() ? this.f34579o : this.f34578n;
    }

    @VisibleForTesting
    /* renamed from: h */
    public void mo4035h() {
        ViewState viewState;
        MraidBridge.MraidWebView mraidWebView;
        if (this.f34578n != null && (viewState = this.f34574j) != ViewState.LOADING && viewState != ViewState.HIDDEN) {
            if (viewState == ViewState.EXPANDED || this.f34568d == PlacementType.INTERSTITIAL) {
                m4057m();
            }
            ViewState viewState2 = this.f34574j;
            if (viewState2 == ViewState.RESIZED || viewState2 == ViewState.EXPANDED) {
                if (!this.f34581q.m4106c() || (mraidWebView = this.f34579o) == null) {
                    this.f34570f.removeView(this.f34578n);
                    this.f34569e.addView(this.f34578n, new FrameLayout.LayoutParams(-1, -1));
                    this.f34569e.setVisibility(0);
                } else {
                    m4076c();
                    this.f34570f.removeView(mraidWebView);
                }
                Views.removeFromParent(this.f34570f);
                m4086a(ViewState.DEFAULT);
            } else if (viewState2 == ViewState.DEFAULT) {
                this.f34569e.setVisibility(4);
                m4086a(ViewState.HIDDEN);
            }
        }
    }

    @VisibleForTesting
    /* renamed from: i */
    public void m4065i() {
        this.f34580p.m4111a(this.f34587w.m4047a(this.f34567c), this.f34587w.m4046b(this.f34567c), MraidNativeCommandHandler.m4045c(this.f34567c), MraidNativeCommandHandler.isStorePictureSupported(this.f34567c), m4061k());
        this.f34580p.m4118a(this.f34568d);
        MraidBridge mraidBridge = this.f34580p;
        mraidBridge.m4112a(mraidBridge.m4099f());
        this.f34580p.notifyScreenMetrics(this.f34573i);
        m4086a(ViewState.DEFAULT);
        this.f34580p.m4097g();
    }

    @VisibleForTesting
    /* renamed from: j */
    public void m4063j() {
        m4085a(new RunnableC8903f());
    }

    @VisibleForTesting
    /* renamed from: k */
    public boolean m4061k() {
        Activity activity = this.f34566b.get();
        if (activity == null || getCurrentWebView() == null) {
            return false;
        }
        if (this.f34568d != PlacementType.INLINE) {
            return true;
        }
        return this.f34587w.m4048a(activity, getCurrentWebView());
    }

    /* renamed from: l */
    public final boolean m4059l() {
        return !this.f34570f.isCloseVisible();
    }

    public void loadJavascript(String str) {
        this.f34580p.m4107b(str);
    }

    @VisibleForTesting
    /* renamed from: m */
    public void m4057m() {
        Integer num;
        Activity activity = this.f34566b.get();
        if (!(activity == null || (num = this.f34583s) == null)) {
            activity.setRequestedOrientation(num.intValue());
        }
        this.f34583s = null;
    }

    public void onPreloadFinished(BaseWebView baseWebView) {
        MraidBridge.MraidWebView mraidWebView = (MraidBridge.MraidWebView) baseWebView;
        this.f34578n = mraidWebView;
        this.f34580p.m4123a(mraidWebView);
        this.f34569e.addView(this.f34578n, new FrameLayout.LayoutParams(-1, -1));
        m4065i();
    }

    public void onShow(Activity activity) {
        this.f34566b = new WeakReference<>(activity);
        UseCustomCloseListener useCustomCloseListener = this.f34576l;
        if (useCustomCloseListener != null) {
            useCustomCloseListener.useCustomCloseChanged(m4059l());
        }
        try {
            m4095a();
        } catch (MraidCommandException e) {
            MoPubLog.m4582d("Failed to apply orientation.");
        }
    }

    public void pause(boolean z) {
        this.f34588x = true;
        MraidBridge.MraidWebView mraidWebView = this.f34578n;
        if (mraidWebView != null) {
            WebViews.onPause(mraidWebView, z);
        }
        MraidBridge.MraidWebView mraidWebView2 = this.f34579o;
        if (mraidWebView2 != null) {
            WebViews.onPause(mraidWebView2, z);
        }
    }

    public void resume() {
        this.f34588x = false;
        MraidBridge.MraidWebView mraidWebView = this.f34578n;
        if (mraidWebView != null) {
            mraidWebView.onResume();
        }
        MraidBridge.MraidWebView mraidWebView2 = this.f34579o;
        if (mraidWebView2 != null) {
            mraidWebView2.onResume();
        }
    }

    public void setDebugListener(MraidWebViewDebugListener mraidWebViewDebugListener) {
        this.f34577m = mraidWebViewDebugListener;
    }

    public void setMraidListener(MraidListener mraidListener) {
        this.f34575k = mraidListener;
    }

    public void setUseCustomCloseListener(UseCustomCloseListener useCustomCloseListener) {
        this.f34576l = useCustomCloseListener;
    }
}
