package com.bumptech.glide.load.p083c.p084a;

import android.graphics.Bitmap;
import com.bumptech.glide.load.AbstractC1782i;
import com.bumptech.glide.load.C1781h;
import com.bumptech.glide.load.engine.AbstractC1771t;
import com.bumptech.glide.load.engine.p090a.AbstractC1673b;
import com.bumptech.glide.load.engine.p090a.AbstractC1678e;
import com.bumptech.glide.load.p083c.p084a.C1602l;
import com.bumptech.glide.p077h.C1451d;
import com.bumptech.glide.p077h.C1454g;
import java.io.IOException;
import java.io.InputStream;
/* renamed from: com.bumptech.glide.load.c.a.u */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/c/a/u.class */
public class C1615u implements AbstractC1782i<InputStream, Bitmap> {

    /* renamed from: a */
    private final C1602l f5010a;

    /* renamed from: b */
    private final AbstractC1673b f5011b;

    /* renamed from: com.bumptech.glide.load.c.a.u$a */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/c/a/u$a.class */
    public static class C1616a implements C1602l.AbstractC1604a {

        /* renamed from: a */
        private final C1612s f5012a;

        /* renamed from: b */
        private final C1451d f5013b;

        C1616a(C1612s c1612s, C1451d c1451d) {
            this.f5012a = c1612s;
            this.f5013b = c1451d;
        }

        @Override // com.bumptech.glide.load.p083c.p084a.C1602l.AbstractC1604a
        /* renamed from: a */
        public void mo16730a() {
            this.f5012a.m16738a();
        }

        @Override // com.bumptech.glide.load.p083c.p084a.C1602l.AbstractC1604a
        /* renamed from: a */
        public void mo16729a(AbstractC1678e abstractC1678e, Bitmap bitmap) {
            IOException m17006a = this.f5013b.m17006a();
            if (m17006a != null) {
                if (bitmap != null) {
                    abstractC1678e.mo16540a(bitmap);
                }
                throw m17006a;
            }
        }
    }

    public C1615u(C1602l c1602l, AbstractC1673b abstractC1673b) {
        this.f5010a = c1602l;
        this.f5011b = abstractC1673b;
    }

    /* renamed from: a */
    public AbstractC1771t<Bitmap> mo16319a(InputStream inputStream, int i, int i2, C1781h c1781h) {
        C1612s c1612s;
        boolean z;
        if (inputStream instanceof C1612s) {
            c1612s = (C1612s) inputStream;
            z = false;
        } else {
            c1612s = new C1612s(inputStream, this.f5011b);
            z = true;
        }
        C1451d m17005a = C1451d.m17005a(c1612s);
        try {
            return this.f5010a.m16763a(new C1454g(m17005a), i, i2, c1781h, new C1616a(c1612s, m17005a));
        } finally {
            m17005a.m17004b();
            if (z) {
                c1612s.m16736b();
            }
        }
    }

    /* renamed from: a */
    public boolean mo16318a(InputStream inputStream, C1781h c1781h) {
        return this.f5010a.m16765a(inputStream);
    }
}
