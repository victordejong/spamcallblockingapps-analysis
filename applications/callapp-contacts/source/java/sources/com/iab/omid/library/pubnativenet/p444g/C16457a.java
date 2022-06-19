package com.iab.omid.library.pubnativenet.p444g;

import android.os.Handler;
import android.os.Looper;
import android.view.View;
import android.view.ViewParent;
import com.iab.omid.library.pubnativenet.adsession.C16427k;
import com.iab.omid.library.pubnativenet.p439b.C16429a;
import com.iab.omid.library.pubnativenet.p440c.AbstractC16438a;
import com.iab.omid.library.pubnativenet.p440c.C16440b;
import com.iab.omid.library.pubnativenet.p440c.C16441c;
import com.iab.omid.library.pubnativenet.p440c.C16442d;
import com.iab.omid.library.pubnativenet.p441d.C16445b;
import com.iab.omid.library.pubnativenet.p441d.C16449e;
import com.iab.omid.library.pubnativenet.p444g.C16469b;
import com.iab.omid.library.pubnativenet.p444g.p445a.AsyncTaskC16467e;
import com.iab.omid.library.pubnativenet.p444g.p445a.AsyncTaskC16468f;
import com.iab.omid.library.pubnativenet.p444g.p445a.C16465c;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.TimeUnit;
import org.json.JSONObject;
/* renamed from: com.iab.omid.library.pubnativenet.g.a */
/* loaded from: classes4-dex2jar.jar:com/iab/omid/library/pubnativenet/g/a.class */
public final class C16457a implements AbstractC16438a.AbstractC16439a {

    /* renamed from: e */
    private int f57986e;

    /* renamed from: i */
    private long f57990i;

    /* renamed from: c */
    private static C16457a f57981c = new C16457a();

    /* renamed from: a */
    public static Handler f57980a = new Handler(Looper.getMainLooper());

    /* renamed from: d */
    private static Handler f57982d = null;

    /* renamed from: j */
    private static final Runnable f57983j = new Runnable() { // from class: com.iab.omid.library.pubnativenet.g.a.2
        @Override // java.lang.Runnable
        public final void run() {
            C16457a.m7196b(C16457a.m7202a());
        }
    };

    /* renamed from: k */
    private static final Runnable f57984k = new Runnable() { // from class: com.iab.omid.library.pubnativenet.g.a.3
        @Override // java.lang.Runnable
        public final void run() {
            if (C16457a.f57982d != null) {
                C16457a.f57982d.post(C16457a.f57983j);
                C16457a.f57982d.postDelayed(C16457a.f57984k, 200L);
            }
        }
    };

    /* renamed from: b */
    public List<Object> f57985b = new ArrayList();

    /* renamed from: g */
    private C16469b f57988g = new C16469b();

    /* renamed from: f */
    private C16440b f57987f = new C16440b();

    /* renamed from: h */
    private C16471c f57989h = new C16471c(new C16465c());

    C16457a() {
    }

    /* renamed from: a */
    public static C16457a m7202a() {
        return f57981c;
    }

    /* renamed from: a */
    private void m7201a(long j) {
        if (this.f57985b.size() > 0) {
            Iterator<Object> it2 = this.f57985b.iterator();
            while (it2.hasNext()) {
                it2.next();
                TimeUnit.NANOSECONDS.toMillis(j);
            }
        }
    }

    /* renamed from: a */
    private void m7199a(View view, AbstractC16438a abstractC16438a, JSONObject jSONObject, int i) {
        abstractC16438a.mo7243a(view, jSONObject, this, i == C16472d.f58013a);
    }

    /* renamed from: b */
    public static void m7197b() {
        if (f57982d == null) {
            Handler handler = new Handler(Looper.getMainLooper());
            f57982d = handler;
            handler.post(f57983j);
            f57982d.postDelayed(f57984k, 200L);
        }
    }

    /* renamed from: b */
    static /* synthetic */ void m7196b(C16457a c16457a) {
        String str;
        c16457a.f57986e = 0;
        c16457a.f57990i = System.nanoTime();
        C16469b c16469b = c16457a.f57988g;
        C16429a m7263a = C16429a.m7263a();
        if (m7263a != null) {
            for (C16427k c16427k : Collections.unmodifiableCollection(m7263a.f57927b)) {
                View m7266e = c16427k.m7266e();
                if (c16427k.m7264f()) {
                    String str2 = c16427k.f57919f;
                    if (m7266e != null) {
                        if (m7266e.hasWindowFocus()) {
                            HashSet hashSet = new HashSet();
                            View view = m7266e;
                            while (true) {
                                View view2 = view;
                                if (view2 == null) {
                                    c16469b.f58004d.addAll(hashSet);
                                    str = null;
                                    break;
                                }
                                String m7215c = C16449e.m7215c(view2);
                                if (m7215c != null) {
                                    str = m7215c;
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
                            c16469b.f58005e.add(str2);
                            c16469b.f58001a.put(m7266e, str2);
                            c16469b.m7186a(c16427k);
                        } else {
                            c16469b.f58006f.add(str2);
                            c16469b.f58003c.put(str2, m7266e);
                            c16469b.f58007g.put(str2, str);
                        }
                    } else {
                        c16469b.f58006f.add(str2);
                        c16469b.f58007g.put(str2, "noAdView");
                    }
                }
            }
        }
        long nanoTime = System.nanoTime();
        C16441c c16441c = c16457a.f57987f.f57950b;
        if (c16457a.f57988g.f58006f.size() > 0) {
            Iterator<String> it2 = c16457a.f57988g.f58006f.iterator();
            while (it2.hasNext()) {
                String next = it2.next();
                JSONObject mo7244a = c16441c.mo7244a(null);
                View view3 = c16457a.f57988g.f58003c.get(next);
                C16442d c16442d = c16457a.f57987f.f57949a;
                String str3 = c16457a.f57988g.f58007g.get(next);
                if (str3 != null) {
                    JSONObject mo7244a2 = c16442d.mo7244a(view3);
                    C16445b.m7231a(mo7244a2, next);
                    C16445b.m7228b(mo7244a2, str3);
                    C16445b.m7229a(mo7244a, mo7244a2);
                }
                C16445b.m7233a(mo7244a);
                HashSet hashSet2 = new HashSet();
                hashSet2.add(next);
                C16471c c16471c = c16457a.f57989h;
                c16471c.f58011a.m7189a(new AsyncTaskC16467e(c16471c, hashSet2, mo7244a, nanoTime));
            }
        }
        if (c16457a.f57988g.f58005e.size() > 0) {
            JSONObject mo7244a3 = c16441c.mo7244a(null);
            c16457a.m7199a(null, c16441c, mo7244a3, C16472d.f58013a);
            C16445b.m7233a(mo7244a3);
            C16471c c16471c2 = c16457a.f57989h;
            c16471c2.f58011a.m7189a(new AsyncTaskC16468f(c16471c2, c16457a.f57988g.f58005e, mo7244a3, nanoTime));
        } else {
            c16457a.f57989h.m7182b();
        }
        C16469b c16469b2 = c16457a.f57988g;
        c16469b2.f58001a.clear();
        c16469b2.f58002b.clear();
        c16469b2.f58003c.clear();
        c16469b2.f58004d.clear();
        c16469b2.f58005e.clear();
        c16469b2.f58006f.clear();
        c16469b2.f58007g.clear();
        c16469b2.f58008h = false;
        c16457a.m7201a(System.nanoTime() - c16457a.f57990i);
    }

    /* renamed from: c */
    public static void m7195c() {
        Handler handler = f57982d;
        if (handler != null) {
            handler.removeCallbacks(f57984k);
            f57982d = null;
        }
    }

    @Override // com.iab.omid.library.pubnativenet.p440c.AbstractC16438a.AbstractC16439a
    /* renamed from: a */
    public final void mo7200a(View view, AbstractC16438a abstractC16438a, JSONObject jSONObject) {
        String str;
        boolean z = false;
        if (!(C16449e.m7215c(view) == null)) {
            return;
        }
        C16469b c16469b = this.f57988g;
        int i = c16469b.f58004d.contains(view) ? C16472d.f58013a : c16469b.f58008h ? C16472d.f58014b : C16472d.f58015c;
        if (i == C16472d.f58015c) {
            return;
        }
        JSONObject mo7244a = abstractC16438a.mo7244a(view);
        C16445b.m7229a(jSONObject, mo7244a);
        C16469b c16469b2 = this.f57988g;
        if (c16469b2.f58001a.size() == 0) {
            str = null;
        } else {
            str = c16469b2.f58001a.get(view);
            if (str != null) {
                c16469b2.f58001a.remove(view);
            }
        }
        if (str != null) {
            C16445b.m7231a(mo7244a, str);
            this.f57988g.f58008h = true;
            z = true;
        }
        if (!z) {
            C16469b c16469b3 = this.f57988g;
            C16469b.C16470a c16470a = c16469b3.f58002b.get(view);
            if (c16470a != null) {
                c16469b3.f58002b.remove(view);
            }
            if (c16470a != null) {
                C16445b.m7232a(mo7244a, c16470a);
            }
            m7199a(view, abstractC16438a, mo7244a, i);
        }
        this.f57986e++;
    }
}
