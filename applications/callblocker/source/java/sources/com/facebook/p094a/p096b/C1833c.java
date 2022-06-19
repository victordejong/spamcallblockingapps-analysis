package com.facebook.p094a.p096b;

import android.app.Activity;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.ViewTreeObserver;
import android.widget.AdapterView;
import android.widget.ListView;
import com.facebook.C2095j;
import com.facebook.FacebookException;
import com.facebook.internal.C2048l;
import com.facebook.internal.C2050m;
import com.facebook.internal.C2060p;
import com.facebook.internal.C2079x;
import com.facebook.p094a.p096b.C1817a;
import com.facebook.p094a.p096b.C1837d;
import com.facebook.p094a.p096b.p097a.C1821a;
import com.facebook.p094a.p096b.p097a.C1824b;
import com.facebook.p094a.p096b.p097a.C1825c;
import com.facebook.p094a.p096b.p097a.C1829f;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.WeakHashMap;
/* renamed from: com.facebook.a.b.c */
/* loaded from: classes-dex2jar.jar:com/facebook/a/b/c.class */
public class C1833c {

    /* renamed from: a */
    private static final String f5584a = C1833c.class.getCanonicalName();

    /* renamed from: g */
    private static C1833c f5585g = null;

    /* renamed from: b */
    private final Handler f5586b = new Handler(Looper.getMainLooper());

    /* renamed from: c */
    private Set<Activity> f5587c = Collections.newSetFromMap(new WeakHashMap());

    /* renamed from: d */
    private Set<ViewTreeObserver$OnGlobalLayoutListenerC1836b> f5588d = new HashSet();

    /* renamed from: e */
    private HashSet<String> f5589e = new HashSet<>();

    /* renamed from: f */
    private HashMap<Integer, HashSet<String>> f5590f = new HashMap<>();

    /* renamed from: com.facebook.a.b.c$a */
    /* loaded from: classes-dex2jar.jar:com/facebook/a/b/c$a.class */
    public static class C1835a {

        /* renamed from: a */
        private WeakReference<View> f5592a;

        /* renamed from: b */
        private String f5593b;

        public C1835a(View view, String str) {
            this.f5592a = new WeakReference<>(view);
            this.f5593b = str;
        }

        /* renamed from: a */
        public View m16137a() {
            return this.f5592a == null ? null : this.f5592a.get();
        }

        /* renamed from: b */
        public String m16136b() {
            return this.f5593b;
        }
    }

    /* renamed from: com.facebook.a.b.c$b */
    /* loaded from: classes-dex2jar.jar:com/facebook/a/b/c$b.class */
    public static class ViewTreeObserver$OnGlobalLayoutListenerC1836b implements ViewTreeObserver.OnGlobalLayoutListener, ViewTreeObserver.OnScrollChangedListener, Runnable {

        /* renamed from: a */
        private WeakReference<View> f5594a;

        /* renamed from: b */
        private List<C1821a> f5595b;

        /* renamed from: c */
        private final Handler f5596c;

        /* renamed from: d */
        private HashSet<String> f5597d;

        /* renamed from: e */
        private final String f5598e;

        public ViewTreeObserver$OnGlobalLayoutListenerC1836b(View view, Handler handler, HashSet<String> hashSet, String str) {
            this.f5594a = new WeakReference<>(view);
            this.f5596c = handler;
            this.f5597d = hashSet;
            this.f5598e = str;
            this.f5596c.postDelayed(this, 200L);
        }

        /* renamed from: a */
        private static List<View> m16133a(ViewGroup viewGroup) {
            ArrayList arrayList = new ArrayList();
            int childCount = viewGroup.getChildCount();
            for (int i = 0; i < childCount; i++) {
                View childAt = viewGroup.getChildAt(i);
                if (childAt.getVisibility() == 0) {
                    arrayList.add(childAt);
                }
            }
            return arrayList;
        }

        /* renamed from: a */
        public static List<C1835a> m16131a(C1821a c1821a, View view, List<C1825c> list, int i, int i2, String str) {
            String str2 = str + "." + String.valueOf(i2);
            ArrayList arrayList = new ArrayList();
            if (view != null) {
                if (i >= list.size()) {
                    arrayList.add(new C1835a(view, str2));
                } else {
                    C1825c c1825c = list.get(i);
                    if (c1825c.f5554a.equals("..")) {
                        ViewParent parent = view.getParent();
                        if (parent instanceof ViewGroup) {
                            List<View> m16133a = m16133a((ViewGroup) parent);
                            int size = m16133a.size();
                            for (int i3 = 0; i3 < size; i3++) {
                                arrayList.addAll(m16131a(c1821a, m16133a.get(i3), list, i + 1, i3, str2));
                            }
                        }
                    } else if (c1825c.f5554a.equals(".")) {
                        arrayList.add(new C1835a(view, str2));
                    } else if (m16134a(view, c1825c, i2)) {
                        if (i == list.size() - 1) {
                            arrayList.add(new C1835a(view, str2));
                        }
                    }
                }
                if (view instanceof ViewGroup) {
                    List<View> m16133a2 = m16133a((ViewGroup) view);
                    int size2 = m16133a2.size();
                    for (int i4 = 0; i4 < size2; i4++) {
                        arrayList.addAll(m16131a(c1821a, m16133a2.get(i4), list, i + 1, i4, str2));
                    }
                }
            }
            return arrayList;
        }

        /* renamed from: a */
        private void m16135a() {
            if (this.f5595b == null || this.f5594a.get() == null) {
                return;
            }
            for (int i = 0; i < this.f5595b.size(); i++) {
                m16132a(this.f5595b.get(i), this.f5594a.get());
            }
        }

        /* renamed from: a */
        private void m16130a(C1835a c1835a, View view, C1821a c1821a) {
            if (c1821a == null) {
                return;
            }
            try {
                View m16137a = c1835a.m16137a();
                if (m16137a != null) {
                    View m16165j = C1829f.m16165j(m16137a);
                    if (m16165j != null && C1829f.m16176a(m16137a, m16165j)) {
                        m16127d(c1835a, view, c1821a);
                    } else if (!m16137a.getClass().getName().startsWith("com.facebook.react")) {
                        if (!(m16137a instanceof AdapterView)) {
                            m16129b(c1835a, view, c1821a);
                        } else if (m16137a instanceof ListView) {
                            m16128c(c1835a, view, c1821a);
                        }
                    }
                }
            } catch (Exception e) {
                C2079x.m15470a(C1833c.f5584a, e);
            }
        }

        /* renamed from: a */
        private static boolean m16134a(View view, C1825c c1825c, int i) {
            boolean z;
            if (c1825c.f5555b == -1 || i == c1825c.f5555b) {
                if (!view.getClass().getCanonicalName().equals(c1825c.f5554a)) {
                    if (c1825c.f5554a.matches(".*android\\..*")) {
                        String[] split = c1825c.f5554a.split("\\.");
                        if (split.length > 0) {
                            if (!view.getClass().getSimpleName().equals(split[split.length - 1])) {
                                z = false;
                            }
                        } else {
                            z = false;
                        }
                    } else {
                        z = false;
                    }
                }
                if ((c1825c.f5561h & C1825c.EnumC1826a.ID.m16190a()) <= 0 || c1825c.f5556c == view.getId()) {
                    if ((c1825c.f5561h & C1825c.EnumC1826a.TEXT.m16190a()) > 0) {
                        String str = c1825c.f5557d;
                        String m16170e = C1829f.m16170e(view);
                        String m15469a = C2079x.m15469a(C2079x.m15442c(m16170e), "");
                        if (!str.equals(m16170e) && !str.equals(m15469a)) {
                            z = false;
                        }
                    }
                    if ((c1825c.f5561h & C1825c.EnumC1826a.DESCRIPTION.m16190a()) > 0) {
                        String str2 = c1825c.f5559f;
                        String valueOf = view.getContentDescription() == null ? "" : String.valueOf(view.getContentDescription());
                        String m15469a2 = C2079x.m15469a(C2079x.m15442c(valueOf), "");
                        if (!str2.equals(valueOf) && !str2.equals(m15469a2)) {
                            z = false;
                        }
                    }
                    if ((c1825c.f5561h & C1825c.EnumC1826a.HINT.m16190a()) > 0) {
                        String str3 = c1825c.f5560g;
                        String m16169f = C1829f.m16169f(view);
                        String m15469a3 = C2079x.m15469a(C2079x.m15442c(m16169f), "");
                        if (!str3.equals(m16169f) && !str3.equals(m15469a3)) {
                            z = false;
                        }
                    }
                    if ((c1825c.f5561h & C1825c.EnumC1826a.TAG.m16190a()) > 0) {
                        String str4 = c1825c.f5558e;
                        String valueOf2 = view.getTag() == null ? "" : String.valueOf(view.getTag());
                        String m15469a4 = C2079x.m15469a(C2079x.m15442c(valueOf2), "");
                        if (!str4.equals(valueOf2) && !str4.equals(m15469a4)) {
                            z = false;
                        }
                    }
                    z = true;
                } else {
                    z = false;
                }
            } else {
                z = false;
            }
            return z;
        }

        /* renamed from: b */
        private void m16129b(C1835a c1835a, View view, C1821a c1821a) {
            View m16137a = c1835a.m16137a();
            if (m16137a == null) {
                return;
            }
            String m16136b = c1835a.m16136b();
            View.OnClickListener m16168g = C1829f.m16168g(m16137a);
            boolean z = (m16168g instanceof C1817a.View$OnClickListenerC1819a) && ((C1817a.View$OnClickListenerC1819a) m16168g).m16197a();
            if (this.f5597d.contains(m16136b) || z) {
                return;
            }
            m16137a.setOnClickListener(C1817a.m16202a(c1821a, view, m16137a));
            this.f5597d.add(m16136b);
        }

        /* renamed from: c */
        private void m16128c(C1835a c1835a, View view, C1821a c1821a) {
            AdapterView adapterView = (AdapterView) c1835a.m16137a();
            if (adapterView == null) {
                return;
            }
            String m16136b = c1835a.m16136b();
            AdapterView.OnItemClickListener onItemClickListener = adapterView.getOnItemClickListener();
            boolean z = (onItemClickListener instanceof C1817a.C1820b) && ((C1817a.C1820b) onItemClickListener).m16191a();
            if (this.f5597d.contains(m16136b) || z) {
                return;
            }
            adapterView.setOnItemClickListener(C1817a.m16201a(c1821a, view, adapterView));
            this.f5597d.add(m16136b);
        }

        /* renamed from: d */
        private void m16127d(C1835a c1835a, View view, C1821a c1821a) {
            View m16137a = c1835a.m16137a();
            if (m16137a == null) {
                return;
            }
            String m16136b = c1835a.m16136b();
            View.OnTouchListener m16167h = C1829f.m16167h(m16137a);
            boolean z = (m16167h instanceof C1837d.View$OnTouchListenerC1838a) && ((C1837d.View$OnTouchListenerC1838a) m16167h).m16125a();
            if (this.f5597d.contains(m16136b) || z) {
                return;
            }
            m16137a.setOnTouchListener(C1837d.m16126a(c1821a, view, m16137a));
            this.f5597d.add(m16136b);
        }

        /* renamed from: a */
        public void m16132a(C1821a c1821a, View view) {
            if (c1821a == null || view == null) {
                return;
            }
            if (!TextUtils.isEmpty(c1821a.m16192d()) && !c1821a.m16192d().equals(this.f5598e)) {
                return;
            }
            List<C1825c> m16198a = c1821a.m16198a();
            if (m16198a.size() > 25) {
                return;
            }
            for (C1835a c1835a : m16131a(c1821a, view, m16198a, 0, -1, this.f5598e)) {
                m16130a(c1835a, view, c1821a);
            }
        }

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public void onGlobalLayout() {
            m16135a();
        }

        @Override // android.view.ViewTreeObserver.OnScrollChangedListener
        public void onScrollChanged() {
            m16135a();
        }

        @Override // java.lang.Runnable
        public void run() {
            View view;
            C2048l m15586a = C2050m.m15586a(C2095j.m15356l());
            if (m15586a == null || !m15586a.m15597i()) {
                return;
            }
            this.f5595b = C1821a.m16196a(m15586a.m15596j());
            if (this.f5595b == null || (view = this.f5594a.get()) == null) {
                return;
            }
            ViewTreeObserver viewTreeObserver = view.getViewTreeObserver();
            if (viewTreeObserver.isAlive()) {
                viewTreeObserver.addOnGlobalLayoutListener(this);
                viewTreeObserver.addOnScrollChangedListener(this);
            }
            m16135a();
        }
    }

    private C1833c() {
    }

    /* renamed from: a */
    public static Bundle m16144a(C1821a c1821a, View view, View view2) {
        List<C1824b> m16194b;
        Bundle bundle = new Bundle();
        if (c1821a != null && (m16194b = c1821a.m16194b()) != null) {
            for (C1824b c1824b : m16194b) {
                if (c1824b.f5551b != null && c1824b.f5551b.length() > 0) {
                    bundle.putString(c1824b.f5550a, c1824b.f5551b);
                } else if (c1824b.f5552c.size() > 0) {
                    Iterator<C1835a> it = (c1824b.f5553d.equals("relative") ? ViewTreeObserver$OnGlobalLayoutListenerC1836b.m16131a(c1821a, view2, c1824b.f5552c, 0, -1, view2.getClass().getSimpleName()) : ViewTreeObserver$OnGlobalLayoutListenerC1836b.m16131a(c1821a, view, c1824b.f5552c, 0, -1, view.getClass().getSimpleName())).iterator();
                    while (true) {
                        if (it.hasNext()) {
                            C1835a next = it.next();
                            if (next.m16137a() != null) {
                                String m16170e = C1829f.m16170e(next.m16137a());
                                if (m16170e.length() > 0) {
                                    bundle.putString(c1824b.f5550a, m16170e);
                                    break;
                                }
                            }
                        }
                    }
                }
            }
        }
        return bundle;
    }

    /* renamed from: a */
    public static C1833c m16146a() {
        C1833c c1833c;
        synchronized (C1833c.class) {
            try {
                if (f5585g == null) {
                    f5585g = new C1833c();
                }
                c1833c = f5585g;
            } catch (Throwable th) {
                throw th;
            }
        }
        return c1833c;
    }

    /* renamed from: c */
    private void m16140c() {
        if (Thread.currentThread() == Looper.getMainLooper().getThread()) {
            m16138d();
        } else {
            this.f5586b.post(new Runnable() { // from class: com.facebook.a.b.c.1
                @Override // java.lang.Runnable
                public void run() {
                    C1833c.this.m16138d();
                }
            });
        }
    }

    /* renamed from: d */
    public void m16138d() {
        for (Activity activity : this.f5587c) {
            if (activity != null) {
                this.f5588d.add(new ViewTreeObserver$OnGlobalLayoutListenerC1836b(activity.getWindow().getDecorView().getRootView(), this.f5586b, this.f5589e, activity.getClass().getSimpleName()));
            }
        }
    }

    /* renamed from: a */
    public void m16145a(Activity activity) {
        if (C2060p.m15557b()) {
            return;
        }
        if (Thread.currentThread() != Looper.getMainLooper().getThread()) {
            throw new FacebookException("Can't add activity to CodelessMatcher on non-UI thread");
        }
        this.f5587c.add(activity);
        this.f5589e.clear();
        if (this.f5590f.containsKey(Integer.valueOf(activity.hashCode()))) {
            this.f5589e = this.f5590f.get(Integer.valueOf(activity.hashCode()));
        }
        m16140c();
    }

    /* renamed from: b */
    public void m16141b(Activity activity) {
        if (C2060p.m15557b()) {
            return;
        }
        if (Thread.currentThread() != Looper.getMainLooper().getThread()) {
            throw new FacebookException("Can't remove activity from CodelessMatcher on non-UI thread");
        }
        this.f5587c.remove(activity);
        this.f5588d.clear();
        this.f5590f.put(Integer.valueOf(activity.hashCode()), (HashSet) this.f5589e.clone());
        this.f5589e.clear();
    }

    /* renamed from: c */
    public void m16139c(Activity activity) {
        this.f5590f.remove(Integer.valueOf(activity.hashCode()));
    }
}
