package com.facebook.appevents.p036r;

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
import androidx.annotation.Nullable;
import androidx.media2.session.MediaSessionImplBase;
import com.facebook.appevents.p036r.C2296a;
import com.facebook.appevents.p036r.C2307d;
import com.facebook.appevents.p036r.p037g.C2318a;
import com.facebook.appevents.p036r.p037g.C2321b;
import com.facebook.appevents.p036r.p037g.C2322c;
import com.facebook.appevents.p036r.p037g.C2326f;
import com.facebook.internal.C2408g0;
import com.facebook.internal.C2464o;
import com.facebook.internal.C2466p;
import com.facebook.internal.C2500w;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.WeakHashMap;
import p081h.p154f.C6131k;
import p081h.p154f.C6135n;
/* renamed from: com.facebook.appevents.r.c */
/* loaded from: classes-dex2jar.jar:com/facebook/appevents/r/c.class */
public class C2303c {

    /* renamed from: f */
    public static final String f2756f = "com.facebook.appevents.r.c";

    /* renamed from: g */
    public static C2303c f2757g;

    /* renamed from: a */
    public final Handler f2758a = new Handler(Looper.getMainLooper());

    /* renamed from: b */
    public Set<Activity> f2759b = Collections.newSetFromMap(new WeakHashMap());

    /* renamed from: c */
    public Set<ViewTreeObserver$OnGlobalLayoutListenerC2306c> f2760c = new HashSet();

    /* renamed from: d */
    public HashSet<String> f2761d = new HashSet<>();

    /* renamed from: e */
    public HashMap<Integer, HashSet<String>> f2762e = new HashMap<>();

    /* renamed from: com.facebook.appevents.r.c$a */
    /* loaded from: classes-dex2jar.jar:com/facebook/appevents/r/c$a.class */
    public class RunnableC2304a implements Runnable {
        public RunnableC2304a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            C2303c.this.m35224a();
        }
    }

    /* renamed from: com.facebook.appevents.r.c$b */
    /* loaded from: classes-dex2jar.jar:com/facebook/appevents/r/c$b.class */
    public static class C2305b {

        /* renamed from: a */
        public WeakReference<View> f2764a;

        /* renamed from: b */
        public String f2765b;

        public C2305b(View view, String str) {
            this.f2764a = new WeakReference<>(view);
            this.f2765b = str;
        }

        @Nullable
        /* renamed from: a */
        public View m35215a() {
            WeakReference<View> weakReference = this.f2764a;
            return weakReference == null ? null : weakReference.get();
        }

        /* renamed from: b */
        public String m35214b() {
            return this.f2765b;
        }
    }

    /* renamed from: com.facebook.appevents.r.c$c */
    /* loaded from: classes-dex2jar.jar:com/facebook/appevents/r/c$c.class */
    public static class ViewTreeObserver$OnGlobalLayoutListenerC2306c implements ViewTreeObserver.OnGlobalLayoutListener, ViewTreeObserver.OnScrollChangedListener, Runnable {

        /* renamed from: a */
        public WeakReference<View> f2766a;
        @Nullable

        /* renamed from: b */
        public List<C2318a> f2767b;

        /* renamed from: c */
        public final Handler f2768c;

        /* renamed from: d */
        public HashSet<String> f2769d;

        /* renamed from: e */
        public final String f2770e;

        public ViewTreeObserver$OnGlobalLayoutListenerC2306c(View view, Handler handler, HashSet<String> hashSet, String str) {
            this.f2766a = new WeakReference<>(view);
            this.f2768c = handler;
            this.f2769d = hashSet;
            this.f2770e = str;
            this.f2768c.postDelayed(this, 200L);
        }

        /* renamed from: a */
        public static List<View> m35211a(ViewGroup viewGroup) {
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
        public static List<C2305b> m35208a(C2318a aVar, View view, List<C2322c> list, int i, int i2, String str) {
            String str2 = str + MediaSessionImplBase.DEFAULT_MEDIA_SESSION_TAG_DELIM + String.valueOf(i2);
            ArrayList arrayList = new ArrayList();
            if (view == null) {
                return arrayList;
            }
            if (i >= list.size()) {
                arrayList.add(new C2305b(view, str2));
            } else {
                C2322c cVar = list.get(i);
                if (cVar.f2805a.equals("..")) {
                    ViewParent parent = view.getParent();
                    if (parent instanceof ViewGroup) {
                        List<View> a = m35211a((ViewGroup) parent);
                        int size = a.size();
                        for (int i3 = 0; i3 < size; i3++) {
                            arrayList.addAll(m35208a(aVar, a.get(i3), list, i + 1, i3, str2));
                        }
                    }
                    return arrayList;
                } else if (cVar.f2805a.equals(MediaSessionImplBase.DEFAULT_MEDIA_SESSION_TAG_DELIM)) {
                    arrayList.add(new C2305b(view, str2));
                    return arrayList;
                } else if (!m35212a(view, cVar, i2)) {
                    return arrayList;
                } else {
                    if (i == list.size() - 1) {
                        arrayList.add(new C2305b(view, str2));
                    }
                }
            }
            if (view instanceof ViewGroup) {
                List<View> a2 = m35211a((ViewGroup) view);
                int size2 = a2.size();
                for (int i4 = 0; i4 < size2; i4++) {
                    arrayList.addAll(m35208a(aVar, a2.get(i4), list, i + 1, i4, str2));
                }
            }
            return arrayList;
        }

        /* renamed from: a */
        public static boolean m35212a(View view, C2322c cVar, int i) {
            int i2 = cVar.f2806b;
            if (i2 != -1 && i != i2) {
                return false;
            }
            if (!view.getClass().getCanonicalName().equals(cVar.f2805a)) {
                if (!cVar.f2805a.matches(".*android\\..*")) {
                    return false;
                }
                String[] split = cVar.f2805a.split("\\.");
                if (split.length <= 0) {
                    return false;
                }
                if (!view.getClass().getSimpleName().equals(split[split.length - 1])) {
                    return false;
                }
            }
            if ((cVar.f2812h & C2322c.EnumC2323a.ID.m35181a()) > 0 && cVar.f2807c != view.getId()) {
                return false;
            }
            if ((cVar.f2812h & C2322c.EnumC2323a.TEXT.m35181a()) > 0) {
                String str = cVar.f2808d;
                String j = C2326f.m35157j(view);
                String a = C2408g0.m34852a(C2408g0.m34806g(j), "");
                if (!str.equals(j) && !str.equals(a)) {
                    return false;
                }
            }
            if ((cVar.f2812h & C2322c.EnumC2323a.DESCRIPTION.m35181a()) > 0) {
                String str2 = cVar.f2810f;
                String valueOf = view.getContentDescription() == null ? "" : String.valueOf(view.getContentDescription());
                String a2 = C2408g0.m34852a(C2408g0.m34806g(valueOf), "");
                if (!str2.equals(valueOf) && !str2.equals(a2)) {
                    return false;
                }
            }
            if ((cVar.f2812h & C2322c.EnumC2323a.HINT.m35181a()) > 0) {
                String str3 = cVar.f2811g;
                String h = C2326f.m35159h(view);
                String a3 = C2408g0.m34852a(C2408g0.m34806g(h), "");
                if (!str3.equals(h) && !str3.equals(a3)) {
                    return false;
                }
            }
            if ((cVar.f2812h & C2322c.EnumC2323a.TAG.m35181a()) <= 0) {
                return true;
            }
            String str4 = cVar.f2809e;
            String valueOf2 = view.getTag() == null ? "" : String.valueOf(view.getTag());
            return str4.equals(valueOf2) || str4.equals(C2408g0.m34852a(C2408g0.m34806g(valueOf2), ""));
        }

        /* renamed from: a */
        public final void m35213a() {
            if (!(this.f2767b == null || this.f2766a.get() == null)) {
                for (int i = 0; i < this.f2767b.size(); i++) {
                    m35209a(this.f2767b.get(i), this.f2766a.get());
                }
            }
        }

        /* renamed from: a */
        public final void m35210a(C2305b bVar, View view, C2318a aVar) {
            if (aVar != null) {
                try {
                    View a = bVar.m35215a();
                    if (a != null) {
                        View a2 = C2326f.m35169a(a);
                        if (a2 != null && C2326f.m35168a(a, a2)) {
                            m35205d(bVar, view, aVar);
                        } else if (!a.getClass().getName().startsWith("com.facebook.react")) {
                            if (!(a instanceof AdapterView)) {
                                m35207b(bVar, view, aVar);
                            } else if (a instanceof ListView) {
                                m35206c(bVar, view, aVar);
                            }
                        }
                    }
                } catch (Exception e) {
                    C2408g0.m34853a(C2303c.f2756f, e);
                }
            }
        }

        /* renamed from: a */
        public void m35209a(C2318a aVar, View view) {
            if (!(aVar == null || view == null)) {
                if (TextUtils.isEmpty(aVar.m35187a()) || aVar.m35187a().equals(this.f2770e)) {
                    List<C2322c> d = aVar.m35182d();
                    if (d.size() <= 25) {
                        for (C2305b bVar : m35208a(aVar, view, d, 0, -1, this.f2770e)) {
                            m35210a(bVar, view, aVar);
                        }
                    }
                }
            }
        }

        /* renamed from: b */
        public final void m35207b(C2305b bVar, View view, C2318a aVar) {
            View a = bVar.m35215a();
            if (a != null) {
                String b = bVar.m35214b();
                View.OnClickListener f = C2326f.m35161f(a);
                boolean z = (f instanceof C2296a.View$OnClickListenerC2298b) && ((C2296a.View$OnClickListenerC2298b) f).m35241a();
                if (!this.f2769d.contains(b) && !z) {
                    a.setOnClickListener(C2296a.m35243b(aVar, view, a));
                    this.f2769d.add(b);
                }
            }
        }

        /* renamed from: c */
        public final void m35206c(C2305b bVar, View view, C2318a aVar) {
            AdapterView adapterView = (AdapterView) bVar.m35215a();
            if (adapterView != null) {
                String b = bVar.m35214b();
                AdapterView.OnItemClickListener onItemClickListener = adapterView.getOnItemClickListener();
                boolean z = (onItemClickListener instanceof C2296a.C2299c) && ((C2296a.C2299c) onItemClickListener).m35240a();
                if (!this.f2769d.contains(b) && !z) {
                    adapterView.setOnItemClickListener(C2296a.m35244a(aVar, view, adapterView));
                    this.f2769d.add(b);
                }
            }
        }

        /* renamed from: d */
        public final void m35205d(C2305b bVar, View view, C2318a aVar) {
            View a = bVar.m35215a();
            if (a != null) {
                String b = bVar.m35214b();
                View.OnTouchListener g = C2326f.m35160g(a);
                boolean z = (g instanceof C2307d.View$OnTouchListenerC2308a) && ((C2307d.View$OnTouchListenerC2308a) g).m35203a();
                if (!this.f2769d.contains(b) && !z) {
                    a.setOnTouchListener(C2307d.m35204a(aVar, view, a));
                    this.f2769d.add(b);
                }
            }
        }

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public void onGlobalLayout() {
            m35213a();
        }

        @Override // android.view.ViewTreeObserver.OnScrollChangedListener
        public void onScrollChanged() {
            m35213a();
        }

        @Override // java.lang.Runnable
        public void run() {
            View view;
            C2464o c = C2466p.m34636c(C6135n.m23745f());
            if (c != null && c.m34665b()) {
                this.f2767b = C2318a.m35186a(c.m34662e());
                if (this.f2767b != null && (view = this.f2766a.get()) != null) {
                    ViewTreeObserver viewTreeObserver = view.getViewTreeObserver();
                    if (viewTreeObserver.isAlive()) {
                        viewTreeObserver.addOnGlobalLayoutListener(this);
                        viewTreeObserver.addOnScrollChangedListener(this);
                    }
                    m35213a();
                }
            }
        }
    }

    /* renamed from: a */
    public static Bundle m35221a(C2318a aVar, View view, View view2) {
        Bundle bundle = new Bundle();
        if (aVar == null) {
            return bundle;
        }
        List<C2321b> c = aVar.m35183c();
        if (c != null) {
            for (C2321b bVar : c) {
                String str = bVar.f2802b;
                if (str != null && str.length() > 0) {
                    bundle.putString(bVar.f2801a, bVar.f2802b);
                } else if (bVar.f2803c.size() > 0) {
                    Iterator<C2305b> it = (bVar.f2804d.equals("relative") ? ViewTreeObserver$OnGlobalLayoutListenerC2306c.m35208a(aVar, view2, bVar.f2803c, 0, -1, view2.getClass().getSimpleName()) : ViewTreeObserver$OnGlobalLayoutListenerC2306c.m35208a(aVar, view, bVar.f2803c, 0, -1, view.getClass().getSimpleName())).iterator();
                    while (true) {
                        if (it.hasNext()) {
                            C2305b next = it.next();
                            if (next.m35215a() != null) {
                                String j = C2326f.m35157j(next.m35215a());
                                if (j.length() > 0) {
                                    bundle.putString(bVar.f2801a, j);
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

    /* renamed from: d */
    public static C2303c m35216d() {
        C2303c cVar;
        synchronized (C2303c.class) {
            try {
                if (f2757g == null) {
                    f2757g = new C2303c();
                }
                cVar = f2757g;
            } catch (Throwable th) {
                throw th;
            }
        }
        return cVar;
    }

    /* renamed from: a */
    public final void m35224a() {
        for (Activity activity : this.f2759b) {
            if (activity != null) {
                this.f2760c.add(new ViewTreeObserver$OnGlobalLayoutListenerC2306c(activity.getWindow().getDecorView().getRootView(), this.f2758a, this.f2761d, activity.getClass().getSimpleName()));
            }
        }
    }

    /* renamed from: a */
    public void m35223a(Activity activity) {
        if (!C2500w.m34565b()) {
            if (Thread.currentThread() == Looper.getMainLooper().getThread()) {
                this.f2759b.add(activity);
                this.f2761d.clear();
                if (this.f2762e.containsKey(Integer.valueOf(activity.hashCode()))) {
                    this.f2761d = this.f2762e.get(Integer.valueOf(activity.hashCode()));
                }
                m35220b();
                return;
            }
            throw new C6131k("Can't add activity to CodelessMatcher on non-UI thread");
        }
    }

    /* renamed from: b */
    public final void m35220b() {
        if (Thread.currentThread() == Looper.getMainLooper().getThread()) {
            m35224a();
        } else {
            this.f2758a.post(new RunnableC2304a());
        }
    }

    /* renamed from: b */
    public void m35219b(Activity activity) {
        this.f2762e.remove(Integer.valueOf(activity.hashCode()));
    }

    /* renamed from: c */
    public void m35217c(Activity activity) {
        if (!C2500w.m34565b()) {
            if (Thread.currentThread() == Looper.getMainLooper().getThread()) {
                this.f2759b.remove(activity);
                this.f2760c.clear();
                this.f2762e.put(Integer.valueOf(activity.hashCode()), (HashSet) this.f2761d.clone());
                this.f2761d.clear();
                return;
            }
            throw new C6131k("Can't remove activity from CodelessMatcher on non-UI thread");
        }
    }
}
