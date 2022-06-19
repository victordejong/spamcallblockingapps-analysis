package com.iab.omid.library.verizonmedia.p453g;

import android.os.Handler;
import android.os.Looper;
import android.view.View;
import android.view.ViewParent;
import com.iab.omid.library.verizonmedia.adsession.C16492k;
import com.iab.omid.library.verizonmedia.p448b.C16494a;
import com.iab.omid.library.verizonmedia.p449c.AbstractC16504a;
import com.iab.omid.library.verizonmedia.p449c.C16506b;
import com.iab.omid.library.verizonmedia.p449c.C16507c;
import com.iab.omid.library.verizonmedia.p449c.C16508d;
import com.iab.omid.library.verizonmedia.p450d.C16511b;
import com.iab.omid.library.verizonmedia.p450d.C16515e;
import com.iab.omid.library.verizonmedia.p453g.C16535b;
import com.iab.omid.library.verizonmedia.p453g.p454a.AsyncTaskC16533e;
import com.iab.omid.library.verizonmedia.p453g.p454a.AsyncTaskC16534f;
import com.iab.omid.library.verizonmedia.p453g.p454a.C16531c;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.TimeUnit;
import org.json.JSONObject;
/* renamed from: com.iab.omid.library.verizonmedia.g.a */
/* loaded from: classes4-dex2jar.jar:com/iab/omid/library/verizonmedia/g/a.class */
public final class C16523a implements AbstractC16504a.AbstractC16505a {

    /* renamed from: e */
    private int f58118e;

    /* renamed from: i */
    private long f58122i;

    /* renamed from: c */
    private static C16523a f58113c = new C16523a();

    /* renamed from: a */
    public static Handler f58112a = new Handler(Looper.getMainLooper());

    /* renamed from: d */
    private static Handler f58114d = null;

    /* renamed from: j */
    private static final Runnable f58115j = new Runnable() { // from class: com.iab.omid.library.verizonmedia.g.a.2
        @Override // java.lang.Runnable
        public final void run() {
            C16523a.m7078b(C16523a.m7084a());
        }
    };

    /* renamed from: k */
    private static final Runnable f58116k = new Runnable() { // from class: com.iab.omid.library.verizonmedia.g.a.3
        @Override // java.lang.Runnable
        public final void run() {
            if (C16523a.f58114d != null) {
                C16523a.f58114d.post(C16523a.f58115j);
                C16523a.f58114d.postDelayed(C16523a.f58116k, 200L);
            }
        }
    };

    /* renamed from: b */
    public List<Object> f58117b = new ArrayList();

    /* renamed from: g */
    private C16535b f58120g = new C16535b();

    /* renamed from: f */
    private C16506b f58119f = new C16506b();

    /* renamed from: h */
    private C16537c f58121h = new C16537c(new C16531c());

    C16523a() {
    }

    /* renamed from: a */
    public static C16523a m7084a() {
        return f58113c;
    }

    /* renamed from: a */
    private void m7083a(long j) {
        if (this.f58117b.size() > 0) {
            Iterator<Object> it2 = this.f58117b.iterator();
            while (it2.hasNext()) {
                it2.next();
                TimeUnit.NANOSECONDS.toMillis(j);
            }
        }
    }

    /* renamed from: a */
    private void m7081a(View view, AbstractC16504a abstractC16504a, JSONObject jSONObject, int i) {
        abstractC16504a.mo7122a(view, jSONObject, this, i == C16538d.f58145a);
    }

    /* renamed from: b */
    public static void m7079b() {
        if (f58114d == null) {
            Handler handler = new Handler(Looper.getMainLooper());
            f58114d = handler;
            handler.post(f58115j);
            f58114d.postDelayed(f58116k, 200L);
        }
    }

    /* renamed from: b */
    static /* synthetic */ void m7078b(C16523a c16523a) {
        String str;
        c16523a.f58118e = 0;
        c16523a.f58122i = System.nanoTime();
        C16535b c16535b = c16523a.f58120g;
        C16494a m7145a = C16494a.m7145a();
        if (m7145a != null) {
            for (C16492k c16492k : Collections.unmodifiableCollection(m7145a.f58056b)) {
                View m7147e = c16492k.m7147e();
                if (c16492k.m7146f()) {
                    String str2 = c16492k.f58048f;
                    if (m7147e != null) {
                        if (m7147e.hasWindowFocus()) {
                            HashSet hashSet = new HashSet();
                            View view = m7147e;
                            while (true) {
                                View view2 = view;
                                if (view2 == null) {
                                    c16535b.f58136d.addAll(hashSet);
                                    str = null;
                                    break;
                                }
                                String m7095c = C16515e.m7095c(view2);
                                if (m7095c != null) {
                                    str = m7095c;
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
                            c16535b.f58137e.add(str2);
                            c16535b.f58133a.put(m7147e, str2);
                            c16535b.m7068a(c16492k);
                        } else {
                            c16535b.f58138f.add(str2);
                            c16535b.f58135c.put(str2, m7147e);
                            c16535b.f58139g.put(str2, str);
                        }
                    } else {
                        c16535b.f58138f.add(str2);
                        c16535b.f58139g.put(str2, "noAdView");
                    }
                }
            }
        }
        long nanoTime = System.nanoTime();
        C16507c c16507c = c16523a.f58119f.f58082b;
        if (c16523a.f58120g.f58138f.size() > 0) {
            Iterator<String> it2 = c16523a.f58120g.f58138f.iterator();
            while (it2.hasNext()) {
                String next = it2.next();
                JSONObject mo7123a = c16507c.mo7123a(null);
                View view3 = c16523a.f58120g.f58135c.get(next);
                C16508d c16508d = c16523a.f58119f.f58081a;
                String str3 = c16523a.f58120g.f58139g.get(next);
                if (str3 != null) {
                    JSONObject mo7123a2 = c16508d.mo7123a(view3);
                    C16511b.m7110a(mo7123a2, next);
                    C16511b.m7107b(mo7123a2, str3);
                    C16511b.m7108a(mo7123a, mo7123a2);
                }
                C16511b.m7112a(mo7123a);
                HashSet hashSet2 = new HashSet();
                hashSet2.add(next);
                C16537c c16537c = c16523a.f58121h;
                c16537c.f58143a.m7071a(new AsyncTaskC16533e(c16537c, hashSet2, mo7123a, nanoTime));
            }
        }
        if (c16523a.f58120g.f58137e.size() > 0) {
            JSONObject mo7123a3 = c16507c.mo7123a(null);
            c16523a.m7081a(null, c16507c, mo7123a3, C16538d.f58145a);
            C16511b.m7112a(mo7123a3);
            C16537c c16537c2 = c16523a.f58121h;
            c16537c2.f58143a.m7071a(new AsyncTaskC16534f(c16537c2, c16523a.f58120g.f58137e, mo7123a3, nanoTime));
        } else {
            c16523a.f58121h.m7064b();
        }
        C16535b c16535b2 = c16523a.f58120g;
        c16535b2.f58133a.clear();
        c16535b2.f58134b.clear();
        c16535b2.f58135c.clear();
        c16535b2.f58136d.clear();
        c16535b2.f58137e.clear();
        c16535b2.f58138f.clear();
        c16535b2.f58139g.clear();
        c16535b2.f58140h = false;
        c16523a.m7083a(System.nanoTime() - c16523a.f58122i);
    }

    /* renamed from: c */
    public static void m7077c() {
        Handler handler = f58114d;
        if (handler != null) {
            handler.removeCallbacks(f58116k);
            f58114d = null;
        }
    }

    @Override // com.iab.omid.library.verizonmedia.p449c.AbstractC16504a.AbstractC16505a
    /* renamed from: a */
    public final void mo7082a(View view, AbstractC16504a abstractC16504a, JSONObject jSONObject) {
        String str;
        boolean z = false;
        if (!(C16515e.m7095c(view) == null)) {
            return;
        }
        C16535b c16535b = this.f58120g;
        int i = c16535b.f58136d.contains(view) ? C16538d.f58145a : c16535b.f58140h ? C16538d.f58146b : C16538d.f58147c;
        if (i == C16538d.f58147c) {
            return;
        }
        JSONObject mo7123a = abstractC16504a.mo7123a(view);
        C16511b.m7108a(jSONObject, mo7123a);
        C16535b c16535b2 = this.f58120g;
        if (c16535b2.f58133a.size() == 0) {
            str = null;
        } else {
            str = c16535b2.f58133a.get(view);
            if (str != null) {
                c16535b2.f58133a.remove(view);
            }
        }
        if (str != null) {
            C16511b.m7110a(mo7123a, str);
            this.f58120g.f58140h = true;
            z = true;
        }
        if (!z) {
            C16535b c16535b3 = this.f58120g;
            C16535b.C16536a c16536a = c16535b3.f58134b.get(view);
            if (c16536a != null) {
                c16535b3.f58134b.remove(view);
            }
            if (c16536a != null) {
                C16511b.m7111a(mo7123a, c16536a);
            }
            m7081a(view, abstractC16504a, mo7123a, i);
        }
        this.f58118e++;
    }
}
