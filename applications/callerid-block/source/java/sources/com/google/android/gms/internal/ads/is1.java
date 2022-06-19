package com.google.android.gms.internal.ads;

import android.view.View;
import android.view.ViewParent;
import java.util.HashMap;
import java.util.HashSet;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/is1.class */
public final class is1 {

    /* renamed from: a */
    private final HashMap<View, String> f6839a = new HashMap<>();

    /* renamed from: b */
    private final HashMap<View, hs1> f6840b = new HashMap<>();

    /* renamed from: c */
    private final HashMap<String, View> f6841c = new HashMap<>();

    /* renamed from: d */
    private final HashSet<View> f6842d = new HashSet<>();

    /* renamed from: e */
    private final HashSet<String> f6843e = new HashSet<>();

    /* renamed from: f */
    private final HashSet<String> f6844f = new HashSet<>();

    /* renamed from: g */
    private final HashMap<String, String> f6845g = new HashMap<>();

    /* renamed from: h */
    private boolean f6846h;

    /* renamed from: a */
    public final HashSet<String> m7093a() {
        return this.f6843e;
    }

    /* renamed from: b */
    public final HashSet<String> m7092b() {
        return this.f6844f;
    }

    /* renamed from: c */
    public final String m7091c(String str) {
        return this.f6845g.get(str);
    }

    /* renamed from: d */
    public final void m7090d() {
        String str;
        mr1 m6521a = mr1.m6521a();
        if (m6521a != null) {
            for (er1 er1Var : m6521a.m6516f()) {
                View j = er1Var.j();
                if (er1Var.k()) {
                    String i = er1Var.i();
                    if (j != null) {
                        if (j.hasWindowFocus()) {
                            HashSet hashSet = new HashSet();
                            View view = j;
                            while (true) {
                                View view2 = view;
                                if (view2 == null) {
                                    this.f6842d.addAll(hashSet);
                                    str = null;
                                    break;
                                }
                                String m7340b = gs1.m7340b(view2);
                                if (m7340b != null) {
                                    str = m7340b;
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
                            this.f6843e.add(i);
                            this.f6839a.put(j, i);
                            for (pr1 pr1Var : er1Var.g()) {
                                View view3 = pr1Var.m6174a().get();
                                if (view3 != null) {
                                    hs1 hs1Var = this.f6840b.get(view3);
                                    if (hs1Var != null) {
                                        hs1Var.m7236a(er1Var.i());
                                    } else {
                                        this.f6840b.put(view3, new hs1(pr1Var, er1Var.i()));
                                    }
                                }
                            }
                        } else {
                            this.f6844f.add(i);
                            this.f6841c.put(i, j);
                            this.f6845g.put(i, str);
                        }
                    } else {
                        this.f6844f.add(i);
                        this.f6845g.put(i, "noAdView");
                    }
                }
            }
        }
    }

    /* renamed from: e */
    public final void m7089e() {
        this.f6839a.clear();
        this.f6840b.clear();
        this.f6841c.clear();
        this.f6842d.clear();
        this.f6843e.clear();
        this.f6844f.clear();
        this.f6845g.clear();
        this.f6846h = false;
    }

    /* renamed from: f */
    public final void m7088f() {
        this.f6846h = true;
    }

    /* renamed from: g */
    public final String m7087g(View view) {
        if (this.f6839a.size() == 0) {
            return null;
        }
        String str = this.f6839a.get(view);
        if (str != null) {
            this.f6839a.remove(view);
        }
        return str;
    }

    /* renamed from: h */
    public final View m7086h(String str) {
        return this.f6841c.get(str);
    }

    /* renamed from: i */
    public final hs1 m7085i(View view) {
        hs1 hs1Var = this.f6840b.get(view);
        if (hs1Var != null) {
            this.f6840b.remove(view);
        }
        return hs1Var;
    }

    /* renamed from: j */
    public final int m7084j(View view) {
        if (this.f6842d.contains(view)) {
            return 1;
        }
        return this.f6846h ? 2 : 3;
    }
}
