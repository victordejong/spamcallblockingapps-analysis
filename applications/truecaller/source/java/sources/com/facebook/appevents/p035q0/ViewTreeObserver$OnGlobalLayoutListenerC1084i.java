package com.facebook.appevents.p035q0;

import android.app.Activity;
import android.os.Handler;
import android.os.Looper;
import android.view.View;
import android.view.ViewTreeObserver;
import com.facebook.appevents.p026i0.p027n.C0998d;
import com.facebook.appevents.p031m0.C1035g;
import com.facebook.appevents.p035q0.View$OnClickListenerC1085j;
import com.facebook.internal.p037u0.p040m.C1220a;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Metadata;
import s1.z.c.f;
import s1.z.c.l;
@Metadata(d1 = {"��,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n\u0002\b\u0005\b\u0001\u0018�� \u00102\u00020\u0001:\u0001\u0010B\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\b\u0010\u000b\u001a\u00020\fH\u0016J\b\u0010\r\u001a\u00020\fH\u0002J\b\u0010\u000e\u001a\u00020\fH\u0002J\b\u0010\u000f\u001a\u00020\fH\u0002R\u0014\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00030\u0006X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004¢\u0006\u0002\n��¨\u0006\u0011"}, d2 = {"Lcom/facebook/appevents/suggestedevents/ViewObserver;", "Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;", "activity", "Landroid/app/Activity;", "(Landroid/app/Activity;)V", "activityWeakReference", "Ljava/lang/ref/WeakReference;", "isTracking", "Ljava/util/concurrent/atomic/AtomicBoolean;", "uiThreadHandler", "Landroid/os/Handler;", "onGlobalLayout", "", "process", "startTracking", "stopTracking", "Companion", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* renamed from: com.facebook.appevents.q0.i */
/* loaded from: classes2-dex2jar.jar:com/facebook/appevents/q0/i.class */
public final class ViewTreeObserver$OnGlobalLayoutListenerC1084i implements ViewTreeObserver.OnGlobalLayoutListener {

    /* renamed from: d */
    public static final ViewTreeObserver$OnGlobalLayoutListenerC1084i f2993d = null;

    /* renamed from: e */
    public static final Map<Integer, ViewTreeObserver$OnGlobalLayoutListenerC1084i> f2994e = new HashMap();

    /* renamed from: a */
    public final WeakReference<Activity> f2995a;

    /* renamed from: b */
    public final Handler f2996b = new Handler(Looper.getMainLooper());

    /* renamed from: c */
    public final AtomicBoolean f2997c = new AtomicBoolean(false);

    public ViewTreeObserver$OnGlobalLayoutListenerC1084i(Activity activity, f fVar) {
        this.f2995a = new WeakReference<>(activity);
    }

    /* renamed from: a */
    public static final /* synthetic */ Map m41793a() {
        if (C1220a.m41623b(ViewTreeObserver$OnGlobalLayoutListenerC1084i.class)) {
            return null;
        }
        try {
            return f2994e;
        } catch (Throwable th) {
            C1220a.m41624a(th, ViewTreeObserver$OnGlobalLayoutListenerC1084i.class);
            return null;
        }
    }

    /* renamed from: c */
    public static final void m41791c(Activity activity) {
        View m41867b;
        l.e(activity, "activity");
        int hashCode = activity.hashCode();
        Map m41793a = m41793a();
        Integer valueOf = Integer.valueOf(hashCode);
        Object obj = m41793a.get(valueOf);
        ViewTreeObserver$OnGlobalLayoutListenerC1084i viewTreeObserver$OnGlobalLayoutListenerC1084i = obj;
        if (obj == null) {
            viewTreeObserver$OnGlobalLayoutListenerC1084i = new ViewTreeObserver$OnGlobalLayoutListenerC1084i(activity, null);
            m41793a.put(valueOf, viewTreeObserver$OnGlobalLayoutListenerC1084i);
        }
        ViewTreeObserver$OnGlobalLayoutListenerC1084i viewTreeObserver$OnGlobalLayoutListenerC1084i2 = (ViewTreeObserver$OnGlobalLayoutListenerC1084i) viewTreeObserver$OnGlobalLayoutListenerC1084i;
        if (C1220a.m41623b(ViewTreeObserver$OnGlobalLayoutListenerC1084i.class)) {
            return;
        }
        try {
            if (C1220a.m41623b(viewTreeObserver$OnGlobalLayoutListenerC1084i2) || viewTreeObserver$OnGlobalLayoutListenerC1084i2.f2997c.getAndSet(true) || (m41867b = C1035g.m41867b(viewTreeObserver$OnGlobalLayoutListenerC1084i2.f2995a.get())) == null) {
                return;
            }
            ViewTreeObserver viewTreeObserver = m41867b.getViewTreeObserver();
            if (!viewTreeObserver.isAlive()) {
                return;
            }
            viewTreeObserver.addOnGlobalLayoutListener(viewTreeObserver$OnGlobalLayoutListenerC1084i2);
            viewTreeObserver$OnGlobalLayoutListenerC1084i2.m41792b();
        } catch (Throwable th) {
            C1220a.m41624a(th, ViewTreeObserver$OnGlobalLayoutListenerC1084i.class);
        }
    }

    /* renamed from: d */
    public static final void m41790d(Activity activity) {
        View m41867b;
        l.e(activity, "activity");
        ViewTreeObserver$OnGlobalLayoutListenerC1084i viewTreeObserver$OnGlobalLayoutListenerC1084i = (ViewTreeObserver$OnGlobalLayoutListenerC1084i) m41793a().remove(Integer.valueOf(activity.hashCode()));
        if (viewTreeObserver$OnGlobalLayoutListenerC1084i != null && !C1220a.m41623b(ViewTreeObserver$OnGlobalLayoutListenerC1084i.class)) {
            try {
                if (C1220a.m41623b(viewTreeObserver$OnGlobalLayoutListenerC1084i) || !viewTreeObserver$OnGlobalLayoutListenerC1084i.f2997c.getAndSet(false) || (m41867b = C1035g.m41867b(viewTreeObserver$OnGlobalLayoutListenerC1084i.f2995a.get())) == null) {
                    return;
                }
                ViewTreeObserver viewTreeObserver = m41867b.getViewTreeObserver();
                if (!viewTreeObserver.isAlive()) {
                    return;
                }
                viewTreeObserver.removeOnGlobalLayoutListener(viewTreeObserver$OnGlobalLayoutListenerC1084i);
            } catch (Throwable th) {
                C1220a.m41624a(th, ViewTreeObserver$OnGlobalLayoutListenerC1084i.class);
            }
        }
    }

    /* renamed from: b */
    public final void m41792b() {
        if (C1220a.m41623b(this)) {
            return;
        }
        try {
            Runnable runnable = new Runnable() { // from class: com.facebook.appevents.q0.b
                @Override // java.lang.Runnable
                public final void run() {
                    ViewTreeObserver$OnGlobalLayoutListenerC1084i viewTreeObserver$OnGlobalLayoutListenerC1084i = ViewTreeObserver$OnGlobalLayoutListenerC1084i.this;
                    if (C1220a.m41623b(ViewTreeObserver$OnGlobalLayoutListenerC1084i.class)) {
                        return;
                    }
                    try {
                        l.e(viewTreeObserver$OnGlobalLayoutListenerC1084i, "this$0");
                        try {
                            View m41867b = C1035g.m41867b(viewTreeObserver$OnGlobalLayoutListenerC1084i.f2995a.get());
                            Activity activity = viewTreeObserver$OnGlobalLayoutListenerC1084i.f2995a.get();
                            if (m41867b == null || activity == null) {
                                return;
                            }
                            C1082g c1082g = C1082g.f2987a;
                            for (View view : C1082g.m41801a(m41867b)) {
                                if (!C0998d.m41931b(view)) {
                                    C1082g c1082g2 = C1082g.f2987a;
                                    String m41798d = C1082g.m41798d(view);
                                    if ((m41798d.length() > 0) && m41798d.length() <= 300) {
                                        View$OnClickListenerC1085j.C1086a c1086a = View$OnClickListenerC1085j.f2998e;
                                        String localClassName = activity.getLocalClassName();
                                        l.d(localClassName, "activity.localClassName");
                                        c1086a.m41787a(view, m41867b, localClassName);
                                    }
                                }
                            }
                        } catch (Exception e) {
                        }
                    } catch (Throwable th) {
                        C1220a.m41624a(th, ViewTreeObserver$OnGlobalLayoutListenerC1084i.class);
                    }
                }
            };
            if (Thread.currentThread() == Looper.getMainLooper().getThread()) {
                runnable.run();
            } else {
                this.f2996b.post(runnable);
            }
        } catch (Throwable th) {
            C1220a.m41624a(th, this);
        }
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public void onGlobalLayout() {
        if (C1220a.m41623b(this)) {
            return;
        }
        try {
            m41792b();
        } catch (Throwable th) {
            C1220a.m41624a(th, this);
        }
    }
}
