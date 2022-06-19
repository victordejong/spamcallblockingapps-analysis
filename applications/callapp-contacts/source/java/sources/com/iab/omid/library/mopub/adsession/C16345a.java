package com.iab.omid.library.mopub.adsession;

import com.iab.omid.library.mopub.p432d.C16382d;
/* renamed from: com.iab.omid.library.mopub.adsession.a */
/* loaded from: classes4-dex2jar.jar:com/iab/omid/library/mopub/adsession/a.class */
public final class C16345a {

    /* renamed from: a */
    public final C16360k f57762a;

    private C16345a(C16360k c16360k) {
        this.f57762a = c16360k;
    }

    /* renamed from: a */
    public static C16345a m7380a(AbstractC16351b abstractC16351b) {
        C16360k c16360k = (C16360k) abstractC16351b;
        C16382d.m7325a(abstractC16351b, "AdSession is null");
        if (c16360k.f57784c.f57837b == null) {
            C16382d.m7326a(c16360k);
            C16345a c16345a = new C16345a(c16360k);
            c16360k.f57784c.f57837b = c16345a;
            return c16345a;
        }
        throw new IllegalStateException("AdEvents already exists for AdSession");
    }
}
