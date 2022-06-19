package com.facebook.p094a.p102g;

import android.app.Activity;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.view.View;
import android.view.ViewTreeObserver;
import android.view.Window;
import com.facebook.p094a.p096b.p097a.C1827d;
import com.facebook.p094a.p096b.p097a.C1829f;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
/* renamed from: com.facebook.a.g.e */
/* loaded from: classes-dex2jar.jar:com/facebook/a/g/e.class */
public final class ViewTreeObserver$OnGlobalLayoutListenerC1910e implements ViewTreeObserver.OnGlobalLayoutListener {

    /* renamed from: a */
    private static final String f5767a = ViewTreeObserver$OnGlobalLayoutListenerC1910e.class.getCanonicalName();

    /* renamed from: e */
    private static final Map<Integer, ViewTreeObserver$OnGlobalLayoutListenerC1910e> f5768e = new HashMap();

    /* renamed from: b */
    private WeakReference<Activity> f5769b;

    /* renamed from: c */
    private final Handler f5770c = new Handler(Looper.getMainLooper());

    /* renamed from: d */
    private AtomicBoolean f5771d = new AtomicBoolean(false);

    private ViewTreeObserver$OnGlobalLayoutListenerC1910e(Activity activity) {
        this.f5769b = new WeakReference<>(activity);
    }

    /* renamed from: a */
    private void m15900a() {
        View m15893d;
        if (!this.f5771d.getAndSet(true) && (m15893d = m15893d()) != null) {
            ViewTreeObserver viewTreeObserver = m15893d.getViewTreeObserver();
            if (!viewTreeObserver.isAlive()) {
                return;
            }
            viewTreeObserver.addOnGlobalLayoutListener(this);
            m15894c();
        }
    }

    /* renamed from: a */
    public static void m15899a(Activity activity) {
        int hashCode = activity.hashCode();
        if (!f5768e.containsKey(Integer.valueOf(hashCode))) {
            ViewTreeObserver$OnGlobalLayoutListenerC1910e viewTreeObserver$OnGlobalLayoutListenerC1910e = new ViewTreeObserver$OnGlobalLayoutListenerC1910e(activity);
            f5768e.put(Integer.valueOf(hashCode), viewTreeObserver$OnGlobalLayoutListenerC1910e);
            viewTreeObserver$OnGlobalLayoutListenerC1910e.m15900a();
        }
    }

    /* renamed from: b */
    private void m15897b() {
        View m15893d;
        if (this.f5771d.getAndSet(false) && (m15893d = m15893d()) != null) {
            ViewTreeObserver viewTreeObserver = m15893d.getViewTreeObserver();
            if (!viewTreeObserver.isAlive()) {
                return;
            }
            if (Build.VERSION.SDK_INT < 16) {
                viewTreeObserver.removeGlobalOnLayoutListener(this);
            } else {
                viewTreeObserver.removeOnGlobalLayoutListener(this);
            }
        }
    }

    /* renamed from: b */
    public static void m15896b(Activity activity) {
        int hashCode = activity.hashCode();
        if (f5768e.containsKey(Integer.valueOf(hashCode))) {
            ViewTreeObserver$OnGlobalLayoutListenerC1910e viewTreeObserver$OnGlobalLayoutListenerC1910e = f5768e.get(Integer.valueOf(hashCode));
            f5768e.remove(Integer.valueOf(hashCode));
            viewTreeObserver$OnGlobalLayoutListenerC1910e.m15897b();
        }
    }

    /* renamed from: c */
    private void m15894c() {
        Runnable runnable = new Runnable() { // from class: com.facebook.a.g.e.1
            @Override // java.lang.Runnable
            public void run() {
                try {
                    View m15893d = ViewTreeObserver$OnGlobalLayoutListenerC1910e.this.m15893d();
                    Activity activity = (Activity) ViewTreeObserver$OnGlobalLayoutListenerC1910e.this.f5769b.get();
                    if (m15893d == null || activity == null) {
                        return;
                    }
                    for (View view : C1908c.m15908a(m15893d)) {
                        if (!C1827d.m16189a(view)) {
                            String m16170e = C1829f.m16170e(view);
                            if (!m16170e.isEmpty() && m16170e.length() <= 300) {
                                View$OnClickListenerC1912f.m15891a(view, m15893d, activity.getLocalClassName());
                            }
                        }
                    }
                } catch (Exception e) {
                }
            }
        };
        if (Thread.currentThread() == Looper.getMainLooper().getThread()) {
            runnable.run();
        } else {
            this.f5770c.post(runnable);
        }
    }

    /* renamed from: d */
    public View m15893d() {
        View rootView;
        Activity activity = this.f5769b.get();
        if (activity == null) {
            rootView = null;
        } else {
            Window window = activity.getWindow();
            rootView = window == null ? null : window.getDecorView().getRootView();
        }
        return rootView;
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public void onGlobalLayout() {
        m15894c();
    }
}
