package com.facebook.appevents.b;

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
import com.facebook.appevents.b.a;
import com.facebook.appevents.b.a.c;
import com.facebook.appevents.b.a.f;
import com.facebook.appevents.b.d;
import com.facebook.g;
import com.facebook.internal.ae;
import com.facebook.internal.p;
import com.facebook.internal.q;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.WeakHashMap;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:com/facebook/appevents/b/c.class */
public class c {
    private static final String f = "com.facebook.appevents.b.c";
    private static c g;

    /* renamed from: a  reason: collision with root package name */
    final Handler f19470a = new Handler(Looper.getMainLooper());

    /* renamed from: b  reason: collision with root package name */
    Set<Activity> f19471b = Collections.newSetFromMap(new WeakHashMap());

    /* renamed from: c  reason: collision with root package name */
    Set<b> f19472c = new HashSet();

    /* renamed from: d  reason: collision with root package name */
    HashSet<String> f19473d = new HashSet<>();
    HashMap<Integer, HashSet<String>> e = new HashMap<>();

    /* loaded from: classes3-dex2jar.jar:com/facebook/appevents/b/c$a.class */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        String f19475a;

        /* renamed from: b  reason: collision with root package name */
        private WeakReference<View> f19476b;

        public a(View view, String str) {
            this.f19476b = new WeakReference<>(view);
            this.f19475a = str;
        }

        public final View a() {
            WeakReference<View> weakReference = this.f19476b;
            if (weakReference == null) {
                return null;
            }
            return weakReference.get();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* loaded from: classes3-dex2jar.jar:com/facebook/appevents/b/c$b.class */
    public static final class b implements ViewTreeObserver.OnGlobalLayoutListener, ViewTreeObserver.OnScrollChangedListener, Runnable {

        /* renamed from: a  reason: collision with root package name */
        private WeakReference<View> f19477a;

        /* renamed from: b  reason: collision with root package name */
        private List<com.facebook.appevents.b.a.a> f19478b;

        /* renamed from: c  reason: collision with root package name */
        private final Handler f19479c;

        /* renamed from: d  reason: collision with root package name */
        private HashSet<String> f19480d;
        private final String e;

        public b(View view, Handler handler, HashSet<String> hashSet, String str) {
            this.f19477a = new WeakReference<>(view);
            this.f19479c = handler;
            this.f19480d = hashSet;
            this.e = str;
            handler.postDelayed(this, 200L);
        }

        private static List<View> a(ViewGroup viewGroup) {
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

        public static List<a> a(com.facebook.appevents.b.a.a aVar, View view, List<com.facebook.appevents.b.a.c> list, int i, int i2, String str) {
            String str2 = str + "." + String.valueOf(i2);
            ArrayList arrayList = new ArrayList();
            if (view == null) {
                return arrayList;
            }
            if (i >= list.size()) {
                arrayList.add(new a(view, str2));
            } else {
                com.facebook.appevents.b.a.c cVar = list.get(i);
                if (cVar.f19454a.equals("..")) {
                    ViewParent parent = view.getParent();
                    if (parent instanceof ViewGroup) {
                        List<View> a2 = a((ViewGroup) parent);
                        int size = a2.size();
                        for (int i3 = 0; i3 < size; i3++) {
                            arrayList.addAll(a(aVar, a2.get(i3), list, i + 1, i3, str2));
                        }
                    }
                    return arrayList;
                } else if (cVar.f19454a.equals(".")) {
                    arrayList.add(new a(view, str2));
                    return arrayList;
                } else if (!a(view, cVar, i2)) {
                    return arrayList;
                } else {
                    if (i == list.size() - 1) {
                        arrayList.add(new a(view, str2));
                    }
                }
            }
            if (view instanceof ViewGroup) {
                List<View> a3 = a((ViewGroup) view);
                int size2 = a3.size();
                for (int i4 = 0; i4 < size2; i4++) {
                    arrayList.addAll(a(aVar, a3.get(i4), list, i + 1, i4, str2));
                }
            }
            return arrayList;
        }

        private void a() {
            if (!(this.f19478b == null || this.f19477a.get() == null)) {
                for (int i = 0; i < this.f19478b.size(); i++) {
                    a(this.f19478b.get(i), this.f19477a.get());
                }
            }
        }

        private void a(com.facebook.appevents.b.a.a aVar, View view) {
            if (!(aVar == null || view == null)) {
                if (TextUtils.isEmpty(aVar.f19445d) || aVar.f19445d.equals(this.e)) {
                    List unmodifiableList = Collections.unmodifiableList(aVar.f19443b);
                    if (unmodifiableList.size() <= 25) {
                        for (a aVar2 : a(aVar, view, unmodifiableList, 0, -1, this.e)) {
                            a(aVar2, view, aVar);
                        }
                    }
                }
            }
        }

        private void a(a aVar, View view, com.facebook.appevents.b.a.a aVar2) {
            if (aVar2 != null) {
                try {
                    View a2 = aVar.a();
                    if (a2 != null) {
                        View i = f.i(a2);
                        if (i != null && f.a(a2, i)) {
                            d(aVar, view, aVar2);
                        } else if (!a2.getClass().getName().startsWith("com.facebook.react")) {
                            if (!(a2 instanceof AdapterView)) {
                                b(aVar, view, aVar2);
                            } else if (a2 instanceof ListView) {
                                c(aVar, view, aVar2);
                            }
                        }
                    }
                } catch (Exception e) {
                    ae.a(c.c(), e);
                }
            }
        }

        private static boolean a(View view, com.facebook.appevents.b.a.c cVar, int i) {
            if (cVar.f19455b != -1 && i != cVar.f19455b) {
                return false;
            }
            if (!view.getClass().getCanonicalName().equals(cVar.f19454a)) {
                if (!cVar.f19454a.matches(".*android\\..*")) {
                    return false;
                }
                String[] split = cVar.f19454a.split("\\.");
                if (split.length <= 0) {
                    return false;
                }
                if (!view.getClass().getSimpleName().equals(split[split.length - 1])) {
                    return false;
                }
            }
            if ((cVar.h & c.a.ID.getValue()) > 0 && cVar.f19456c != view.getId()) {
                return false;
            }
            if ((cVar.h & c.a.TEXT.getValue()) > 0) {
                String str = cVar.f19457d;
                String e = f.e(view);
                String a2 = ae.a(ae.c(e), "");
                if (!str.equals(e) && !str.equals(a2)) {
                    return false;
                }
            }
            if ((cVar.h & c.a.DESCRIPTION.getValue()) > 0) {
                String str2 = cVar.f;
                String valueOf = view.getContentDescription() == null ? "" : String.valueOf(view.getContentDescription());
                String a3 = ae.a(ae.c(valueOf), "");
                if (!str2.equals(valueOf) && !str2.equals(a3)) {
                    return false;
                }
            }
            if ((cVar.h & c.a.HINT.getValue()) > 0) {
                String str3 = cVar.g;
                String f = f.f(view);
                String a4 = ae.a(ae.c(f), "");
                if (!str3.equals(f) && !str3.equals(a4)) {
                    return false;
                }
            }
            if ((cVar.h & c.a.TAG.getValue()) <= 0) {
                return true;
            }
            String str4 = cVar.e;
            String valueOf2 = view.getTag() == null ? "" : String.valueOf(view.getTag());
            return str4.equals(valueOf2) || str4.equals(ae.a(ae.c(valueOf2), ""));
        }

        private void b(a aVar, View view, com.facebook.appevents.b.a.a aVar2) {
            View a2 = aVar.a();
            if (a2 != null) {
                String str = aVar.f19475a;
                View.OnClickListener g = f.g(a2);
                boolean z = (g instanceof a.View$OnClickListenerC0384a) && ((a.View$OnClickListenerC0384a) g).f19438a;
                if (!this.f19480d.contains(str) && !z) {
                    a2.setOnClickListener(com.facebook.appevents.b.a.a(aVar2, view, a2));
                    this.f19480d.add(str);
                }
            }
        }

        private void c(a aVar, View view, com.facebook.appevents.b.a.a aVar2) {
            AdapterView adapterView = (AdapterView) aVar.a();
            if (adapterView != null) {
                String str = aVar.f19475a;
                AdapterView.OnItemClickListener onItemClickListener = adapterView.getOnItemClickListener();
                boolean z = (onItemClickListener instanceof a.b) && ((a.b) onItemClickListener).f19446a;
                if (!this.f19480d.contains(str) && !z) {
                    adapterView.setOnItemClickListener(com.facebook.appevents.b.a.a(aVar2, view, adapterView));
                    this.f19480d.add(str);
                }
            }
        }

        private void d(a aVar, View view, com.facebook.appevents.b.a.a aVar2) {
            View a2 = aVar.a();
            if (a2 != null) {
                String str = aVar.f19475a;
                View.OnTouchListener h = f.h(a2);
                boolean z = (h instanceof d.a) && ((d.a) h).f19482a;
                if (!this.f19480d.contains(str) && !z) {
                    a2.setOnTouchListener(d.a(aVar2, view, a2));
                    this.f19480d.add(str);
                }
            }
        }

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public final void onGlobalLayout() {
            a();
        }

        @Override // android.view.ViewTreeObserver.OnScrollChangedListener
        public final void onScrollChanged() {
            a();
        }

        @Override // java.lang.Runnable
        public final void run() {
            View view;
            if (!com.facebook.internal.b.b.a.a(this)) {
                try {
                    p a2 = q.a(g.m());
                    if (a2 != null && a2.g) {
                        List<com.facebook.appevents.b.a.a> a3 = com.facebook.appevents.b.a.a.a(a2.h);
                        this.f19478b = a3;
                        if (a3 != null && (view = this.f19477a.get()) != null) {
                            ViewTreeObserver viewTreeObserver = view.getViewTreeObserver();
                            if (viewTreeObserver.isAlive()) {
                                viewTreeObserver.addOnGlobalLayoutListener(this);
                                viewTreeObserver.addOnScrollChangedListener(this);
                            }
                            a();
                        }
                    }
                } catch (Throwable th) {
                    com.facebook.internal.b.b.a.a(th, this);
                }
            }
        }
    }

    private c() {
    }

    public static Bundle a(com.facebook.appevents.b.a.a aVar, View view, View view2) {
        if (com.facebook.internal.b.b.a.a(c.class)) {
            return null;
        }
        try {
            Bundle bundle = new Bundle();
            if (aVar == null) {
                return bundle;
            }
            List<com.facebook.appevents.b.a.b> unmodifiableList = Collections.unmodifiableList(aVar.f19444c);
            if (unmodifiableList != null) {
                for (com.facebook.appevents.b.a.b bVar : unmodifiableList) {
                    if (bVar.f19451b != null && bVar.f19451b.length() > 0) {
                        bundle.putString(bVar.f19450a, bVar.f19451b);
                    } else if (bVar.f19452c.size() > 0) {
                        Iterator<a> it2 = (bVar.f19453d.equals("relative") ? b.a(aVar, view2, bVar.f19452c, 0, -1, view2.getClass().getSimpleName()) : b.a(aVar, view, bVar.f19452c, 0, -1, view.getClass().getSimpleName())).iterator();
                        while (true) {
                            if (it2.hasNext()) {
                                a next = it2.next();
                                if (next.a() != null) {
                                    String e = f.e(next.a());
                                    if (e.length() > 0) {
                                        bundle.putString(bVar.f19450a, e);
                                        break;
                                    }
                                }
                            }
                        }
                    }
                }
            }
            return bundle;
        } catch (Throwable th) {
            com.facebook.internal.b.b.a.a(th, c.class);
            return null;
        }
    }

    public static c a() {
        synchronized (c.class) {
            try {
                if (com.facebook.internal.b.b.a.a(c.class)) {
                    return null;
                }
                if (g == null) {
                    g = new c();
                }
                return g;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    static /* synthetic */ void a(c cVar) {
        if (!com.facebook.internal.b.b.a.a(c.class)) {
            try {
                cVar.b();
            } catch (Throwable th) {
                com.facebook.internal.b.b.a.a(th, c.class);
            }
        }
    }

    static /* synthetic */ String c() {
        if (com.facebook.internal.b.b.a.a(c.class)) {
            return null;
        }
        try {
            return f;
        } catch (Throwable th) {
            com.facebook.internal.b.b.a.a(th, c.class);
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b() {
        if (!com.facebook.internal.b.b.a.a(this)) {
            try {
                for (Activity activity : this.f19471b) {
                    if (activity != null) {
                        this.f19472c.add(new b(com.facebook.appevents.f.b.a(activity), this.f19470a, this.f19473d, activity.getClass().getSimpleName()));
                    }
                }
            } catch (Throwable th) {
                com.facebook.internal.b.b.a.a(th, this);
            }
        }
    }
}
