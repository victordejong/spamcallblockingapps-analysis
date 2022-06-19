package com.iab.omid.library.mopub.p435g;

import android.os.Handler;
import android.os.Looper;
import android.view.View;
import android.view.ViewParent;
import com.iab.omid.library.mopub.adsession.C16360k;
import com.iab.omid.library.mopub.p430b.C16362a;
import com.iab.omid.library.mopub.p431c.AbstractC16372a;
import com.iab.omid.library.mopub.p431c.C16374b;
import com.iab.omid.library.mopub.p431c.C16375c;
import com.iab.omid.library.mopub.p431c.C16376d;
import com.iab.omid.library.mopub.p432d.C16379b;
import com.iab.omid.library.mopub.p432d.C16383e;
import com.iab.omid.library.mopub.p435g.C16403b;
import com.iab.omid.library.mopub.p435g.p436a.AsyncTaskC16401e;
import com.iab.omid.library.mopub.p435g.p436a.AsyncTaskC16402f;
import com.iab.omid.library.mopub.p435g.p436a.C16399c;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.TimeUnit;
import org.json.JSONObject;
/* renamed from: com.iab.omid.library.mopub.g.a */
/* loaded from: classes4-dex2jar.jar:com/iab/omid/library/mopub/g/a.class */
public final class C16391a implements AbstractC16372a.AbstractC16373a {

    /* renamed from: e */
    private int f57857e;

    /* renamed from: i */
    private long f57861i;

    /* renamed from: c */
    private static C16391a f57852c = new C16391a();

    /* renamed from: a */
    public static Handler f57851a = new Handler(Looper.getMainLooper());

    /* renamed from: d */
    private static Handler f57853d = null;

    /* renamed from: j */
    private static final Runnable f57854j = new Runnable() { // from class: com.iab.omid.library.mopub.g.a.2
        @Override // java.lang.Runnable
        public final void run() {
            C16391a.m7300b(C16391a.m7306a());
        }
    };

    /* renamed from: k */
    private static final Runnable f57855k = new Runnable() { // from class: com.iab.omid.library.mopub.g.a.3
        @Override // java.lang.Runnable
        public final void run() {
            if (C16391a.f57853d != null) {
                C16391a.f57853d.post(C16391a.f57854j);
                C16391a.f57853d.postDelayed(C16391a.f57855k, 200L);
            }
        }
    };

    /* renamed from: b */
    public List<Object> f57856b = new ArrayList();

    /* renamed from: g */
    private C16403b f57859g = new C16403b();

    /* renamed from: f */
    private C16374b f57858f = new C16374b();

    /* renamed from: h */
    private C16405c f57860h = new C16405c(new C16399c());

    C16391a() {
    }

    /* renamed from: a */
    public static C16391a m7306a() {
        return f57852c;
    }

    /* renamed from: a */
    private void m7305a(long j) {
        if (this.f57856b.size() > 0) {
            Iterator<Object> it2 = this.f57856b.iterator();
            while (it2.hasNext()) {
                it2.next();
                TimeUnit.NANOSECONDS.toMillis(j);
            }
        }
    }

    /* renamed from: a */
    private void m7303a(View view, AbstractC16372a abstractC16372a, JSONObject jSONObject, int i) {
        abstractC16372a.mo7345a(view, jSONObject, this, i == C16406d.f57884a);
    }

    /* renamed from: b */
    public static void m7301b() {
        if (f57853d == null) {
            Handler handler = new Handler(Looper.getMainLooper());
            f57853d = handler;
            handler.post(f57854j);
            f57853d.postDelayed(f57855k, 200L);
        }
    }

    /* renamed from: b */
    static /* synthetic */ void m7300b(C16391a c16391a) {
        String str;
        c16391a.f57857e = 0;
        c16391a.f57861i = System.nanoTime();
        C16403b c16403b = c16391a.f57859g;
        C16362a m7365a = C16362a.m7365a();
        if (m7365a != null) {
            for (C16360k c16360k : Collections.unmodifiableCollection(m7365a.f57795b)) {
                View m7367d = c16360k.m7367d();
                if (c16360k.m7366e()) {
                    String str2 = c16360k.f57787f;
                    if (m7367d != null) {
                        if (m7367d.hasWindowFocus()) {
                            HashSet hashSet = new HashSet();
                            View view = m7367d;
                            while (true) {
                                View view2 = view;
                                if (view2 == null) {
                                    c16403b.f57875d.addAll(hashSet);
                                    str = null;
                                    break;
                                }
                                String m7317c = C16383e.m7317c(view2);
                                if (m7317c != null) {
                                    str = m7317c;
                                    break;
                                }
                                hashSet.add(view2);
                                ViewParent parent = view2.getParent();
                                view = parent instanceof View ? (View) parent : null;
                            }
                        } else {
                            str = "noWindowFocus";
                        }
                        if (str == null) {
                            c16403b.f57876e.add(str2);
                            c16403b.f57872a.put(m7367d, str2);
                            c16403b.m7290a(c16360k);
                        } else {
                            c16403b.f57877f.add(str2);
                            c16403b.f57874c.put(str2, m7367d);
                            c16403b.f57878g.put(str2, str);
                        }
                    } else {
                        c16403b.f57877f.add(str2);
                        c16403b.f57878g.put(str2, "noAdView");
                    }
                }
            }
        }
        long nanoTime = System.nanoTime();
        C16375c c16375c = c16391a.f57858f.f57821b;
        if (c16391a.f57859g.f57877f.size() > 0) {
            Iterator<String> it2 = c16391a.f57859g.f57877f.iterator();
            while (it2.hasNext()) {
                String next = it2.next();
                JSONObject mo7346a = c16375c.mo7346a(null);
                View view3 = c16391a.f57859g.f57874c.get(next);
                C16376d c16376d = c16391a.f57858f.f57820a;
                String str3 = c16391a.f57859g.f57878g.get(next);
                if (str3 != null) {
                    JSONObject mo7346a2 = c16376d.mo7346a(view3);
                    C16379b.m7333a(mo7346a2, next);
                    C16379b.m7330b(mo7346a2, str3);
                    C16379b.m7331a(mo7346a, mo7346a2);
                }
                C16379b.m7335a(mo7346a);
                HashSet hashSet2 = new HashSet();
                hashSet2.add(next);
                C16405c c16405c = c16391a.f57860h;
                c16405c.f57882a.m7293a(new AsyncTaskC16401e(c16405c, hashSet2, mo7346a, nanoTime));
            }
        }
        if (c16391a.f57859g.f57876e.size() > 0) {
            JSONObject mo7346a3 = c16375c.mo7346a(null);
            c16391a.m7303a(null, c16375c, mo7346a3, C16406d.f57884a);
            C16379b.m7335a(mo7346a3);
            C16405c c16405c2 = c16391a.f57860h;
            c16405c2.f57882a.m7293a(new AsyncTaskC16402f(c16405c2, c16391a.f57859g.f57876e, mo7346a3, nanoTime));
        } else {
            c16391a.f57860h.m7286b();
        }
        C16403b c16403b2 = c16391a.f57859g;
        c16403b2.f57872a.clear();
        c16403b2.f57873b.clear();
        c16403b2.f57874c.clear();
        c16403b2.f57875d.clear();
        c16403b2.f57876e.clear();
        c16403b2.f57877f.clear();
        c16403b2.f57878g.clear();
        c16403b2.f57879h = false;
        c16391a.m7305a(System.nanoTime() - c16391a.f57861i);
    }

    /* renamed from: c */
    public static void m7299c() {
        Handler handler = f57853d;
        if (handler != null) {
            handler.removeCallbacks(f57855k);
            f57853d = null;
        }
    }

    @Override // com.iab.omid.library.mopub.p431c.AbstractC16372a.AbstractC16373a
    /* renamed from: a */
    public final void mo7304a(View view, AbstractC16372a abstractC16372a, JSONObject jSONObject) {
        String str;
        boolean z = false;
        if (!(C16383e.m7317c(view) == null)) {
            return;
        }
        C16403b c16403b = this.f57859g;
        int i = c16403b.f57875d.contains(view) ? C16406d.f57884a : c16403b.f57879h ? C16406d.f57885b : C16406d.f57886c;
        if (i == C16406d.f57886c) {
            return;
        }
        JSONObject mo7346a = abstractC16372a.mo7346a(view);
        C16379b.m7331a(jSONObject, mo7346a);
        C16403b c16403b2 = this.f57859g;
        if (c16403b2.f57872a.size() == 0) {
            str = null;
        } else {
            str = c16403b2.f57872a.get(view);
            if (str != null) {
                c16403b2.f57872a.remove(view);
            }
        }
        if (str != null) {
            C16379b.m7333a(mo7346a, str);
            this.f57859g.f57879h = true;
            z = true;
        }
        if (!z) {
            C16403b c16403b3 = this.f57859g;
            C16403b.C16404a c16404a = c16403b3.f57873b.get(view);
            if (c16404a != null) {
                c16403b3.f57873b.remove(view);
            }
            if (c16404a != null) {
                C16379b.m7334a(mo7346a, c16404a);
            }
            m7303a(view, abstractC16372a, mo7346a, i);
        }
        this.f57857e++;
    }
}
