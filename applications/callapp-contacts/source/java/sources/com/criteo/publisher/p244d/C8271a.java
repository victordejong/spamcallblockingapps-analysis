package com.criteo.publisher.p244d;

import com.criteo.publisher.model.AdSize;
import com.criteo.publisher.model.C8498n;
import com.criteo.publisher.model.C8503s;
import com.criteo.publisher.p256m0.C8440k;
import com.criteo.publisher.p256m0.EnumC8423a;
import java.util.HashMap;
import java.util.Map;
/* renamed from: com.criteo.publisher.d.a */
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/d/a.class */
public final class C8271a {

    /* renamed from: a */
    public final Map<C8498n, C8503s> f29833a = new HashMap();

    /* renamed from: b */
    private final C8440k f29834b;

    public C8271a(C8440k c8440k) {
        this.f29834b = c8440k;
    }

    /* renamed from: a */
    public final C8498n m25945a(C8503s c8503s) {
        EnumC8423a enumC8423a;
        String m25543h = c8503s.m25543h();
        if (m25543h == null) {
            return null;
        }
        if (c8503s.m25538m()) {
            enumC8423a = EnumC8423a.CRITEO_CUSTOM_NATIVE;
        } else {
            AdSize m25683b = this.f29834b.m25683b();
            AdSize adSize = new AdSize(m25683b.getHeight(), m25683b.getWidth());
            AdSize adSize2 = new AdSize(c8503s.m25540k(), c8503s.m25546e());
            enumC8423a = (adSize2.equals(m25683b) || adSize2.equals(adSize)) ? EnumC8423a.CRITEO_INTERSTITIAL : EnumC8423a.CRITEO_BANNER;
        }
        return new C8498n(new AdSize(c8503s.m25540k(), c8503s.m25546e()), m25543h, enumC8423a);
    }

    /* renamed from: a */
    public final C8503s m25946a(C8498n c8498n) {
        return this.f29833a.get(c8498n);
    }

    /* renamed from: b */
    public final void m25944b(C8498n c8498n) {
        this.f29833a.remove(c8498n);
    }
}
