package com.iab.omid.library.verizonmedia.adsession;

import com.iab.omid.library.verizonmedia.adsession.a.c;
import com.iab.omid.library.verizonmedia.b.e;
import com.iab.omid.library.verizonmedia.d.d;
import org.json.JSONObject;
/* loaded from: classes4-dex2jar.jar:com/iab/omid/library/verizonmedia/adsession/a.class */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    private final k f33430a;

    private a(k kVar) {
        this.f33430a = kVar;
    }

    public static a a(b bVar) {
        k kVar = (k) bVar;
        d.a(bVar, "AdSession is null");
        if (kVar.f33447c.f33487b == null) {
            d.a(kVar);
            a aVar = new a(kVar);
            kVar.f33447c.f33487b = aVar;
            return aVar;
        }
        throw new IllegalStateException("AdEvents already exists for AdSession");
    }

    public final void a() {
        d.a(this.f33430a);
        d.c(this.f33430a);
        if (!this.f33430a.f()) {
            try {
                this.f33430a.a();
            } catch (Exception e) {
            }
        }
        if (this.f33430a.f()) {
            k kVar = this.f33430a;
            if (!kVar.g) {
                e.a().a(kVar.f33447c.c(), "publishImpressionEvent", new Object[0]);
                kVar.g = true;
                return;
            }
            throw new IllegalStateException("Impression event can only be sent once");
        }
    }

    public final void a(c cVar) {
        d.a(cVar, "VastProperties is null");
        d.b(this.f33430a);
        d.c(this.f33430a);
        k kVar = this.f33430a;
        JSONObject a2 = cVar.a();
        kVar.d();
        e.a().a(kVar.f33447c.c(), "publishLoadedEvent", a2);
        kVar.h = true;
    }

    public final void b() {
        d.b(this.f33430a);
        d.c(this.f33430a);
        k kVar = this.f33430a;
        kVar.d();
        e.a().a(kVar.f33447c.c(), "publishLoadedEvent", new Object[0]);
        kVar.h = true;
    }
}
