package com.iab.omid.library.applovin.walking;

import android.view.View;
import android.view.ViewParent;
import com.iab.omid.library.applovin.adsession.C1929a;
import com.iab.omid.library.applovin.p060b.C1931a;
import com.iab.omid.library.applovin.p060b.C1934c;
import com.iab.omid.library.applovin.p062d.C1951f;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.WeakHashMap;
/* renamed from: com.iab.omid.library.applovin.walking.a */
/* loaded from: classes-dex2jar.jar:com/iab/omid/library/applovin/walking/a.class */
public class C1961a {

    /* renamed from: a */
    private final HashMap<View, String> f7230a = new HashMap<>();

    /* renamed from: b */
    private final HashMap<View, C1962a> f7231b = new HashMap<>();

    /* renamed from: c */
    private final HashMap<String, View> f7232c = new HashMap<>();

    /* renamed from: d */
    private final HashSet<View> f7233d = new HashSet<>();

    /* renamed from: e */
    private final HashSet<String> f7234e = new HashSet<>();

    /* renamed from: f */
    private final HashSet<String> f7235f = new HashSet<>();

    /* renamed from: g */
    private final HashMap<String, String> f7236g = new HashMap<>();

    /* renamed from: h */
    private final Map<View, Boolean> f7237h = new WeakHashMap();

    /* renamed from: i */
    private boolean f7238i;

    /* renamed from: com.iab.omid.library.applovin.walking.a$a */
    /* loaded from: classes-dex2jar.jar:com/iab/omid/library/applovin/walking/a$a.class */
    public static class C1962a {

        /* renamed from: a */
        private final C1934c f7239a;

        /* renamed from: b */
        private final ArrayList<String> f7240b = new ArrayList<>();

        public C1962a(C1934c c1934c, String str) {
            this.f7239a = c1934c;
            m4007a(str);
        }

        /* renamed from: a */
        public C1934c m4008a() {
            return this.f7239a;
        }

        /* renamed from: a */
        public void m4007a(String str) {
            this.f7240b.add(str);
        }

        /* renamed from: b */
        public ArrayList<String> m4006b() {
            return this.f7240b;
        }
    }

    /* renamed from: a */
    private void m4021a(C1929a c1929a) {
        for (C1934c c1934c : c1929a.m4196a()) {
            m4020a(c1934c, c1929a);
        }
    }

    /* renamed from: a */
    private void m4020a(C1934c c1934c, C1929a c1929a) {
        View view = c1934c.m4156a().get();
        if (view == null) {
            return;
        }
        C1962a c1962a = this.f7231b.get(view);
        if (c1962a != null) {
            c1962a.m4007a(c1929a.getAdSessionId());
        } else {
            this.f7231b.put(view, new C1962a(c1934c, c1929a.getAdSessionId()));
        }
    }

    /* renamed from: e */
    private String m4010e(View view) {
        if (!view.isAttachedToWindow()) {
            return "notAttached";
        }
        if (m4009f(view).booleanValue()) {
            return "noWindowFocus";
        }
        HashSet hashSet = new HashSet();
        while (view != null) {
            String m4069e = C1951f.m4069e(view);
            if (m4069e != null) {
                return m4069e;
            }
            hashSet.add(view);
            ViewParent parent = view.getParent();
            view = parent instanceof View ? (View) parent : null;
        }
        this.f7233d.addAll(hashSet);
        return null;
    }

    /* renamed from: f */
    private Boolean m4009f(View view) {
        if (view.hasWindowFocus()) {
            this.f7237h.remove(view);
            return Boolean.FALSE;
        } else if (this.f7237h.containsKey(view)) {
            return this.f7237h.get(view);
        } else {
            Map<View, Boolean> map = this.f7237h;
            Boolean bool = Boolean.FALSE;
            map.put(view, bool);
            return bool;
        }
    }

    /* renamed from: a */
    public String m4022a(View view) {
        if (this.f7230a.size() == 0) {
            return null;
        }
        String str = this.f7230a.get(view);
        if (str != null) {
            this.f7230a.remove(view);
        }
        return str;
    }

    /* renamed from: a */
    public String m4019a(String str) {
        return this.f7236g.get(str);
    }

    /* renamed from: a */
    public HashSet<String> m4023a() {
        return this.f7234e;
    }

    /* renamed from: b */
    public View m4016b(String str) {
        return this.f7232c.get(str);
    }

    /* renamed from: b */
    public C1962a m4017b(View view) {
        C1962a c1962a = this.f7231b.get(view);
        if (c1962a != null) {
            this.f7231b.remove(view);
        }
        return c1962a;
    }

    /* renamed from: b */
    public HashSet<String> m4018b() {
        return this.f7235f;
    }

    /* renamed from: c */
    public EnumC1972c m4014c(View view) {
        if (this.f7233d.contains(view)) {
            return EnumC1972c.PARENT_VIEW;
        }
        return this.f7238i ? EnumC1972c.OBSTRUCTION_VIEW : EnumC1972c.UNDERLYING_VIEW;
    }

    /* renamed from: c */
    public void m4015c() {
        C1931a m4171a = C1931a.m4171a();
        if (m4171a != null) {
            for (C1929a c1929a : m4171a.m4167c()) {
                View m4185e = c1929a.m4185e();
                if (c1929a.m4184f()) {
                    String adSessionId = c1929a.getAdSessionId();
                    if (m4185e != null) {
                        String m4010e = m4010e(m4185e);
                        if (m4010e == null) {
                            this.f7234e.add(adSessionId);
                            this.f7230a.put(m4185e, adSessionId);
                            m4021a(c1929a);
                        } else if (m4010e != "noWindowFocus") {
                            this.f7235f.add(adSessionId);
                            this.f7232c.put(adSessionId, m4185e);
                            this.f7236g.put(adSessionId, m4010e);
                        }
                    } else {
                        this.f7235f.add(adSessionId);
                        this.f7236g.put(adSessionId, "noAdView");
                    }
                }
            }
        }
    }

    /* renamed from: d */
    public void m4013d() {
        this.f7230a.clear();
        this.f7231b.clear();
        this.f7232c.clear();
        this.f7233d.clear();
        this.f7234e.clear();
        this.f7235f.clear();
        this.f7236g.clear();
        this.f7238i = false;
    }

    /* renamed from: d */
    public boolean m4012d(View view) {
        if (this.f7237h.containsKey(view)) {
            this.f7237h.put(view, Boolean.TRUE);
            return false;
        }
        return true;
    }

    /* renamed from: e */
    public void m4011e() {
        this.f7238i = true;
    }
}
