package com.iab.omid.library.mopub.p435g;

import android.view.View;
import com.iab.omid.library.mopub.adsession.C16360k;
import com.iab.omid.library.mopub.p430b.C16366c;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
/* renamed from: com.iab.omid.library.mopub.g.b */
/* loaded from: classes4-dex2jar.jar:com/iab/omid/library/mopub/g/b.class */
public final class C16403b {

    /* renamed from: a */
    final HashMap<View, String> f57872a = new HashMap<>();

    /* renamed from: b */
    final HashMap<View, C16404a> f57873b = new HashMap<>();

    /* renamed from: c */
    final HashMap<String, View> f57874c = new HashMap<>();

    /* renamed from: d */
    final HashSet<View> f57875d = new HashSet<>();

    /* renamed from: e */
    final HashSet<String> f57876e = new HashSet<>();

    /* renamed from: f */
    final HashSet<String> f57877f = new HashSet<>();

    /* renamed from: g */
    final HashMap<String, String> f57878g = new HashMap<>();

    /* renamed from: h */
    boolean f57879h;

    /* renamed from: com.iab.omid.library.mopub.g.b$a */
    /* loaded from: classes4-dex2jar.jar:com/iab/omid/library/mopub/g/b$a.class */
    public static final class C16404a {

        /* renamed from: a */
        public final C16366c f57880a;

        /* renamed from: b */
        public final ArrayList<String> f57881b = new ArrayList<>();

        public C16404a(C16366c c16366c, String str) {
            this.f57880a = c16366c;
            m7289a(str);
        }

        /* renamed from: a */
        public final void m7289a(String str) {
            this.f57881b.add(str);
        }
    }

    /* renamed from: a */
    public final void m7290a(C16360k c16360k) {
        for (C16366c c16366c : c16360k.f57783b) {
            View view = (View) c16366c.f57803a.get();
            if (view != null) {
                C16404a c16404a = this.f57873b.get(view);
                if (c16404a != null) {
                    c16404a.m7289a(c16360k.f57787f);
                } else {
                    this.f57873b.put(view, new C16404a(c16366c, c16360k.f57787f));
                }
            }
        }
    }
}
