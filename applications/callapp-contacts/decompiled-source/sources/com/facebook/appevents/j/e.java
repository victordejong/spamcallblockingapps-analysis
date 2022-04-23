package com.facebook.appevents.j;

import android.app.Activity;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.view.View;
import android.view.ViewTreeObserver;
import com.facebook.appevents.b.a.d;
import com.facebook.appevents.f.b;
import com.facebook.internal.b.b.a;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:com/facebook/appevents/j/e.class */
public final class e implements ViewTreeObserver.OnGlobalLayoutListener {

    /* renamed from: a  reason: collision with root package name */
    private static final String f19641a = "com.facebook.appevents.j.e";
    private static final Map<Integer, e> e = new HashMap();

    /* renamed from: b  reason: collision with root package name */
    private WeakReference<Activity> f19642b;

    /* renamed from: c  reason: collision with root package name */
    private final Handler f19643c = new Handler(Looper.getMainLooper());

    /* renamed from: d  reason: collision with root package name */
    private AtomicBoolean f19644d = new AtomicBoolean(false);

    private e(Activity activity) {
        this.f19642b = new WeakReference<>(activity);
    }

    static /* synthetic */ WeakReference a(e eVar) {
        if (a.a(e.class)) {
            return null;
        }
        try {
            return eVar.f19642b;
        } catch (Throwable th) {
            a.a(th, e.class);
            return null;
        }
    }

    private void a() {
        if (!a.a(this)) {
            try {
                Runnable runnable = new Runnable() { // from class: com.facebook.appevents.j.e.1
                    @Override // java.lang.Runnable
                    public final void run() {
                        if (!a.a(this)) {
                            try {
                                View a2 = b.a((Activity) e.a(e.this).get());
                                Activity activity = (Activity) e.a(e.this).get();
                                if (!(a2 == null || activity == null)) {
                                    for (View view : c.a(a2)) {
                                        if (!d.a(view)) {
                                            String b2 = c.b(view);
                                            if (!b2.isEmpty() && b2.length() <= 300) {
                                                f.a(view, a2, activity.getLocalClassName());
                                            }
                                        }
                                    }
                                }
                            } catch (Exception e2) {
                            } catch (Throwable th) {
                                a.a(th, this);
                            }
                        }
                    }
                };
                if (Thread.currentThread() == Looper.getMainLooper().getThread()) {
                    runnable.run();
                } else {
                    this.f19643c.post(runnable);
                }
            } catch (Throwable th) {
                a.a(th, this);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(Activity activity) {
        View a2;
        if (!a.a(e.class)) {
            try {
                int hashCode = activity.hashCode();
                Map<Integer, e> map = e;
                if (!map.containsKey(Integer.valueOf(hashCode))) {
                    e eVar = new e(activity);
                    map.put(Integer.valueOf(hashCode), eVar);
                    if (!a.a(eVar) && !eVar.f19644d.getAndSet(true) && (a2 = b.a(eVar.f19642b.get())) != null) {
                        ViewTreeObserver viewTreeObserver = a2.getViewTreeObserver();
                        if (viewTreeObserver.isAlive()) {
                            viewTreeObserver.addOnGlobalLayoutListener(eVar);
                            eVar.a();
                            eVar.f19642b.get();
                        }
                    }
                }
            } catch (Throwable th) {
                a.a(th, e.class);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void b(Activity activity) {
        View a2;
        if (!a.a(e.class)) {
            try {
                int hashCode = activity.hashCode();
                Map<Integer, e> map = e;
                if (map.containsKey(Integer.valueOf(hashCode))) {
                    e eVar = map.get(Integer.valueOf(hashCode));
                    map.remove(Integer.valueOf(hashCode));
                    if (!a.a(eVar) && eVar.f19644d.getAndSet(false) && (a2 = b.a(eVar.f19642b.get())) != null) {
                        ViewTreeObserver viewTreeObserver = a2.getViewTreeObserver();
                        if (!viewTreeObserver.isAlive()) {
                            return;
                        }
                        if (Build.VERSION.SDK_INT < 16) {
                            viewTreeObserver.removeGlobalOnLayoutListener(eVar);
                        } else {
                            viewTreeObserver.removeOnGlobalLayoutListener(eVar);
                        }
                    }
                }
            } catch (Throwable th) {
                a.a(th, e.class);
            }
        }
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public final void onGlobalLayout() {
        if (!a.a(this)) {
            try {
                a();
            } catch (Throwable th) {
                a.a(th, this);
            }
        }
    }
}
