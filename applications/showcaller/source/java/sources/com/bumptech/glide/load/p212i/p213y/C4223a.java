package com.bumptech.glide.load.p212i.p213y;

import com.bumptech.glide.load.C4000d;
import com.bumptech.glide.load.C4032e;
import com.bumptech.glide.load.data.C4017j;
import com.bumptech.glide.load.p212i.AbstractC4191n;
import com.bumptech.glide.load.p212i.AbstractC4193o;
import com.bumptech.glide.load.p212i.C4177g;
import com.bumptech.glide.load.p212i.C4188m;
import com.bumptech.glide.load.p212i.C4199r;
import java.io.InputStream;
/* renamed from: com.bumptech.glide.load.i.y.a */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/i/y/a.class */
public class C4223a implements AbstractC4191n<C4177g, InputStream> {

    /* renamed from: a */
    public static final C4000d<Integer> f13102a = C4000d.m23510f("com.bumptech.glide.load.model.stream.HttpGlideUrlLoader.Timeout", 2500);

    /* renamed from: b */
    private final C4188m<C4177g, C4177g> f13103b;

    /* renamed from: com.bumptech.glide.load.i.y.a$a */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/i/y/a$a.class */
    public static class C4224a implements AbstractC4193o<C4177g, InputStream> {

        /* renamed from: a */
        private final C4188m<C4177g, C4177g> f13104a = new C4188m<>(500);

        @Override // com.bumptech.glide.load.p212i.AbstractC4193o
        /* renamed from: b */
        public AbstractC4191n<C4177g, InputStream> mo23078b(C4199r c4199r) {
            return new C4223a(this.f13104a);
        }
    }

    public C4223a(C4188m<C4177g, C4177g> c4188m) {
        this.f13103b = c4188m;
    }

    /* renamed from: c */
    public AbstractC4191n.C4192a<InputStream> mo23081b(C4177g c4177g, int i, int i2, C4032e c4032e) {
        C4188m<C4177g, C4177g> c4188m = this.f13103b;
        C4177g c4177g2 = c4177g;
        if (c4188m != null) {
            c4177g2 = c4188m.m23141a(c4177g, 0, 0);
            if (c4177g2 == null) {
                this.f13103b.m23140b(c4177g, 0, 0, c4177g);
                c4177g2 = c4177g;
            }
        }
        return new AbstractC4191n.C4192a<>(c4177g2, new C4017j(c4177g2, ((Integer) c4032e.m23457c(f13102a)).intValue()));
    }

    /* renamed from: d */
    public boolean mo23082a(C4177g c4177g) {
        return true;
    }
}
