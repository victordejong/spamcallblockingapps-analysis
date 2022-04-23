package com.criteo.publisher.d;

import com.criteo.publisher.m0.k;
import com.criteo.publisher.model.AdSize;
import com.criteo.publisher.model.n;
import com.criteo.publisher.model.s;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/d/a.class */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    public final Map<n, s> f17222a = new HashMap();

    /* renamed from: b  reason: collision with root package name */
    private final k f17223b;

    public a(k kVar) {
        this.f17223b = kVar;
    }

    public final n a(s sVar) {
        com.criteo.publisher.m0.a aVar;
        String h = sVar.h();
        if (h == null) {
            return null;
        }
        if (sVar.m()) {
            aVar = com.criteo.publisher.m0.a.CRITEO_CUSTOM_NATIVE;
        } else {
            AdSize b2 = this.f17223b.b();
            AdSize adSize = new AdSize(b2.getHeight(), b2.getWidth());
            AdSize adSize2 = new AdSize(sVar.k(), sVar.e());
            aVar = (adSize2.equals(b2) || adSize2.equals(adSize)) ? com.criteo.publisher.m0.a.CRITEO_INTERSTITIAL : com.criteo.publisher.m0.a.CRITEO_BANNER;
        }
        return new n(new AdSize(sVar.k(), sVar.e()), h, aVar);
    }

    public final s a(n nVar) {
        return this.f17222a.get(nVar);
    }

    public final void b(n nVar) {
        this.f17222a.remove(nVar);
    }
}
