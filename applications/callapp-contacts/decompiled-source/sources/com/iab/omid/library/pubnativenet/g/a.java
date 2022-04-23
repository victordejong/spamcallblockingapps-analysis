package com.iab.omid.library.pubnativenet.g;

import android.os.Handler;
import android.os.Looper;
import android.view.View;
import android.view.ViewParent;
import com.iab.omid.library.pubnativenet.adsession.k;
import com.iab.omid.library.pubnativenet.c.a;
import com.iab.omid.library.pubnativenet.c.b;
import com.iab.omid.library.pubnativenet.c.d;
import com.iab.omid.library.pubnativenet.d.e;
import com.iab.omid.library.pubnativenet.g.a.c;
import com.iab.omid.library.pubnativenet.g.a.f;
import com.iab.omid.library.pubnativenet.g.b;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.TimeUnit;
import org.json.JSONObject;
/* loaded from: classes4-dex2jar.jar:com/iab/omid/library/pubnativenet/g/a.class */
public final class a implements a.AbstractC0534a {
    private int e;
    private long i;

    /* renamed from: c  reason: collision with root package name */
    private static a f33401c = new a();

    /* renamed from: a  reason: collision with root package name */
    public static Handler f33400a = new Handler(Looper.getMainLooper());

    /* renamed from: d  reason: collision with root package name */
    private static Handler f33402d = null;
    private static final Runnable j = new Runnable() { // from class: com.iab.omid.library.pubnativenet.g.a.2
        @Override // java.lang.Runnable
        public final void run() {
            a.b(a.a());
        }
    };
    private static final Runnable k = new Runnable() { // from class: com.iab.omid.library.pubnativenet.g.a.3
        @Override // java.lang.Runnable
        public final void run() {
            if (a.f33402d != null) {
                a.f33402d.post(a.j);
                a.f33402d.postDelayed(a.k, 200L);
            }
        }
    };

    /* renamed from: b  reason: collision with root package name */
    public List<Object> f33403b = new ArrayList();
    private b g = new b();
    private b f = new b();
    private c h = new c(new c());

    a() {
    }

    public static a a() {
        return f33401c;
    }

    private void a(long j2) {
        if (this.f33403b.size() > 0) {
            Iterator<Object> it2 = this.f33403b.iterator();
            while (it2.hasNext()) {
                it2.next();
                TimeUnit.NANOSECONDS.toMillis(j2);
            }
        }
    }

    private void a(View view, com.iab.omid.library.pubnativenet.c.a aVar, JSONObject jSONObject, int i) {
        aVar.a(view, jSONObject, this, i == d.f33421a);
    }

    public static void b() {
        if (f33402d == null) {
            Handler handler = new Handler(Looper.getMainLooper());
            f33402d = handler;
            handler.post(j);
            f33402d.postDelayed(k, 200L);
        }
    }

    static /* synthetic */ void b(a aVar) {
        String str;
        aVar.e = 0;
        aVar.i = System.nanoTime();
        b bVar = aVar.g;
        com.iab.omid.library.pubnativenet.b.a a2 = com.iab.omid.library.pubnativenet.b.a.a();
        if (a2 != null) {
            for (k kVar : Collections.unmodifiableCollection(a2.f33357b)) {
                View e = kVar.e();
                if (kVar.f()) {
                    String str2 = kVar.f;
                    if (e != null) {
                        if (e.hasWindowFocus()) {
                            HashSet hashSet = new HashSet();
                            View view = e;
                            while (true) {
                                if (view == null) {
                                    bVar.f33416d.addAll(hashSet);
                                    str = null;
                                    break;
                                }
                                String c2 = e.c(view);
                                if (c2 != null) {
                                    str = c2;
                                    break;
                                }
                                hashSet.add(view);
                                ViewParent parent = view.getParent();
                                view = parent instanceof View ? (View) parent : null;
                            }
                        } else {
                            str = "noWindowFocus";
                        }
                        if (str == null) {
                            bVar.e.add(str2);
                            bVar.f33413a.put(e, str2);
                            bVar.a(kVar);
                        } else {
                            bVar.f.add(str2);
                            bVar.f33415c.put(str2, e);
                            bVar.g.put(str2, str);
                        }
                    } else {
                        bVar.f.add(str2);
                        bVar.g.put(str2, "noAdView");
                    }
                }
            }
        }
        long nanoTime = System.nanoTime();
        com.iab.omid.library.pubnativenet.c.c cVar = aVar.f.f33378b;
        if (aVar.g.f.size() > 0) {
            Iterator<String> it2 = aVar.g.f.iterator();
            while (it2.hasNext()) {
                String next = it2.next();
                JSONObject a3 = cVar.a(null);
                View view2 = aVar.g.f33415c.get(next);
                d dVar = aVar.f.f33377a;
                String str3 = aVar.g.g.get(next);
                if (str3 != null) {
                    JSONObject a4 = dVar.a(view2);
                    com.iab.omid.library.pubnativenet.d.b.a(a4, next);
                    com.iab.omid.library.pubnativenet.d.b.b(a4, str3);
                    com.iab.omid.library.pubnativenet.d.b.a(a3, a4);
                }
                com.iab.omid.library.pubnativenet.d.b.a(a3);
                HashSet hashSet2 = new HashSet();
                hashSet2.add(next);
                c cVar2 = aVar.h;
                cVar2.f33419a.a(new com.iab.omid.library.pubnativenet.g.a.e(cVar2, hashSet2, a3, nanoTime));
            }
        }
        if (aVar.g.e.size() > 0) {
            JSONObject a5 = cVar.a(null);
            aVar.a(null, cVar, a5, d.f33421a);
            com.iab.omid.library.pubnativenet.d.b.a(a5);
            c cVar3 = aVar.h;
            cVar3.f33419a.a(new f(cVar3, aVar.g.e, a5, nanoTime));
        } else {
            aVar.h.b();
        }
        b bVar2 = aVar.g;
        bVar2.f33413a.clear();
        bVar2.f33414b.clear();
        bVar2.f33415c.clear();
        bVar2.f33416d.clear();
        bVar2.e.clear();
        bVar2.f.clear();
        bVar2.g.clear();
        bVar2.h = false;
        aVar.a(System.nanoTime() - aVar.i);
    }

    public static void c() {
        Handler handler = f33402d;
        if (handler != null) {
            handler.removeCallbacks(k);
            f33402d = null;
        }
    }

    @Override // com.iab.omid.library.pubnativenet.c.a.AbstractC0534a
    public final void a(View view, com.iab.omid.library.pubnativenet.c.a aVar, JSONObject jSONObject) {
        String str;
        boolean z = false;
        if (e.c(view) == null) {
            b bVar = this.g;
            int i = bVar.f33416d.contains(view) ? d.f33421a : bVar.h ? d.f33422b : d.f33423c;
            if (i != d.f33423c) {
                JSONObject a2 = aVar.a(view);
                com.iab.omid.library.pubnativenet.d.b.a(jSONObject, a2);
                b bVar2 = this.g;
                if (bVar2.f33413a.size() == 0) {
                    str = null;
                } else {
                    str = bVar2.f33413a.get(view);
                    if (str != null) {
                        bVar2.f33413a.remove(view);
                    }
                }
                if (str != null) {
                    com.iab.omid.library.pubnativenet.d.b.a(a2, str);
                    this.g.h = true;
                    z = true;
                }
                if (!z) {
                    b bVar3 = this.g;
                    b.a aVar2 = bVar3.f33414b.get(view);
                    if (aVar2 != null) {
                        bVar3.f33414b.remove(view);
                    }
                    if (aVar2 != null) {
                        com.iab.omid.library.pubnativenet.d.b.a(a2, aVar2);
                    }
                    a(view, aVar, a2, i);
                }
                this.e++;
            }
        }
    }
}
