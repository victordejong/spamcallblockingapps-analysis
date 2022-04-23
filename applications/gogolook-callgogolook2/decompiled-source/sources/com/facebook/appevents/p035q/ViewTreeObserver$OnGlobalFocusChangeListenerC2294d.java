package com.facebook.appevents.p035q;

import android.app.Activity;
import android.os.Handler;
import android.os.Looper;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.Window;
import android.widget.EditText;
import androidx.annotation.Nullable;
import com.facebook.appevents.C2283m;
import com.facebook.appevents.p036r.p037g.C2326f;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.atomic.AtomicBoolean;
/* renamed from: com.facebook.appevents.q.d */
/* loaded from: classes-dex2jar.jar:com/facebook/appevents/q/d.class */
public final class ViewTreeObserver$OnGlobalFocusChangeListenerC2294d implements ViewTreeObserver.OnGlobalFocusChangeListener {

    /* renamed from: e */
    public static final Map<Integer, ViewTreeObserver$OnGlobalFocusChangeListenerC2294d> f2727e = new HashMap();

    /* renamed from: c */
    public WeakReference<Activity> f2730c;

    /* renamed from: a */
    public final Set<String> f2728a = new HashSet();

    /* renamed from: b */
    public final Handler f2729b = new Handler(Looper.getMainLooper());

    /* renamed from: d */
    public AtomicBoolean f2731d = new AtomicBoolean(false);

    /* renamed from: com.facebook.appevents.q.d$a */
    /* loaded from: classes-dex2jar.jar:com/facebook/appevents/q/d$a.class */
    public class RunnableC2295a implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ View f2732a;

        public RunnableC2295a(View view) {
            this.f2732a = view;
        }

        @Override // java.lang.Runnable
        public void run() {
            View view = this.f2732a;
            if (view instanceof EditText) {
                ViewTreeObserver$OnGlobalFocusChangeListenerC2294d.this.m35246b(view);
            }
        }
    }

    public ViewTreeObserver$OnGlobalFocusChangeListenerC2294d(Activity activity) {
        this.f2730c = new WeakReference<>(activity);
    }

    /* renamed from: a */
    public static void m35251a(Activity activity) {
        ViewTreeObserver$OnGlobalFocusChangeListenerC2294d dVar;
        int hashCode = activity.hashCode();
        if (!f2727e.containsKey(Integer.valueOf(hashCode))) {
            ViewTreeObserver$OnGlobalFocusChangeListenerC2294d dVar2 = new ViewTreeObserver$OnGlobalFocusChangeListenerC2294d(activity);
            f2727e.put(Integer.valueOf(activity.hashCode()), dVar2);
            dVar = dVar2;
        } else {
            dVar = f2727e.get(Integer.valueOf(hashCode));
        }
        dVar.m35247b();
    }

    @Nullable
    /* renamed from: a */
    public final View m35252a() {
        Window window;
        Activity activity = this.f2730c.get();
        if (activity == null || (window = activity.getWindow()) == null) {
            return null;
        }
        return window.getDecorView().getRootView();
    }

    /* renamed from: a */
    public final void m35250a(View view) {
        m35248a(new RunnableC2295a(view));
    }

    /* renamed from: a */
    public final void m35248a(Runnable runnable) {
        if (Thread.currentThread() == Looper.getMainLooper().getThread()) {
            runnable.run();
        } else {
            this.f2729b.post(runnable);
        }
    }

    /* renamed from: b */
    public final void m35247b() {
        View a;
        if (!this.f2731d.getAndSet(true) && (a = m35252a()) != null) {
            ViewTreeObserver viewTreeObserver = a.getViewTreeObserver();
            if (viewTreeObserver.isAlive()) {
                viewTreeObserver.addOnGlobalFocusChangeListener(this);
            }
        }
    }

    /* renamed from: b */
    public final void m35246b(View view) {
        String trim = ((EditText) view).getText().toString().trim();
        if (!(trim.isEmpty() || this.f2728a.contains(trim) || trim.length() > 100)) {
            this.f2728a.add(trim);
            HashMap hashMap = new HashMap();
            List<String> list = null;
            ArrayList arrayList = null;
            for (C2293c cVar : C2293c.m35254d()) {
                if (C2292b.m35263a(trim, cVar.m35255c())) {
                    List<String> list2 = list;
                    if (list == null) {
                        list2 = C2292b.m35264a(view);
                    }
                    if (C2292b.m35261a(list2, cVar.m35259a())) {
                        hashMap.put(cVar.m35256b(), trim);
                        list = list2;
                    } else {
                        ArrayList arrayList2 = arrayList;
                        if (arrayList == null) {
                            arrayList = new ArrayList();
                            ViewGroup i = C2326f.m35158i(view);
                            if (i != null) {
                                Iterator<View> it = C2326f.m35165b(i).iterator();
                                while (true) {
                                    arrayList2 = arrayList;
                                    if (!it.hasNext()) {
                                        break;
                                    }
                                    View next = it.next();
                                    if (view != next) {
                                        arrayList.addAll(C2292b.m35260b(next));
                                    }
                                }
                            } else {
                                list = list2;
                            }
                        }
                        list = list2;
                        arrayList = arrayList2;
                        if (C2292b.m35261a(arrayList2, cVar.m35259a())) {
                            hashMap.put(cVar.m35256b(), trim);
                            list = list2;
                            arrayList = arrayList2;
                        }
                    }
                }
            }
            C2283m.m35296a(hashMap);
        }
    }

    @Override // android.view.ViewTreeObserver.OnGlobalFocusChangeListener
    public void onGlobalFocusChanged(@Nullable View view, @Nullable View view2) {
        if (view != null) {
            m35250a(view);
        }
        if (view2 != null) {
            m35250a(view2);
        }
    }
}
