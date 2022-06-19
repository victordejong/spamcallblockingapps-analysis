package com.facebook.appevents.p280b;

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
import com.facebook.C10181g;
import com.facebook.appevents.p280b.C9969a;
import com.facebook.appevents.p280b.C9991d;
import com.facebook.appevents.p280b.p281a.C9973a;
import com.facebook.appevents.p280b.p281a.C9976b;
import com.facebook.appevents.p280b.p281a.C9977c;
import com.facebook.appevents.p280b.p281a.C9981f;
import com.facebook.appevents.p285f.C10033b;
import com.facebook.internal.C10213ae;
import com.facebook.internal.C10302p;
import com.facebook.internal.C10306q;
import com.facebook.internal.p299b.p301b.C10249a;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.WeakHashMap;
/* renamed from: com.facebook.appevents.b.c */
/* loaded from: classes3-dex2jar.jar:com/facebook/appevents/b/c.class */
public class C9987c {

    /* renamed from: f */
    private static final String f33211f = "com.facebook.appevents.b.c";

    /* renamed from: g */
    private static C9987c f33212g;

    /* renamed from: a */
    final Handler f33213a = new Handler(Looper.getMainLooper());

    /* renamed from: b */
    Set<Activity> f33214b = Collections.newSetFromMap(new WeakHashMap());

    /* renamed from: c */
    Set<ViewTreeObserver$OnGlobalLayoutListenerC9990b> f33215c = new HashSet();

    /* renamed from: d */
    HashSet<String> f33216d = new HashSet<>();

    /* renamed from: e */
    HashMap<Integer, HashSet<String>> f33217e = new HashMap<>();

    /* renamed from: com.facebook.appevents.b.c$a */
    /* loaded from: classes3-dex2jar.jar:com/facebook/appevents/b/c$a.class */
    public static final class C9989a {

        /* renamed from: a */
        String f33219a;

        /* renamed from: b */
        private WeakReference<View> f33220b;

        public C9989a(View view, String str) {
            this.f33220b = new WeakReference<>(view);
            this.f33219a = str;
        }

        /* renamed from: a */
        public final View m23667a() {
            WeakReference<View> weakReference = this.f33220b;
            if (weakReference == null) {
                return null;
            }
            return weakReference.get();
        }
    }

    /* renamed from: com.facebook.appevents.b.c$b */
    /* loaded from: classes3-dex2jar.jar:com/facebook/appevents/b/c$b.class */
    public static final class ViewTreeObserver$OnGlobalLayoutListenerC9990b implements ViewTreeObserver.OnGlobalLayoutListener, ViewTreeObserver.OnScrollChangedListener, Runnable {

        /* renamed from: a */
        private WeakReference<View> f33221a;

        /* renamed from: b */
        private List<C9973a> f33222b;

        /* renamed from: c */
        private final Handler f33223c;

        /* renamed from: d */
        private HashSet<String> f33224d;

        /* renamed from: e */
        private final String f33225e;

        public ViewTreeObserver$OnGlobalLayoutListenerC9990b(View view, Handler handler, HashSet<String> hashSet, String str) {
            this.f33221a = new WeakReference<>(view);
            this.f33223c = handler;
            this.f33224d = hashSet;
            this.f33225e = str;
            handler.postDelayed(this, 200L);
        }

        /* renamed from: a */
        private static List<View> m23664a(ViewGroup viewGroup) {
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
        public static List<C9989a> m23662a(C9973a c9973a, View view, List<C9977c> list, int i, int i2, String str) {
            String str2 = str + "." + String.valueOf(i2);
            ArrayList arrayList = new ArrayList();
            if (view == null) {
                return arrayList;
            }
            if (i >= list.size()) {
                arrayList.add(new C9989a(view, str2));
            } else {
                C9977c c9977c = list.get(i);
                if (c9977c.f33186a.equals("..")) {
                    ViewParent parent = view.getParent();
                    if (parent instanceof ViewGroup) {
                        List<View> m23664a = m23664a((ViewGroup) parent);
                        int size = m23664a.size();
                        for (int i3 = 0; i3 < size; i3++) {
                            arrayList.addAll(m23662a(c9973a, m23664a.get(i3), list, i + 1, i3, str2));
                        }
                    }
                    return arrayList;
                } else if (c9977c.f33186a.equals(".")) {
                    arrayList.add(new C9989a(view, str2));
                    return arrayList;
                } else if (!m23665a(view, c9977c, i2)) {
                    return arrayList;
                } else {
                    if (i == list.size() - 1) {
                        arrayList.add(new C9989a(view, str2));
                    }
                }
            }
            if (view instanceof ViewGroup) {
                List<View> m23664a2 = m23664a((ViewGroup) view);
                int size2 = m23664a2.size();
                for (int i4 = 0; i4 < size2; i4++) {
                    arrayList.addAll(m23662a(c9973a, m23664a2.get(i4), list, i + 1, i4, str2));
                }
            }
            return arrayList;
        }

        /* renamed from: a */
        private void m23666a() {
            if (this.f33222b == null || this.f33221a.get() == null) {
                return;
            }
            for (int i = 0; i < this.f33222b.size(); i++) {
                m23663a(this.f33222b.get(i), this.f33221a.get());
            }
        }

        /* renamed from: a */
        private void m23663a(C9973a c9973a, View view) {
            if (c9973a == null || view == null) {
                return;
            }
            if (!TextUtils.isEmpty(c9973a.f33176d) && !c9973a.f33176d.equals(this.f33225e)) {
                return;
            }
            List unmodifiableList = Collections.unmodifiableList(c9973a.f33174b);
            if (unmodifiableList.size() > 25) {
                return;
            }
            for (C9989a c9989a : m23662a(c9973a, view, unmodifiableList, 0, -1, this.f33225e)) {
                m23661a(c9989a, view, c9973a);
            }
        }

        /* renamed from: a */
        private void m23661a(C9989a c9989a, View view, C9973a c9973a) {
            if (c9973a == null) {
                return;
            }
            try {
                View m23667a = c9989a.m23667a();
                if (m23667a == null) {
                    return;
                }
                View m23693i = C9981f.m23693i(m23667a);
                if (m23693i != null && C9981f.m23703a(m23667a, m23693i)) {
                    m23658d(c9989a, view, c9973a);
                } else if (m23667a.getClass().getName().startsWith("com.facebook.react")) {
                } else {
                    if (!(m23667a instanceof AdapterView)) {
                        m23660b(c9989a, view, c9973a);
                    } else if (!(m23667a instanceof ListView)) {
                    } else {
                        m23659c(c9989a, view, c9973a);
                    }
                }
            } catch (Exception e) {
                C10213ae.m23228a(C9987c.m23668c(), e);
            }
        }

        /* renamed from: a */
        private static boolean m23665a(View view, C9977c c9977c, int i) {
            if (c9977c.f33187b == -1 || i == c9977c.f33187b) {
                if (!view.getClass().getCanonicalName().equals(c9977c.f33186a)) {
                    if (!c9977c.f33186a.matches(".*android\\..*")) {
                        return false;
                    }
                    String[] split = c9977c.f33186a.split("\\.");
                    if (split.length <= 0) {
                        return false;
                    }
                    if (!view.getClass().getSimpleName().equals(split[split.length - 1])) {
                        return false;
                    }
                }
                if ((c9977c.f33193h & C9977c.EnumC9978a.ID.getValue()) > 0 && c9977c.f33188c != view.getId()) {
                    return false;
                }
                if ((c9977c.f33193h & C9977c.EnumC9978a.TEXT.getValue()) > 0) {
                    String str = c9977c.f33189d;
                    String m23697e = C9981f.m23697e(view);
                    String m23227a = C10213ae.m23227a(C10213ae.m23200c(m23697e), "");
                    if (!str.equals(m23697e) && !str.equals(m23227a)) {
                        return false;
                    }
                }
                if ((c9977c.f33193h & C9977c.EnumC9978a.DESCRIPTION.getValue()) > 0) {
                    String str2 = c9977c.f33191f;
                    String valueOf = view.getContentDescription() == null ? "" : String.valueOf(view.getContentDescription());
                    String m23227a2 = C10213ae.m23227a(C10213ae.m23200c(valueOf), "");
                    if (!str2.equals(valueOf) && !str2.equals(m23227a2)) {
                        return false;
                    }
                }
                if ((c9977c.f33193h & C9977c.EnumC9978a.HINT.getValue()) > 0) {
                    String str3 = c9977c.f33192g;
                    String m23696f = C9981f.m23696f(view);
                    String m23227a3 = C10213ae.m23227a(C10213ae.m23200c(m23696f), "");
                    if (!str3.equals(m23696f) && !str3.equals(m23227a3)) {
                        return false;
                    }
                }
                if ((c9977c.f33193h & C9977c.EnumC9978a.TAG.getValue()) <= 0) {
                    return true;
                }
                String str4 = c9977c.f33190e;
                String valueOf2 = view.getTag() == null ? "" : String.valueOf(view.getTag());
                return str4.equals(valueOf2) || str4.equals(C10213ae.m23227a(C10213ae.m23200c(valueOf2), ""));
            }
            return false;
        }

        /* renamed from: b */
        private void m23660b(C9989a c9989a, View view, C9973a c9973a) {
            View m23667a = c9989a.m23667a();
            if (m23667a == null) {
                return;
            }
            String str = c9989a.f33219a;
            View.OnClickListener m23695g = C9981f.m23695g(m23667a);
            boolean z = (m23695g instanceof C9969a.View$OnClickListenerC9971a) && ((C9969a.View$OnClickListenerC9971a) m23695g).f33163a;
            if (this.f33224d.contains(str) || z) {
                return;
            }
            m23667a.setOnClickListener(C9969a.m23720a(c9973a, view, m23667a));
            this.f33224d.add(str);
        }

        /* renamed from: c */
        private void m23659c(C9989a c9989a, View view, C9973a c9973a) {
            AdapterView adapterView = (AdapterView) c9989a.m23667a();
            if (adapterView == null) {
                return;
            }
            String str = c9989a.f33219a;
            AdapterView.OnItemClickListener onItemClickListener = adapterView.getOnItemClickListener();
            boolean z = (onItemClickListener instanceof C9969a.C9972b) && ((C9969a.C9972b) onItemClickListener).f33168a;
            if (this.f33224d.contains(str) || z) {
                return;
            }
            adapterView.setOnItemClickListener(C9969a.m23719a(c9973a, view, adapterView));
            this.f33224d.add(str);
        }

        /* renamed from: d */
        private void m23658d(C9989a c9989a, View view, C9973a c9973a) {
            View m23667a = c9989a.m23667a();
            if (m23667a == null) {
                return;
            }
            String str = c9989a.f33219a;
            View.OnTouchListener m23694h = C9981f.m23694h(m23667a);
            boolean z = (m23694h instanceof C9991d.View$OnTouchListenerC9992a) && ((C9991d.View$OnTouchListenerC9992a) m23694h).f33227a;
            if (this.f33224d.contains(str) || z) {
                return;
            }
            m23667a.setOnTouchListener(C9991d.m23657a(c9973a, view, m23667a));
            this.f33224d.add(str);
        }

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public final void onGlobalLayout() {
            m23666a();
        }

        @Override // android.view.ViewTreeObserver.OnScrollChangedListener
        public final void onScrollChanged() {
            m23666a();
        }

        @Override // java.lang.Runnable
        public final void run() {
            View view;
            if (C10249a.m23108a(this)) {
                return;
            }
            try {
                C10302p m23028a = C10306q.m23028a(C10181g.m23286m());
                if (m23028a != null && m23028a.f33850g) {
                    List<C9973a> m23717a = C9973a.m23717a(m23028a.f33851h);
                    this.f33222b = m23717a;
                    if (m23717a == null || (view = this.f33221a.get()) == null) {
                        return;
                    }
                    ViewTreeObserver viewTreeObserver = view.getViewTreeObserver();
                    if (viewTreeObserver.isAlive()) {
                        viewTreeObserver.addOnGlobalLayoutListener(this);
                        viewTreeObserver.addOnScrollChangedListener(this);
                    }
                    m23666a();
                }
            } catch (Throwable th) {
                C10249a.m23106a(th, this);
            }
        }
    }

    private C9987c() {
    }

    /* renamed from: a */
    public static Bundle m23671a(C9973a c9973a, View view, View view2) {
        if (C10249a.m23108a(C9987c.class)) {
            return null;
        }
        try {
            Bundle bundle = new Bundle();
            if (c9973a == null) {
                return bundle;
            }
            List<C9976b> unmodifiableList = Collections.unmodifiableList(c9973a.f33175c);
            if (unmodifiableList != null) {
                for (C9976b c9976b : unmodifiableList) {
                    if (c9976b.f33183b != null && c9976b.f33183b.length() > 0) {
                        bundle.putString(c9976b.f33182a, c9976b.f33183b);
                    } else if (c9976b.f33184c.size() > 0) {
                        Iterator<C9989a> it2 = (c9976b.f33185d.equals("relative") ? ViewTreeObserver$OnGlobalLayoutListenerC9990b.m23662a(c9973a, view2, c9976b.f33184c, 0, -1, view2.getClass().getSimpleName()) : ViewTreeObserver$OnGlobalLayoutListenerC9990b.m23662a(c9973a, view, c9976b.f33184c, 0, -1, view.getClass().getSimpleName())).iterator();
                        while (true) {
                            if (it2.hasNext()) {
                                C9989a next = it2.next();
                                if (next.m23667a() != null) {
                                    String m23697e = C9981f.m23697e(next.m23667a());
                                    if (m23697e.length() > 0) {
                                        bundle.putString(c9976b.f33182a, m23697e);
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
            C10249a.m23106a(th, C9987c.class);
            return null;
        }
    }

    /* renamed from: a */
    public static C9987c m23672a() {
        synchronized (C9987c.class) {
            try {
                if (C10249a.m23108a(C9987c.class)) {
                    return null;
                }
                if (f33212g == null) {
                    f33212g = new C9987c();
                }
                return f33212g;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: a */
    static /* synthetic */ void m23670a(C9987c c9987c) {
        if (C10249a.m23108a(C9987c.class)) {
            return;
        }
        try {
            c9987c.m23669b();
        } catch (Throwable th) {
            C10249a.m23106a(th, C9987c.class);
        }
    }

    /* renamed from: c */
    static /* synthetic */ String m23668c() {
        if (C10249a.m23108a(C9987c.class)) {
            return null;
        }
        try {
            return f33211f;
        } catch (Throwable th) {
            C10249a.m23106a(th, C9987c.class);
            return null;
        }
    }

    /* renamed from: b */
    public void m23669b() {
        if (C10249a.m23108a(this)) {
            return;
        }
        try {
            for (Activity activity : this.f33214b) {
                if (activity != null) {
                    this.f33215c.add(new ViewTreeObserver$OnGlobalLayoutListenerC9990b(C10033b.m23560a(activity), this.f33213a, this.f33216d, activity.getClass().getSimpleName()));
                }
            }
        } catch (Throwable th) {
            C10249a.m23106a(th, this);
        }
    }
}
