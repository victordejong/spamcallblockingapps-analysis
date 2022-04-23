package com.iab.omid.library.mopub.adsession;

import com.iab.omid.library.mopub.d.d;
/* loaded from: classes4-dex2jar.jar:com/iab/omid/library/mopub/adsession/a.class */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    public final k f33239a;

    private a(k kVar) {
        this.f33239a = kVar;
    }

    public static a a(b bVar) {
        k kVar = (k) bVar;
        d.a(bVar, "AdSession is null");
        if (kVar.f33256c.f33296b == null) {
            d.a(kVar);
            a aVar = new a(kVar);
            kVar.f33256c.f33296b = aVar;
            return aVar;
        }
        throw new IllegalStateException("AdEvents already exists for AdSession");
    }
}
