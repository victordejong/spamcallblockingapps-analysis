package com.google.android.gms.internal.ads;

import android.view.View;
import android.view.ViewParent;
import java.util.HashMap;
import java.util.HashSet;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/rq2.class */
public final class rq2 {

    /* renamed from: a */
    private final HashMap<View, String> f29089a = new HashMap<>();

    /* renamed from: b */
    private final HashMap<View, qq2> f29090b = new HashMap<>();

    /* renamed from: c */
    private final HashMap<String, View> f29091c = new HashMap<>();

    /* renamed from: d */
    private final HashSet<View> f29092d = new HashSet<>();

    /* renamed from: e */
    private final HashSet<String> f29093e = new HashSet<>();

    /* renamed from: f */
    private final HashSet<String> f29094f = new HashSet<>();

    /* renamed from: g */
    private final HashMap<String, String> f29095g = new HashMap<>();

    /* renamed from: h */
    private boolean f29096h;

    /* renamed from: a */
    public final HashSet<String> m11333a() {
        return this.f29093e;
    }

    /* renamed from: b */
    public final HashSet<String> m11332b() {
        return this.f29094f;
    }

    /* renamed from: c */
    public final String m11331c(String str) {
        return this.f29095g.get(str);
    }

    /* renamed from: d */
    public final void m11330d() {
        String str;
        up2 m10275a = up2.m10275a();
        if (m10275a != null) {
            for (np2 np2Var : m10275a.m10270f()) {
                View m12827i = np2Var.m12827i();
                if (np2Var.m12826j()) {
                    String m12828h = np2Var.m12828h();
                    if (m12827i != null) {
                        if (m12827i.hasWindowFocus()) {
                            HashSet hashSet = new HashSet();
                            View view = m12827i;
                            while (true) {
                                View view2 = view;
                                if (view2 == null) {
                                    this.f29092d.addAll(hashSet);
                                    str = null;
                                    break;
                                }
                                String m12197b = pq2.m12197b(view2);
                                if (m12197b != null) {
                                    str = m12197b;
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
                            this.f29093e.add(m12828h);
                            this.f29089a.put(m12827i, m12828h);
                            for (xp2 xp2Var : np2Var.m12830f()) {
                                View view3 = xp2Var.m9093a().get();
                                if (view3 != null) {
                                    qq2 qq2Var = this.f29090b.get(view3);
                                    if (qq2Var != null) {
                                        qq2Var.m11825a(np2Var.m12828h());
                                    } else {
                                        this.f29090b.put(view3, new qq2(xp2Var, np2Var.m12828h()));
                                    }
                                }
                            }
                        } else {
                            this.f29094f.add(m12828h);
                            this.f29091c.put(m12828h, m12827i);
                            this.f29095g.put(m12828h, str);
                        }
                    } else {
                        this.f29094f.add(m12828h);
                        this.f29095g.put(m12828h, "noAdView");
                    }
                }
            }
        }
    }

    /* renamed from: e */
    public final void m11329e() {
        this.f29089a.clear();
        this.f29090b.clear();
        this.f29091c.clear();
        this.f29092d.clear();
        this.f29093e.clear();
        this.f29094f.clear();
        this.f29095g.clear();
        this.f29096h = false;
    }

    /* renamed from: f */
    public final void m11328f() {
        this.f29096h = true;
    }

    /* renamed from: g */
    public final String m11327g(View view) {
        if (this.f29089a.size() == 0) {
            return null;
        }
        String str = this.f29089a.get(view);
        if (str != null) {
            this.f29089a.remove(view);
        }
        return str;
    }

    /* renamed from: h */
    public final View m11326h(String str) {
        return this.f29091c.get(str);
    }

    /* renamed from: i */
    public final qq2 m11325i(View view) {
        qq2 qq2Var = this.f29090b.get(view);
        if (qq2Var != null) {
            this.f29090b.remove(view);
        }
        return qq2Var;
    }

    /* renamed from: j */
    public final int m11324j(View view) {
        if (this.f29092d.contains(view)) {
            return 1;
        }
        return this.f29096h ? 2 : 3;
    }
}
