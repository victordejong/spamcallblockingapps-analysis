package com.iab.omid.library.verizonmedia.adsession;

import com.iab.omid.library.verizonmedia.adsession.p447a.C16482c;
import com.iab.omid.library.verizonmedia.p448b.C16500e;
import com.iab.omid.library.verizonmedia.p450d.C16514d;
import org.json.JSONObject;
/* renamed from: com.iab.omid.library.verizonmedia.adsession.a */
/* loaded from: classes4-dex2jar.jar:com/iab/omid/library/verizonmedia/adsession/a.class */
public final class C16479a {

    /* renamed from: a */
    private final C16492k f58023a;

    private C16479a(C16492k c16492k) {
        this.f58023a = c16492k;
    }

    /* renamed from: a */
    public static C16479a m7173a(AbstractC16483b abstractC16483b) {
        C16492k c16492k = (C16492k) abstractC16483b;
        C16514d.m7102a(abstractC16483b, "AdSession is null");
        if (c16492k.f58045c.f58098b == null) {
            C16514d.m7103a(c16492k);
            C16479a c16479a = new C16479a(c16492k);
            c16492k.f58045c.f58098b = c16479a;
            return c16479a;
        }
        throw new IllegalStateException("AdEvents already exists for AdSession");
    }

    /* renamed from: a */
    public final void m7175a() {
        C16514d.m7103a(this.f58023a);
        C16514d.m7099c(this.f58023a);
        if (!this.f58023a.m7146f()) {
            try {
                this.f58023a.mo7154a();
            } catch (Exception e) {
            }
        }
        if (this.f58023a.m7146f()) {
            C16492k c16492k = this.f58023a;
            if (c16492k.f58049g) {
                throw new IllegalStateException("Impression event can only be sent once");
            }
            C16500e.m7136a().m7131a(c16492k.f58045c.m7089c(), "publishImpressionEvent", new Object[0]);
            c16492k.f58049g = true;
        }
    }

    /* renamed from: a */
    public final void m7174a(C16482c c16482c) {
        C16514d.m7102a(c16482c, "VastProperties is null");
        C16514d.m7100b(this.f58023a);
        C16514d.m7099c(this.f58023a);
        C16492k c16492k = this.f58023a;
        JSONObject m7160a = c16482c.m7160a();
        c16492k.m7148d();
        C16500e.m7136a().m7131a(c16492k.f58045c.m7089c(), "publishLoadedEvent", m7160a);
        c16492k.f58050h = true;
    }

    /* renamed from: b */
    public final void m7172b() {
        C16514d.m7100b(this.f58023a);
        C16514d.m7099c(this.f58023a);
        C16492k c16492k = this.f58023a;
        c16492k.m7148d();
        C16500e.m7136a().m7131a(c16492k.f58045c.m7089c(), "publishLoadedEvent", new Object[0]);
        c16492k.f58050h = true;
    }
}
