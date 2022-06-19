package com.bumptech.glide.load.p212i.p213y;

import com.bumptech.glide.load.C4032e;
import com.bumptech.glide.load.p212i.AbstractC4191n;
import com.bumptech.glide.load.p212i.AbstractC4193o;
import com.bumptech.glide.load.p212i.C4177g;
import com.bumptech.glide.load.p212i.C4199r;
import java.io.InputStream;
import java.net.URL;
/* renamed from: com.bumptech.glide.load.i.y.e */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/i/y/e.class */
public class C4234e implements AbstractC4191n<URL, InputStream> {

    /* renamed from: a */
    private final AbstractC4191n<C4177g, InputStream> f13126a;

    /* renamed from: com.bumptech.glide.load.i.y.e$a */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/i/y/e$a.class */
    public static class C4235a implements AbstractC4193o<URL, InputStream> {
        @Override // com.bumptech.glide.load.p212i.AbstractC4193o
        /* renamed from: b */
        public AbstractC4191n<URL, InputStream> mo23078b(C4199r c4199r) {
            return new C4234e(c4199r.m23121d(C4177g.class, InputStream.class));
        }
    }

    public C4234e(AbstractC4191n<C4177g, InputStream> abstractC4191n) {
        this.f13126a = abstractC4191n;
    }

    /* renamed from: c */
    public AbstractC4191n.C4192a<InputStream> mo23081b(URL url, int i, int i2, C4032e c4032e) {
        return this.f13126a.mo23081b(new C4177g(url), i, i2, c4032e);
    }

    /* renamed from: d */
    public boolean mo23082a(URL url) {
        return true;
    }
}
