package com.iab.omid.library.pubmatic.walking;

import android.view.View;
import android.view.ViewParent;
import com.iab.omid.library.pubmatic.adsession.C1753a;
import com.iab.omid.library.pubmatic.p012b.C1755a;
import com.iab.omid.library.pubmatic.p012b.C1758c;
import com.iab.omid.library.pubmatic.p014d.C1775f;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
/* renamed from: com.iab.omid.library.pubmatic.walking.a */
/* loaded from: classes2-dex2jar.jar:com/iab/omid/library/pubmatic/walking/a.class */
public class C1785a {

    /* renamed from: a */
    private final HashMap<View, String> f297a = new HashMap<>();

    /* renamed from: b */
    private final HashMap<View, C1786a> f298b = new HashMap<>();

    /* renamed from: c */
    private final HashMap<String, View> f299c = new HashMap<>();

    /* renamed from: d */
    private final HashSet<View> f300d = new HashSet<>();

    /* renamed from: e */
    private final HashSet<String> f301e = new HashSet<>();

    /* renamed from: f */
    private final HashSet<String> f302f = new HashSet<>();

    /* renamed from: g */
    private final HashMap<String, String> f303g = new HashMap<>();

    /* renamed from: h */
    private boolean f304h;

    /* renamed from: com.iab.omid.library.pubmatic.walking.a$a */
    /* loaded from: classes2-dex2jar.jar:com/iab/omid/library/pubmatic/walking/a$a.class */
    public static class C1786a {

        /* renamed from: a */
        private final C1758c f305a;

        /* renamed from: b */
        private final ArrayList<String> f306b = new ArrayList<>();

        public C1786a(C1758c c1758c, String str) {
            this.f305a = c1758c;
            m1148a(str);
        }

        /* renamed from: a */
        public C1758c m1149a() {
            return this.f305a;
        }

        /* renamed from: a */
        public void m1148a(String str) {
            this.f306b.add(str);
        }

        /* renamed from: b */
        public ArrayList<String> m1147b() {
            return this.f306b;
        }
    }

    /* renamed from: a */
    private void m1160a(C1753a c1753a) {
        for (C1758c c1758c : c1753a.m1329a()) {
            m1159a(c1758c, c1753a);
        }
    }

    /* renamed from: a */
    private void m1159a(C1758c c1758c, C1753a c1753a) {
        View view = (View) c1758c.m1292a().get();
        if (view == null) {
            return;
        }
        C1786a c1786a = this.f298b.get(view);
        if (c1786a != null) {
            c1786a.m1148a(c1753a.getAdSessionId());
        } else {
            this.f298b.put(view, new C1786a(c1758c, c1753a.getAdSessionId()));
        }
    }

    /* renamed from: d */
    private String m1151d(View view) {
        if (!view.hasWindowFocus()) {
            return "noWindowFocus";
        }
        HashSet hashSet = new HashSet();
        while (view != null) {
            String m1208e = C1775f.m1208e(view);
            if (m1208e != null) {
                return m1208e;
            }
            hashSet.add(view);
            ViewParent parent = view.getParent();
            view = parent instanceof View ? (View) parent : null;
        }
        this.f300d.addAll(hashSet);
        return null;
    }

    /* renamed from: a */
    public String m1161a(View view) {
        if (this.f297a.size() == 0) {
            return null;
        }
        String str = this.f297a.get(view);
        if (str != null) {
            this.f297a.remove(view);
        }
        return str;
    }

    /* renamed from: a */
    public String m1158a(String str) {
        return this.f303g.get(str);
    }

    /* renamed from: a */
    public HashSet<String> m1162a() {
        return this.f301e;
    }

    /* renamed from: b */
    public View m1155b(String str) {
        return this.f299c.get(str);
    }

    /* renamed from: b */
    public C1786a m1156b(View view) {
        C1786a c1786a = this.f298b.get(view);
        if (c1786a != null) {
            this.f298b.remove(view);
        }
        return c1786a;
    }

    /* renamed from: b */
    public HashSet<String> m1157b() {
        return this.f302f;
    }

    /* renamed from: c */
    public EnumC1796c m1153c(View view) {
        if (this.f300d.contains(view)) {
            return EnumC1796c.PARENT_VIEW;
        }
        return this.f304h ? EnumC1796c.OBSTRUCTION_VIEW : EnumC1796c.UNDERLYING_VIEW;
    }

    /* renamed from: c */
    public void m1154c() {
        C1755a m1306a = C1755a.m1306a();
        if (m1306a != null) {
            for (C1753a c1753a : m1306a.m1302c()) {
                View m1321d = c1753a.m1321d();
                if (c1753a.m1319e()) {
                    String adSessionId = c1753a.getAdSessionId();
                    if (m1321d != null) {
                        String m1151d = m1151d(m1321d);
                        if (m1151d == null) {
                            this.f301e.add(adSessionId);
                            this.f297a.put(m1321d, adSessionId);
                            m1160a(c1753a);
                        } else {
                            this.f302f.add(adSessionId);
                            this.f299c.put(adSessionId, m1321d);
                            this.f303g.put(adSessionId, m1151d);
                        }
                    } else {
                        this.f302f.add(adSessionId);
                        this.f303g.put(adSessionId, "noAdView");
                    }
                }
            }
        }
    }

    /* renamed from: d */
    public void m1152d() {
        this.f297a.clear();
        this.f298b.clear();
        this.f299c.clear();
        this.f300d.clear();
        this.f301e.clear();
        this.f302f.clear();
        this.f303g.clear();
        this.f304h = false;
    }

    /* renamed from: e */
    public void m1150e() {
        this.f304h = true;
    }
}
