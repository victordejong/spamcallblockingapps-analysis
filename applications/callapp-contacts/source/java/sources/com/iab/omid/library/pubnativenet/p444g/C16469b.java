package com.iab.omid.library.pubnativenet.p444g;

import android.view.View;
import com.iab.omid.library.pubnativenet.adsession.C16427k;
import com.iab.omid.library.pubnativenet.p439b.C16432c;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
/* renamed from: com.iab.omid.library.pubnativenet.g.b */
/* loaded from: classes4-dex2jar.jar:com/iab/omid/library/pubnativenet/g/b.class */
public final class C16469b {

    /* renamed from: a */
    final HashMap<View, String> f58001a = new HashMap<>();

    /* renamed from: b */
    final HashMap<View, C16470a> f58002b = new HashMap<>();

    /* renamed from: c */
    final HashMap<String, View> f58003c = new HashMap<>();

    /* renamed from: d */
    final HashSet<View> f58004d = new HashSet<>();

    /* renamed from: e */
    final HashSet<String> f58005e = new HashSet<>();

    /* renamed from: f */
    final HashSet<String> f58006f = new HashSet<>();

    /* renamed from: g */
    final HashMap<String, String> f58007g = new HashMap<>();

    /* renamed from: h */
    boolean f58008h;

    /* renamed from: com.iab.omid.library.pubnativenet.g.b$a */
    /* loaded from: classes4-dex2jar.jar:com/iab/omid/library/pubnativenet/g/b$a.class */
    public static final class C16470a {

        /* renamed from: a */
        public final C16432c f58009a;

        /* renamed from: b */
        public final ArrayList<String> f58010b = new ArrayList<>();

        public C16470a(C16432c c16432c, String str) {
            this.f58009a = c16432c;
            m7185a(str);
        }

        /* renamed from: a */
        public final void m7185a(String str) {
            this.f58010b.add(str);
        }
    }

    /* renamed from: a */
    public final void m7186a(C16427k c16427k) {
        for (C16432c c16432c : c16427k.f57915b) {
            View view = (View) c16432c.f57932a.get();
            if (view != null) {
                C16470a c16470a = this.f58002b.get(view);
                if (c16470a != null) {
                    c16470a.m7185a(c16427k.f57919f);
                } else {
                    this.f58002b.put(view, new C16470a(c16432c, c16427k.f57919f));
                }
            }
        }
    }
}
