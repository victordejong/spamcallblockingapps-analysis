package com.facebook.p094a.p095a;

import android.app.Activity;
import android.os.Handler;
import android.os.Looper;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.Window;
import android.widget.EditText;
import com.facebook.p094a.C1927m;
import com.facebook.p094a.p096b.p097a.C1829f;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.atomic.AtomicBoolean;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.facebook.a.a.d */
/* loaded from: classes-dex2jar.jar:com/facebook/a/a/d.class */
public final class ViewTreeObserver$OnGlobalFocusChangeListenerC1813d implements ViewTreeObserver.OnGlobalFocusChangeListener {

    /* renamed from: a */
    private static final String f5509a = ViewTreeObserver$OnGlobalFocusChangeListenerC1813d.class.getCanonicalName();

    /* renamed from: b */
    private static final Map<Integer, ViewTreeObserver$OnGlobalFocusChangeListenerC1813d> f5510b = new HashMap();

    /* renamed from: e */
    private WeakReference<Activity> f5513e;

    /* renamed from: c */
    private final Set<String> f5511c = new HashSet();

    /* renamed from: d */
    private final Handler f5512d = new Handler(Looper.getMainLooper());

    /* renamed from: f */
    private AtomicBoolean f5514f = new AtomicBoolean(false);

    private ViewTreeObserver$OnGlobalFocusChangeListenerC1813d(Activity activity) {
        this.f5513e = new WeakReference<>(activity);
    }

    /* renamed from: a */
    private void m16213a() {
        View m16208b;
        if (!this.f5514f.getAndSet(true) && (m16208b = m16208b()) != null) {
            ViewTreeObserver viewTreeObserver = m16208b.getViewTreeObserver();
            if (!viewTreeObserver.isAlive()) {
                return;
            }
            viewTreeObserver.addOnGlobalFocusChangeListener(this);
        }
    }

    /* renamed from: a */
    public static void m16212a(Activity activity) {
        ViewTreeObserver$OnGlobalFocusChangeListenerC1813d viewTreeObserver$OnGlobalFocusChangeListenerC1813d;
        int hashCode = activity.hashCode();
        if (!f5510b.containsKey(Integer.valueOf(hashCode))) {
            ViewTreeObserver$OnGlobalFocusChangeListenerC1813d viewTreeObserver$OnGlobalFocusChangeListenerC1813d2 = new ViewTreeObserver$OnGlobalFocusChangeListenerC1813d(activity);
            f5510b.put(Integer.valueOf(activity.hashCode()), viewTreeObserver$OnGlobalFocusChangeListenerC1813d2);
            viewTreeObserver$OnGlobalFocusChangeListenerC1813d = viewTreeObserver$OnGlobalFocusChangeListenerC1813d2;
        } else {
            viewTreeObserver$OnGlobalFocusChangeListenerC1813d = f5510b.get(Integer.valueOf(hashCode));
        }
        viewTreeObserver$OnGlobalFocusChangeListenerC1813d.m16213a();
    }

    /* renamed from: a */
    private void m16211a(final View view) {
        m16209a(new Runnable() { // from class: com.facebook.a.a.d.1
            @Override // java.lang.Runnable
            public void run() {
                if (!(view instanceof EditText)) {
                    return;
                }
                ViewTreeObserver$OnGlobalFocusChangeListenerC1813d.this.m16207b(view);
            }
        });
    }

    /* renamed from: a */
    private void m16209a(Runnable runnable) {
        if (Thread.currentThread() == Looper.getMainLooper().getThread()) {
            runnable.run();
        } else {
            this.f5512d.post(runnable);
        }
    }

    /* renamed from: b */
    private View m16208b() {
        View rootView;
        Activity activity = this.f5513e.get();
        if (activity == null) {
            rootView = null;
        } else {
            Window window = activity.getWindow();
            rootView = window == null ? null : window.getDecorView().getRootView();
        }
        return rootView;
    }

    /* renamed from: b */
    public void m16207b(View view) {
        String trim = ((EditText) view).getText().toString().trim();
        if (trim.isEmpty() || this.f5511c.contains(trim) || trim.length() > 100) {
            return;
        }
        this.f5511c.add(trim);
        HashMap hashMap = new HashMap();
        Iterator<C1812c> it = C1812c.m16220a().iterator();
        ArrayList arrayList = null;
        List<String> list = null;
        while (true) {
            List<String> list2 = list;
            if (!it.hasNext()) {
                C1927m.m15853a(hashMap);
                return;
            }
            C1812c next = it.next();
            ArrayList arrayList2 = arrayList;
            List<String> list3 = list2;
            if (C1811b.m16224a(trim, next.m16215d())) {
                List<String> list4 = list2;
                if (list2 == null) {
                    list4 = C1811b.m16225a(view);
                }
                if (C1811b.m16222a(list4, next.m16216c())) {
                    hashMap.put(next.m16217b(), trim);
                    list = list4;
                } else {
                    ArrayList arrayList3 = arrayList;
                    if (arrayList == null) {
                        arrayList = new ArrayList();
                        ViewGroup m16178a = C1829f.m16178a(view);
                        if (m16178a == null) {
                            list = list4;
                        } else {
                            for (View view2 : C1829f.m16173b(m16178a)) {
                                if (view != view2) {
                                    arrayList.addAll(C1811b.m16221b(view2));
                                }
                            }
                            arrayList3 = arrayList;
                        }
                    }
                    arrayList2 = arrayList3;
                    list3 = list4;
                    if (C1811b.m16222a(arrayList3, next.m16216c())) {
                        hashMap.put(next.m16217b(), trim);
                        list3 = list4;
                        arrayList2 = arrayList3;
                    }
                }
            }
            arrayList = arrayList2;
            list = list3;
        }
    }

    @Override // android.view.ViewTreeObserver.OnGlobalFocusChangeListener
    public void onGlobalFocusChanged(View view, View view2) {
        if (view != null) {
            m16211a(view);
        }
        if (view2 != null) {
            m16211a(view2);
        }
    }
}
