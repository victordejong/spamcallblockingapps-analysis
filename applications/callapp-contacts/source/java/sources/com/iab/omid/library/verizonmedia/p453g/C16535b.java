package com.iab.omid.library.verizonmedia.p453g;

import android.view.View;
import com.iab.omid.library.verizonmedia.adsession.C16492k;
import com.iab.omid.library.verizonmedia.p448b.C16498c;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
/* renamed from: com.iab.omid.library.verizonmedia.g.b */
/* loaded from: classes4-dex2jar.jar:com/iab/omid/library/verizonmedia/g/b.class */
public final class C16535b {

    /* renamed from: a */
    final HashMap<View, String> f58133a = new HashMap<>();

    /* renamed from: b */
    final HashMap<View, C16536a> f58134b = new HashMap<>();

    /* renamed from: c */
    final HashMap<String, View> f58135c = new HashMap<>();

    /* renamed from: d */
    final HashSet<View> f58136d = new HashSet<>();

    /* renamed from: e */
    final HashSet<String> f58137e = new HashSet<>();

    /* renamed from: f */
    final HashSet<String> f58138f = new HashSet<>();

    /* renamed from: g */
    final HashMap<String, String> f58139g = new HashMap<>();

    /* renamed from: h */
    boolean f58140h;

    /* renamed from: com.iab.omid.library.verizonmedia.g.b$a */
    /* loaded from: classes4-dex2jar.jar:com/iab/omid/library/verizonmedia/g/b$a.class */
    public static final class C16536a {

        /* renamed from: a */
        public final C16498c f58141a;

        /* renamed from: b */
        public final ArrayList<String> f58142b = new ArrayList<>();

        public C16536a(C16498c c16498c, String str) {
            this.f58141a = c16498c;
            m7067a(str);
        }

        /* renamed from: a */
        public final void m7067a(String str) {
            this.f58142b.add(str);
        }
    }

    /* renamed from: a */
    public final void m7068a(C16492k c16492k) {
        for (C16498c c16498c : c16492k.f58044b) {
            View view = (View) c16498c.f58064a.get();
            if (view != null) {
                C16536a c16536a = this.f58134b.get(view);
                if (c16536a != null) {
                    c16536a.m7067a(c16492k.f58048f);
                } else {
                    this.f58134b.put(view, new C16536a(c16498c, c16492k.f58048f));
                }
            }
        }
    }
}
