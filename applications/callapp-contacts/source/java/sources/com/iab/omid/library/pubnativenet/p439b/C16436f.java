package com.iab.omid.library.pubnativenet.p439b;

import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.iab.omid.library.pubnativenet.adsession.C16427k;
import com.iab.omid.library.pubnativenet.p437a.AbstractC16410c;
import com.iab.omid.library.pubnativenet.p437a.C16409b;
import com.iab.omid.library.pubnativenet.p437a.C16411d;
import com.iab.omid.library.pubnativenet.p437a.C16412e;
import com.iab.omid.library.pubnativenet.p439b.C16430b;
import com.iab.omid.library.pubnativenet.p444g.C16457a;
import java.util.Collections;
/* renamed from: com.iab.omid.library.pubnativenet.b.f */
/* loaded from: classes4-dex2jar.jar:com/iab/omid/library/pubnativenet/b/f.class */
public final class C16436f implements AbstractC16410c, C16430b.AbstractC16431a {

    /* renamed from: c */
    private static C16436f f57942c;

    /* renamed from: a */
    public float f57943a = BitmapDescriptorFactory.HUE_RED;

    /* renamed from: b */
    public C16411d f57944b;

    /* renamed from: d */
    private final C16412e f57945d;

    /* renamed from: e */
    private final C16409b f57946e;

    /* renamed from: f */
    private C16429a f57947f;

    public C16436f(C16412e c16412e, C16409b c16409b) {
        this.f57945d = c16412e;
        this.f57946e = c16409b;
    }

    /* renamed from: a */
    public static C16436f m7247a() {
        if (f57942c == null) {
            f57942c = new C16436f(new C16412e(), new C16409b());
        }
        return f57942c;
    }

    @Override // com.iab.omid.library.pubnativenet.p437a.AbstractC16410c
    /* renamed from: a */
    public final void mo7246a(float f) {
        this.f57943a = f;
        if (this.f57947f == null) {
            this.f57947f = C16429a.m7263a();
        }
        for (C16427k c16427k : Collections.unmodifiableCollection(this.f57947f.f57927b)) {
            c16427k.f57916c.m7214a(f);
        }
    }

    @Override // com.iab.omid.library.pubnativenet.p439b.C16430b.AbstractC16431a
    /* renamed from: a */
    public final void mo7245a(boolean z) {
        if (z) {
            C16457a.m7202a();
            C16457a.m7197b();
            return;
        }
        C16457a.m7202a();
        C16457a.m7195c();
    }
}
