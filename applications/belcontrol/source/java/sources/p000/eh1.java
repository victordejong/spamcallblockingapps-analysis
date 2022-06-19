package p000;

import android.content.Context;
import android.graphics.Rect;
import android.os.Handler;
import android.os.SystemClock;
import android.view.View;
import android.view.ViewTreeObserver;
import com.mopub.common.Preconditions;
import com.mopub.common.VisibleForTesting;
import com.mopub.common.logging.MoPubLog;
import com.mopub.common.util.Dips;
import com.mopub.common.util.Views;
import java.lang.ref.WeakReference;
/* renamed from: eh1 */
/* loaded from: classes3-dex2jar.jar:eh1.class */
public class eh1 {

    /* renamed from: c */
    public final View f6336c;

    /* renamed from: d */
    public final View f6337d;

    /* renamed from: e */
    public final C1364b f6338e;

    /* renamed from: f */
    public AbstractC1366d f6339f;

    /* renamed from: i */
    public boolean f6342i;

    /* renamed from: j */
    public boolean f6343j;

    /* renamed from: h */
    public final Handler f6341h = new Handler();

    /* renamed from: g */
    public final RunnableC1365c f6340g = new RunnableC1365c();
    @VisibleForTesting

    /* renamed from: a */
    public final ViewTreeObserver.OnPreDrawListener f6334a = new ViewTreeObserver$OnPreDrawListenerC1363a();
    @VisibleForTesting

    /* renamed from: b */
    public WeakReference<ViewTreeObserver> f6335b = new WeakReference<>(null);

    /* renamed from: eh1$a */
    /* loaded from: classes3-dex2jar.jar:eh1$a.class */
    public class ViewTreeObserver$OnPreDrawListenerC1363a implements ViewTreeObserver.OnPreDrawListener {
        public ViewTreeObserver$OnPreDrawListenerC1363a() {
            eh1.this = r4;
        }

        @Override // android.view.ViewTreeObserver.OnPreDrawListener
        public boolean onPreDraw() {
            eh1.this.m2155i();
            return true;
        }
    }

    /* renamed from: eh1$b */
    /* loaded from: classes3-dex2jar.jar:eh1$b.class */
    public static class C1364b {

        /* renamed from: a */
        public int f6345a;

        /* renamed from: b */
        public int f6346b;

        /* renamed from: c */
        public long f6347c = Long.MIN_VALUE;

        /* renamed from: d */
        public final Rect f6348d = new Rect();

        public C1364b(int i, int i2) {
            this.f6345a = i;
            this.f6346b = i2;
        }

        /* renamed from: a */
        public boolean m2152a() {
            return this.f6347c != Long.MIN_VALUE;
        }

        /* renamed from: b */
        public boolean m2151b() {
            boolean z = false;
            if (!m2152a()) {
                return false;
            }
            if (SystemClock.uptimeMillis() - this.f6347c >= this.f6346b) {
                z = true;
            }
            return z;
        }

        /* renamed from: c */
        public boolean m2150c(View view, View view2) {
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
                            } else if (!view2.getGlobalVisibleRect(this.f6348d)) {
                                return false;
                            } else {
                                z = false;
                                if (Dips.pixelsToIntDips(this.f6348d.width(), view2.getContext()) * Dips.pixelsToIntDips(this.f6348d.height(), view2.getContext()) >= this.f6345a) {
                                    z = true;
                                }
                            }
                        }
                    }
                }
            }
            return z;
        }

        /* renamed from: d */
        public void m2149d() {
            this.f6347c = SystemClock.uptimeMillis();
        }
    }

    /* renamed from: eh1$c */
    /* loaded from: classes3-dex2jar.jar:eh1$c.class */
    public class RunnableC1365c implements Runnable {
        public RunnableC1365c() {
            eh1.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (eh1.this.f6343j) {
                return;
            }
            eh1.this.f6342i = false;
            if (eh1.this.f6338e.m2150c(eh1.this.f6337d, eh1.this.f6336c)) {
                if (!eh1.this.f6338e.m2152a()) {
                    eh1.this.f6338e.m2149d();
                }
                if (eh1.this.f6338e.m2151b() && eh1.this.f6339f != null) {
                    eh1.this.f6339f.onVisibilityChanged();
                    eh1.this.f6343j = true;
                }
            }
            if (eh1.this.f6343j) {
                return;
            }
            eh1.this.m2155i();
        }
    }

    /* renamed from: eh1$d */
    /* loaded from: classes3-dex2jar.jar:eh1$d.class */
    public interface AbstractC1366d {
        void onVisibilityChanged();
    }

    @VisibleForTesting
    public eh1(Context context, View view, View view2, int i, int i2) {
        Preconditions.checkNotNull(view);
        Preconditions.checkNotNull(view2);
        this.f6337d = view;
        this.f6336c = view2;
        this.f6338e = new C1364b(i, i2);
        m2153k(context, view2);
    }

    /* renamed from: h */
    public void m2156h() {
        this.f6341h.removeMessages(0);
        this.f6342i = false;
        ViewTreeObserver viewTreeObserver = this.f6335b.get();
        if (viewTreeObserver != null && viewTreeObserver.isAlive()) {
            viewTreeObserver.removeOnPreDrawListener(this.f6334a);
        }
        this.f6335b.clear();
        this.f6339f = null;
    }

    /* renamed from: i */
    public void m2155i() {
        if (this.f6342i) {
            return;
        }
        this.f6342i = true;
        this.f6341h.postDelayed(this.f6340g, 100L);
    }

    /* renamed from: j */
    public void m2154j(AbstractC1366d abstractC1366d) {
        this.f6339f = abstractC1366d;
    }

    /* renamed from: k */
    public final void m2153k(Context context, View view) {
        ViewTreeObserver viewTreeObserver = this.f6335b.get();
        if (viewTreeObserver == null || !viewTreeObserver.isAlive()) {
            View topmostView = Views.getTopmostView(context, view);
            if (topmostView == null) {
                MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "Unable to set Visibility Tracker due to no available root view.");
                return;
            }
            ViewTreeObserver viewTreeObserver2 = topmostView.getViewTreeObserver();
            if (!viewTreeObserver2.isAlive()) {
                MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "Visibility Tracker was unable to track views because the root view tree observer was not alive");
                return;
            }
            this.f6335b = new WeakReference<>(viewTreeObserver2);
            viewTreeObserver2.addOnPreDrawListener(this.f6334a);
        }
    }
}
