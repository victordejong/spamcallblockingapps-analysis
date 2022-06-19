package com.facebook.appevents.p289j;

import android.app.Activity;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.view.View;
import android.view.ViewTreeObserver;
import com.facebook.appevents.p280b.p281a.C9979d;
import com.facebook.appevents.p285f.C10033b;
import com.facebook.internal.p299b.p301b.C10249a;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
/* renamed from: com.facebook.appevents.j.e */
/* loaded from: classes3-dex2jar.jar:com/facebook/appevents/j/e.class */
public final class ViewTreeObserver$OnGlobalLayoutListenerC10090e implements ViewTreeObserver.OnGlobalLayoutListener {

    /* renamed from: a */
    private static final String f33425a = "com.facebook.appevents.j.e";

    /* renamed from: e */
    private static final Map<Integer, ViewTreeObserver$OnGlobalLayoutListenerC10090e> f33426e = new HashMap();

    /* renamed from: b */
    private WeakReference<Activity> f33427b;

    /* renamed from: c */
    private final Handler f33428c = new Handler(Looper.getMainLooper());

    /* renamed from: d */
    private AtomicBoolean f33429d = new AtomicBoolean(false);

    private ViewTreeObserver$OnGlobalLayoutListenerC10090e(Activity activity) {
        this.f33427b = new WeakReference<>(activity);
    }

    /* renamed from: a */
    static /* synthetic */ WeakReference m23424a(ViewTreeObserver$OnGlobalLayoutListenerC10090e viewTreeObserver$OnGlobalLayoutListenerC10090e) {
        if (C10249a.m23108a(ViewTreeObserver$OnGlobalLayoutListenerC10090e.class)) {
            return null;
        }
        try {
            return viewTreeObserver$OnGlobalLayoutListenerC10090e.f33427b;
        } catch (Throwable th) {
            C10249a.m23106a(th, ViewTreeObserver$OnGlobalLayoutListenerC10090e.class);
            return null;
        }
    }

    /* renamed from: a */
    private void m23426a() {
        if (C10249a.m23108a(this)) {
            return;
        }
        try {
            Runnable runnable = new Runnable() { // from class: com.facebook.appevents.j.e.1
                @Override // java.lang.Runnable
                public final void run() {
                    if (C10249a.m23108a(this)) {
                        return;
                    }
                    try {
                        View m23560a = C10033b.m23560a((Activity) ViewTreeObserver$OnGlobalLayoutListenerC10090e.m23424a(ViewTreeObserver$OnGlobalLayoutListenerC10090e.this).get());
                        Activity activity = (Activity) ViewTreeObserver$OnGlobalLayoutListenerC10090e.m23424a(ViewTreeObserver$OnGlobalLayoutListenerC10090e.this).get();
                        if (m23560a == null || activity == null) {
                            return;
                        }
                        for (View view : C10087c.m23436a(m23560a)) {
                            if (!C9979d.m23715a(view)) {
                                String m23434b = C10087c.m23434b(view);
                                if (!m23434b.isEmpty() && m23434b.length() <= 300) {
                                    View$OnClickListenerC10092f.m23422a(view, m23560a, activity.getLocalClassName());
                                }
                            }
                        }
                    } catch (Exception e) {
                    } catch (Throwable th) {
                        C10249a.m23106a(th, this);
                    }
                }
            };
            if (Thread.currentThread() == Looper.getMainLooper().getThread()) {
                runnable.run();
            } else {
                this.f33428c.post(runnable);
            }
        } catch (Throwable th) {
            C10249a.m23106a(th, this);
        }
    }

    /* renamed from: a */
    public static void m23425a(Activity activity) {
        View m23560a;
        if (C10249a.m23108a(ViewTreeObserver$OnGlobalLayoutListenerC10090e.class)) {
            return;
        }
        try {
            int hashCode = activity.hashCode();
            Map<Integer, ViewTreeObserver$OnGlobalLayoutListenerC10090e> map = f33426e;
            if (map.containsKey(Integer.valueOf(hashCode))) {
                return;
            }
            ViewTreeObserver$OnGlobalLayoutListenerC10090e viewTreeObserver$OnGlobalLayoutListenerC10090e = new ViewTreeObserver$OnGlobalLayoutListenerC10090e(activity);
            map.put(Integer.valueOf(hashCode), viewTreeObserver$OnGlobalLayoutListenerC10090e);
            if (C10249a.m23108a(viewTreeObserver$OnGlobalLayoutListenerC10090e) || viewTreeObserver$OnGlobalLayoutListenerC10090e.f33429d.getAndSet(true) || (m23560a = C10033b.m23560a(viewTreeObserver$OnGlobalLayoutListenerC10090e.f33427b.get())) == null) {
                return;
            }
            ViewTreeObserver viewTreeObserver = m23560a.getViewTreeObserver();
            if (!viewTreeObserver.isAlive()) {
                return;
            }
            viewTreeObserver.addOnGlobalLayoutListener(viewTreeObserver$OnGlobalLayoutListenerC10090e);
            viewTreeObserver$OnGlobalLayoutListenerC10090e.m23426a();
            viewTreeObserver$OnGlobalLayoutListenerC10090e.f33427b.get();
        } catch (Throwable th) {
            C10249a.m23106a(th, ViewTreeObserver$OnGlobalLayoutListenerC10090e.class);
        }
    }

    /* renamed from: b */
    public static void m23423b(Activity activity) {
        View m23560a;
        if (C10249a.m23108a(ViewTreeObserver$OnGlobalLayoutListenerC10090e.class)) {
            return;
        }
        try {
            int hashCode = activity.hashCode();
            Map<Integer, ViewTreeObserver$OnGlobalLayoutListenerC10090e> map = f33426e;
            if (!map.containsKey(Integer.valueOf(hashCode))) {
                return;
            }
            ViewTreeObserver$OnGlobalLayoutListenerC10090e viewTreeObserver$OnGlobalLayoutListenerC10090e = map.get(Integer.valueOf(hashCode));
            map.remove(Integer.valueOf(hashCode));
            if (C10249a.m23108a(viewTreeObserver$OnGlobalLayoutListenerC10090e) || !viewTreeObserver$OnGlobalLayoutListenerC10090e.f33429d.getAndSet(false) || (m23560a = C10033b.m23560a(viewTreeObserver$OnGlobalLayoutListenerC10090e.f33427b.get())) == null) {
                return;
            }
            ViewTreeObserver viewTreeObserver = m23560a.getViewTreeObserver();
            if (!viewTreeObserver.isAlive()) {
                return;
            }
            if (Build.VERSION.SDK_INT < 16) {
                viewTreeObserver.removeGlobalOnLayoutListener(viewTreeObserver$OnGlobalLayoutListenerC10090e);
            } else {
                viewTreeObserver.removeOnGlobalLayoutListener(viewTreeObserver$OnGlobalLayoutListenerC10090e);
            }
        } catch (Throwable th) {
            C10249a.m23106a(th, ViewTreeObserver$OnGlobalLayoutListenerC10090e.class);
        }
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public final void onGlobalLayout() {
        if (C10249a.m23108a(this)) {
            return;
        }
        try {
            m23426a();
        } catch (Throwable th) {
            C10249a.m23106a(th, this);
        }
    }
}
