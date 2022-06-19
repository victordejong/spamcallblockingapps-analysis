package com.bumptech.glide.load.p081b.p082a;

import com.bumptech.glide.load.C1778g;
import com.bumptech.glide.load.C1781h;
import com.bumptech.glide.load.p079a.C1485j;
import com.bumptech.glide.load.p081b.AbstractC1546n;
import com.bumptech.glide.load.p081b.AbstractC1548o;
import com.bumptech.glide.load.p081b.C1532g;
import com.bumptech.glide.load.p081b.C1543m;
import com.bumptech.glide.load.p081b.C1554r;
import java.io.InputStream;
/* renamed from: com.bumptech.glide.load.b.a.a */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/b/a/a.class */
public class C1498a implements AbstractC1546n<C1532g, InputStream> {

    /* renamed from: a */
    public static final C1778g<Integer> f4848a = C1778g.m16329a("com.bumptech.glide.load.model.stream.HttpGlideUrlLoader.Timeout", 2500);

    /* renamed from: b */
    private final C1543m<C1532g, C1532g> f4849b;

    /* renamed from: com.bumptech.glide.load.b.a.a$a */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/b/a/a$a.class */
    public static class C1499a implements AbstractC1548o<C1532g, InputStream> {

        /* renamed from: a */
        private final C1543m<C1532g, C1532g> f4850a = new C1543m<>(500);

        @Override // com.bumptech.glide.load.p081b.AbstractC1548o
        /* renamed from: a */
        public AbstractC1546n<C1532g, InputStream> mo16801a(C1554r c1554r) {
            return new C1498a(this.f4850a);
        }
    }

    public C1498a() {
        this(null);
    }

    public C1498a(C1543m<C1532g, C1532g> c1543m) {
        this.f4849b = c1543m;
    }

    /* renamed from: a */
    public AbstractC1546n.C1547a<InputStream> mo16802a(C1532g c1532g, int i, int i2, C1781h c1781h) {
        C1532g c1532g2 = c1532g;
        if (this.f4849b != null) {
            c1532g2 = this.f4849b.m16848a(c1532g, 0, 0);
            if (c1532g2 == null) {
                this.f4849b.m16847a(c1532g, 0, 0, c1532g);
                c1532g2 = c1532g;
            }
        }
        return new AbstractC1546n.C1547a<>(c1532g2, new C1485j(c1532g2, ((Integer) c1781h.m16324a(f4848a)).intValue()));
    }

    /* renamed from: a */
    public boolean mo16803a(C1532g c1532g) {
        return true;
    }
}
