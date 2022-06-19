package com.iab.omid.library.verizonmedia.p448b;

import com.iab.omid.library.verizonmedia.adsession.C16492k;
import java.util.ArrayList;
/* renamed from: com.iab.omid.library.verizonmedia.b.a */
/* loaded from: classes4-dex2jar.jar:com/iab/omid/library/verizonmedia/b/a.class */
public final class C16494a {

    /* renamed from: c */
    private static C16494a f58054c = new C16494a();

    /* renamed from: a */
    public final ArrayList<C16492k> f58055a = new ArrayList<>();

    /* renamed from: b */
    public final ArrayList<C16492k> f58056b = new ArrayList<>();

    private C16494a() {
    }

    /* renamed from: a */
    public static C16494a m7145a() {
        return f58054c;
    }

    /* renamed from: a */
    public final void m7144a(C16492k c16492k) {
        boolean m7143b = m7143b();
        this.f58056b.add(c16492k);
        if (!m7143b) {
            C16502f.m7127a().m7124b();
        }
    }

    /* renamed from: b */
    public final boolean m7143b() {
        return this.f58056b.size() > 0;
    }
}
