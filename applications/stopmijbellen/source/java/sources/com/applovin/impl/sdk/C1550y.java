package com.applovin.impl.sdk;

import android.graphics.Rect;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import com.applovin.impl.mediation.p038a.AbstractC1048e;
import com.applovin.impl.mediation.p038a.C1045b;
import com.applovin.impl.mediation.p038a.C1047d;
import com.applovin.impl.sdk.p055c.C1314b;
import com.applovin.impl.sdk.utils.Utils;
import com.applovin.sdk.AppLovinSdkUtils;
import java.lang.ref.WeakReference;
/* renamed from: com.applovin.impl.sdk.y */
/* loaded from: classes-dex2jar.jar:com/applovin/impl/sdk/y.class */
public class C1550y {

    /* renamed from: a */
    private final C1408l f5743a;

    /* renamed from: b */
    private final C1479t f5744b;

    /* renamed from: f */
    private final Runnable f5748f;

    /* renamed from: h */
    private final WeakReference<View> f5750h;

    /* renamed from: k */
    private int f5753k;

    /* renamed from: l */
    private long f5754l;

    /* renamed from: c */
    private final Object f5745c = new Object();

    /* renamed from: d */
    private final Rect f5746d = new Rect();

    /* renamed from: i */
    private WeakReference<ViewTreeObserver> f5751i = new WeakReference<>(null);

    /* renamed from: j */
    private WeakReference<View> f5752j = new WeakReference<>(null);

    /* renamed from: m */
    private long f5755m = Long.MIN_VALUE;

    /* renamed from: e */
    private final Handler f5747e = new Handler(Looper.getMainLooper());

    /* renamed from: g */
    private final ViewTreeObserver.OnPreDrawListener f5749g = new ViewTreeObserver.OnPreDrawListener() { // from class: com.applovin.impl.sdk.y.2
        @Override // android.view.ViewTreeObserver.OnPreDrawListener
        public boolean onPreDraw() {
            C1550y.this.m4900b();
            C1550y.this.m4897c();
            return true;
        }
    };

    /* renamed from: com.applovin.impl.sdk.y$a */
    /* loaded from: classes-dex2jar.jar:com/applovin/impl/sdk/y$a.class */
    public interface AbstractC1553a {
        void onLogVisibilityImpression();
    }

    public C1550y(View view, C1408l c1408l, AbstractC1553a abstractC1553a) {
        this.f5743a = c1408l;
        this.f5744b = c1408l.m5542A();
        this.f5750h = new WeakReference<>(view);
        final WeakReference weakReference = new WeakReference(abstractC1553a);
        this.f5748f = new Runnable() { // from class: com.applovin.impl.sdk.y.1
            @Override // java.lang.Runnable
            public void run() {
                ViewGroup viewGroup = C1550y.this.f5750h.get() instanceof ViewGroup ? (ViewGroup) C1550y.this.f5750h.get() : null;
                View view2 = (View) C1550y.this.f5752j.get();
                if (viewGroup == null || view2 == null) {
                    return;
                }
                if (!C1550y.this.m4899b(viewGroup, view2)) {
                    C1550y.this.m4900b();
                    return;
                }
                C1550y.this.f5744b.m5116b("VisibilityTracker", "View met visibility requirements. Logging visibility impression..");
                C1550y.this.m4906a();
                AbstractC1553a abstractC1553a2 = (AbstractC1553a) weakReference.get();
                if (abstractC1553a2 == null) {
                    return;
                }
                abstractC1553a2.onLogVisibilityImpression();
            }
        };
    }

    /* renamed from: a */
    private void m4905a(View view) {
        View rootView = Utils.getRootView(this.f5750h.get());
        View view2 = rootView;
        if (rootView == null) {
            view2 = Utils.getRootView(view);
        }
        if (view2 == null) {
            this.f5744b.m5116b("VisibilityTracker", "Unable to set view tree observer due to no root view.");
            return;
        }
        ViewTreeObserver viewTreeObserver = view2.getViewTreeObserver();
        if (!viewTreeObserver.isAlive()) {
            this.f5744b.m5112d("VisibilityTracker", "Unable to set view tree observer since the view tree observer is not alive.");
            return;
        }
        this.f5751i = new WeakReference<>(viewTreeObserver);
        viewTreeObserver.addOnPreDrawListener(this.f5749g);
    }

    /* renamed from: a */
    private boolean m4904a(View view, View view2) {
        boolean z = false;
        if (view2 != null) {
            z = false;
            if (view2.getVisibility() == 0) {
                if (view.getParent() == null) {
                    z = false;
                } else {
                    z = false;
                    if (view2.getWidth() > 0) {
                        if (view2.getHeight() <= 0) {
                            z = false;
                        } else if (!view2.getGlobalVisibleRect(this.f5746d)) {
                            return false;
                        } else {
                            z = false;
                            if (AppLovinSdkUtils.pxToDp(view2.getContext(), this.f5746d.height()) * AppLovinSdkUtils.pxToDp(view2.getContext(), this.f5746d.width()) >= this.f5753k) {
                                z = true;
                            }
                        }
                    }
                }
            }
        }
        return z;
    }

    /* renamed from: b */
    public void m4900b() {
        this.f5747e.postDelayed(this.f5748f, ((Long) this.f5743a.m5511a(C1314b.f4791bT)).longValue());
    }

    /* renamed from: b */
    public boolean m4899b(View view, View view2) {
        boolean z = false;
        if (m4904a(view, view2)) {
            if (this.f5755m == Long.MIN_VALUE) {
                this.f5755m = SystemClock.uptimeMillis();
            }
            z = false;
            if (SystemClock.uptimeMillis() - this.f5755m >= this.f5754l) {
                z = true;
            }
        }
        return z;
    }

    /* renamed from: c */
    public void m4897c() {
        ViewTreeObserver viewTreeObserver = this.f5751i.get();
        if (viewTreeObserver != null && viewTreeObserver.isAlive()) {
            viewTreeObserver.removeOnPreDrawListener(this.f5749g);
        }
        this.f5751i.clear();
    }

    /* renamed from: a */
    public void m4906a() {
        synchronized (this.f5745c) {
            this.f5747e.removeMessages(0);
            m4897c();
            this.f5755m = Long.MIN_VALUE;
            this.f5752j.clear();
        }
    }

    /* renamed from: a */
    public void m4903a(AbstractC1048e abstractC1048e) {
        WeakReference<View> weakReference;
        synchronized (this.f5745c) {
            this.f5744b.m5116b("VisibilityTracker", "Tracking Visibility...");
            m4906a();
            if (abstractC1048e instanceof C1045b) {
                weakReference = new WeakReference<>(((C1045b) abstractC1048e).m6691w());
            } else if (!(abstractC1048e instanceof C1047d)) {
                return;
            } else {
                weakReference = new WeakReference<>(((C1047d) abstractC1048e).m6666v());
            }
            this.f5752j = weakReference;
            this.f5753k = abstractC1048e.m6659F();
            this.f5754l = abstractC1048e.m6657H();
            m4905a(this.f5752j.get());
        }
    }
}
