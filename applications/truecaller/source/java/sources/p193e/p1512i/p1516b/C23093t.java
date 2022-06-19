package p193e.p1512i.p1516b;

import android.content.Context;
import com.criteo.publisher.advancednative.ImageLoader;
import com.squareup.picasso.Picasso;
import e.p.b.b0;
import e.p.b.i;
import e.p.b.p;
import e.p.b.u;
import e.p.b.w;
import p1727n3.p1789g0.C26232y;
import p193e.p1512i.p1516b.C23157x2;
import p193e.p1512i.p1516b.p1529r1.C23053n;
import p193e.p1512i.p1516b.p1529r1.C23054o;
import p193e.p1512i.p1516b.p1536w1.AbstractC23146a;
/* renamed from: e.i.b.t */
/* loaded from: classes-dex2jar.jar:e/i/b/t.class */
public final /* synthetic */ class C23093t implements C23157x2.AbstractC23158a {

    /* renamed from: a */
    public final /* synthetic */ C23157x2 f63923a;

    @Override // p193e.p1512i.p1516b.C23157x2.AbstractC23158a
    /* renamed from: a */
    public final Object mo7423a() {
        final C23157x2 c23157x2 = this.f63923a;
        return new C23054o((ImageLoader) C26232y.m2364e(c23157x2.f64124a, ImageLoader.class, new k1(new C23157x2.AbstractC23158a() { // from class: e.i.b.z
            @Override // p193e.p1512i.p1516b.C23157x2.AbstractC23158a
            /* renamed from: a */
            public final Object mo7423a() {
                final C23157x2 c23157x22 = C23157x2.this;
                return new C23053n((Picasso) C26232y.m2364e(c23157x22.f64124a, Picasso.class, new k1(new C23157x2.AbstractC23158a() { // from class: e.i.b.d1
                    @Override // p193e.p1512i.p1516b.C23157x2.AbstractC23158a
                    /* renamed from: a */
                    public final Object mo7423a() {
                        Context m7439w = C23157x2.this.m7439w();
                        if (m7439w != null) {
                            Context applicationContext = m7439w.getApplicationContext();
                            u uVar = new u(applicationContext);
                            p pVar = new p(applicationContext);
                            w wVar = new w();
                            Picasso.AbstractC2744f abstractC2744f = Picasso.AbstractC2744f.f9509a;
                            b0 b0Var = new b0(pVar);
                            return new Picasso(applicationContext, new i(applicationContext, wVar, Picasso.f9481o, uVar, pVar, b0Var), pVar, null, abstractC2744f, null, b0Var, null, false, false);
                        }
                        throw new IllegalArgumentException("Context must not be null.");
                    }
                })), (AbstractC23146a) C26232y.m2364e(c23157x22.f64124a, AbstractC23146a.class, new k1(C22956i.f63652a)));
            }
        })));
    }
}
