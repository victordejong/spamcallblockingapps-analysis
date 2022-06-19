package com.iab.omid.library.mopub.walking;

import android.view.View;
import android.view.ViewParent;
import com.iab.omid.library.mopub.adsession.a;
import com.iab.omid.library.mopub.p125b.C2601a;
import com.iab.omid.library.mopub.p125b.C2605c;
import com.iab.omid.library.mopub.p127d.C2619f;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
/* renamed from: com.iab.omid.library.mopub.walking.a */
/* loaded from: classes3-dex2jar.jar:com/iab/omid/library/mopub/walking/a.class */
public class C2623a {

    /* renamed from: a */
    private final HashMap<View, String> f8389a = new HashMap<>();

    /* renamed from: b */
    private final HashMap<View, C2624a> f8390b = new HashMap<>();

    /* renamed from: c */
    private final HashMap<String, View> f8391c = new HashMap<>();

    /* renamed from: d */
    private final HashSet<View> f8392d = new HashSet<>();

    /* renamed from: e */
    private final HashSet<String> f8393e = new HashSet<>();

    /* renamed from: f */
    private final HashSet<String> f8394f = new HashSet<>();

    /* renamed from: g */
    private final HashMap<String, String> f8395g = new HashMap<>();

    /* renamed from: h */
    private boolean f8396h;

    /* renamed from: com.iab.omid.library.mopub.walking.a$a */
    /* loaded from: classes3-dex2jar.jar:com/iab/omid/library/mopub/walking/a$a.class */
    public static class C2624a {

        /* renamed from: a */
        private final C2605c f8397a;

        /* renamed from: b */
        private final ArrayList<String> f8398b = new ArrayList<>();

        public C2624a(C2605c c2605c, String str) {
            this.f8397a = c2605c;
            m36346a(str);
        }

        /* renamed from: a */
        public C2605c m36347a() {
            return this.f8397a;
        }

        /* renamed from: a */
        public void m36346a(String str) {
            this.f8398b.add(str);
        }

        /* renamed from: b */
        public ArrayList<String> m36345b() {
            return this.f8398b;
        }
    }

    /* renamed from: a */
    private void m36358a(a aVar) {
        for (C2605c c2605c : aVar.a()) {
            m36357a(c2605c, aVar);
        }
    }

    /* renamed from: a */
    private void m36357a(C2605c c2605c, a aVar) {
        View view = c2605c.m36459a().get();
        if (view == null) {
            return;
        }
        C2624a c2624a = this.f8390b.get(view);
        if (c2624a != null) {
            c2624a.m36346a(aVar.getAdSessionId());
        } else {
            this.f8390b.put(view, new C2624a(c2605c, aVar.getAdSessionId()));
        }
    }

    /* renamed from: d */
    private String m36349d(View view) {
        if (!view.hasWindowFocus()) {
            return "noWindowFocus";
        }
        HashSet hashSet = new HashSet();
        while (view != null) {
            String m36384e = C2619f.m36384e(view);
            if (m36384e != null) {
                return m36384e;
            }
            hashSet.add(view);
            ViewParent parent = view.getParent();
            view = parent instanceof View ? (View) parent : null;
        }
        this.f8392d.addAll(hashSet);
        return null;
    }

    /* renamed from: a */
    public String m36359a(View view) {
        if (this.f8389a.size() == 0) {
            return null;
        }
        String str = this.f8389a.get(view);
        if (str != null) {
            this.f8389a.remove(view);
        }
        return str;
    }

    /* renamed from: a */
    public String m36356a(String str) {
        return this.f8395g.get(str);
    }

    /* renamed from: a */
    public HashSet<String> m36360a() {
        return this.f8393e;
    }

    /* renamed from: b */
    public View m36353b(String str) {
        return this.f8391c.get(str);
    }

    /* renamed from: b */
    public C2624a m36354b(View view) {
        C2624a c2624a = this.f8390b.get(view);
        if (c2624a != null) {
            this.f8390b.remove(view);
        }
        return c2624a;
    }

    /* renamed from: b */
    public HashSet<String> m36355b() {
        return this.f8394f;
    }

    /* renamed from: c */
    public EnumC2628c m36351c(View view) {
        if (this.f8392d.contains(view)) {
            return EnumC2628c.PARENT_VIEW;
        }
        return this.f8396h ? EnumC2628c.OBSTRUCTION_VIEW : EnumC2628c.UNDERLYING_VIEW;
    }

    /* renamed from: c */
    public void m36352c() {
        C2601a m36478a = C2601a.m36478a();
        if (m36478a != null) {
            for (a aVar : m36478a.m36474c()) {
                View d = aVar.d();
                if (aVar.e()) {
                    String adSessionId = aVar.getAdSessionId();
                    if (d != null) {
                        String m36349d = m36349d(d);
                        if (m36349d == null) {
                            this.f8393e.add(adSessionId);
                            this.f8389a.put(d, adSessionId);
                            m36358a(aVar);
                        } else {
                            this.f8394f.add(adSessionId);
                            this.f8391c.put(adSessionId, d);
                            this.f8395g.put(adSessionId, m36349d);
                        }
                    } else {
                        this.f8394f.add(adSessionId);
                        this.f8395g.put(adSessionId, "noAdView");
                    }
                }
            }
        }
    }

    /* renamed from: d */
    public void m36350d() {
        this.f8389a.clear();
        this.f8390b.clear();
        this.f8391c.clear();
        this.f8392d.clear();
        this.f8393e.clear();
        this.f8394f.clear();
        this.f8395g.clear();
        this.f8396h = false;
    }

    /* renamed from: e */
    public void m36348e() {
        this.f8396h = true;
    }
}
