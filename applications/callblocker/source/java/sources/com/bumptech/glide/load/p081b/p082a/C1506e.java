package com.bumptech.glide.load.p081b.p082a;

import com.bumptech.glide.load.C1781h;
import com.bumptech.glide.load.p081b.AbstractC1546n;
import com.bumptech.glide.load.p081b.AbstractC1548o;
import com.bumptech.glide.load.p081b.C1532g;
import com.bumptech.glide.load.p081b.C1554r;
import java.io.InputStream;
import java.net.URL;
/* renamed from: com.bumptech.glide.load.b.a.e */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/b/a/e.class */
public class C1506e implements AbstractC1546n<URL, InputStream> {

    /* renamed from: a */
    private final AbstractC1546n<C1532g, InputStream> f4857a;

    /* renamed from: com.bumptech.glide.load.b.a.e$a */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/b/a/e$a.class */
    public static class C1507a implements AbstractC1548o<URL, InputStream> {
        @Override // com.bumptech.glide.load.p081b.AbstractC1548o
        /* renamed from: a */
        public AbstractC1546n<URL, InputStream> mo16801a(C1554r c1554r) {
            return new C1506e(c1554r.m16830a(C1532g.class, InputStream.class));
        }
    }

    public C1506e(AbstractC1546n<C1532g, InputStream> abstractC1546n) {
        this.f4857a = abstractC1546n;
    }

    /* renamed from: a */
    public AbstractC1546n.C1547a<InputStream> mo16802a(URL url, int i, int i2, C1781h c1781h) {
        return this.f4857a.mo16802a(new C1532g(url), i, i2, c1781h);
    }

    /* renamed from: a */
    public boolean mo16803a(URL url) {
        return true;
    }
}
