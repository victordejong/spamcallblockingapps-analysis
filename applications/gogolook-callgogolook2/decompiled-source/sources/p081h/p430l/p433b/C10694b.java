package p081h.p430l.p433b;

import android.content.Context;
import android.graphics.Rect;
import android.os.Handler;
import android.os.SystemClock;
import android.view.View;
import android.view.ViewTreeObserver;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.mopub.common.Preconditions;
import com.mopub.common.VisibleForTesting;
import com.mopub.common.logging.MoPubLog;
import com.mopub.common.util.Dips;
import com.mopub.common.util.Views;
import java.lang.ref.WeakReference;
/* renamed from: h.l.b.b */
/* loaded from: classes2-dex2jar.jar:h/l/b/b.class */
public class C10694b {
    @NonNull

    /* renamed from: c */
    public final View f24368c;
    @NonNull

    /* renamed from: d */
    public final View f24369d;
    @NonNull

    /* renamed from: e */
    public final C10696b f24370e;
    @Nullable

    /* renamed from: f */
    public AbstractC10698d f24371f;

    /* renamed from: i */
    public boolean f24374i;

    /* renamed from: j */
    public boolean f24375j;
    @NonNull

    /* renamed from: h */
    public final Handler f24373h = new Handler();
    @NonNull

    /* renamed from: g */
    public final RunnableC10697c f24372g = new RunnableC10697c();
    @NonNull
    @VisibleForTesting

    /* renamed from: a */
    public final ViewTreeObserver.OnPreDrawListener f24366a = new ViewTreeObserver$OnPreDrawListenerC10695a();
    @NonNull
    @VisibleForTesting

    /* renamed from: b */
    public WeakReference<ViewTreeObserver> f24367b = new WeakReference<>(null);

    /* renamed from: h.l.b.b$a */
    /* loaded from: classes2-dex2jar.jar:h/l/b/b$a.class */
    public class ViewTreeObserver$OnPreDrawListenerC10695a implements ViewTreeObserver.OnPreDrawListener {
        public ViewTreeObserver$OnPreDrawListenerC10695a() {
        }

        @Override // android.view.ViewTreeObserver.OnPreDrawListener
        public boolean onPreDraw() {
            C10694b.this.m10891b();
            return true;
        }
    }

    /* renamed from: h.l.b.b$b */
    /* loaded from: classes2-dex2jar.jar:h/l/b/b$b.class */
    public static class C10696b {

        /* renamed from: a */
        public int f24377a;

        /* renamed from: b */
        public int f24378b;

        /* renamed from: c */
        public long f24379c = Long.MIN_VALUE;

        /* renamed from: d */
        public final Rect f24380d = new Rect();

        public C10696b(int i, int i2) {
            this.f24377a = i;
            this.f24378b = i2;
        }

        /* renamed from: a */
        public boolean m10885a() {
            return this.f24379c != Long.MIN_VALUE;
        }

        /* renamed from: a */
        public boolean m10884a(@Nullable View view, @Nullable View view2) {
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
                            } else if (!view2.getGlobalVisibleRect(this.f24380d)) {
                                return false;
                            } else {
                                z = false;
                                if (Dips.pixelsToIntDips(this.f24380d.width(), view2.getContext()) * Dips.pixelsToIntDips(this.f24380d.height(), view2.getContext()) >= this.f24377a) {
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
        public boolean m10883b() {
            boolean z = false;
            if (!m10885a()) {
                return false;
            }
            if (SystemClock.uptimeMillis() - this.f24379c >= this.f24378b) {
                z = true;
            }
            return z;
        }

        /* renamed from: c */
        public void m10882c() {
            this.f24379c = SystemClock.uptimeMillis();
        }
    }

    /* renamed from: h.l.b.b$c */
    /* loaded from: classes2-dex2jar.jar:h/l/b/b$c.class */
    public class RunnableC10697c implements Runnable {
        public RunnableC10697c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (!C10694b.this.f24375j) {
                C10694b.this.f24374i = false;
                if (C10694b.this.f24370e.m10884a(C10694b.this.f24369d, C10694b.this.f24368c)) {
                    if (!C10694b.this.f24370e.m10885a()) {
                        C10694b.this.f24370e.m10882c();
                    }
                    if (C10694b.this.f24370e.m10883b() && C10694b.this.f24371f != null) {
                        C10694b.this.f24371f.onVisibilityChanged();
                        C10694b.this.f24375j = true;
                    }
                }
                if (!C10694b.this.f24375j) {
                    C10694b.this.m10891b();
                }
            }
        }
    }

    /* renamed from: h.l.b.b$d */
    /* loaded from: classes2-dex2jar.jar:h/l/b/b$d.class */
    public interface AbstractC10698d {
        void onVisibilityChanged();
    }

    @VisibleForTesting
    public C10694b(@NonNull Context context, @NonNull View view, @NonNull View view2, int i, int i2) {
        Preconditions.checkNotNull(view);
        Preconditions.checkNotNull(view2);
        this.f24369d = view;
        this.f24368c = view2;
        this.f24370e = new C10696b(i, i2);
        m10895a(context, this.f24368c);
    }

    /* renamed from: a */
    public void m10896a() {
        this.f24373h.removeMessages(0);
        this.f24374i = false;
        ViewTreeObserver viewTreeObserver = this.f24367b.get();
        if (viewTreeObserver != null && viewTreeObserver.isAlive()) {
            viewTreeObserver.removeOnPreDrawListener(this.f24366a);
        }
        this.f24367b.clear();
        this.f24371f = null;
    }

    /* renamed from: a */
    public final void m10895a(@Nullable Context context, @Nullable View view) {
        ViewTreeObserver viewTreeObserver = this.f24367b.get();
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
            this.f24367b = new WeakReference<>(viewTreeObserver2);
            viewTreeObserver2.addOnPreDrawListener(this.f24366a);
        }
    }

    /* renamed from: a */
    public void m10894a(@Nullable AbstractC10698d dVar) {
        this.f24371f = dVar;
    }

    /* renamed from: b */
    public void m10891b() {
        if (!this.f24374i) {
            this.f24374i = true;
            this.f24373h.postDelayed(this.f24372g, 100L);
        }
    }
}
