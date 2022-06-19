package com.bumptech.glide.load.p083c.p088e;

import android.content.Context;
import android.graphics.Bitmap;
import com.bumptech.glide.ComponentCallbacks2C1361c;
import com.bumptech.glide.load.AbstractC1784k;
import com.bumptech.glide.load.engine.AbstractC1771t;
import com.bumptech.glide.load.p083c.p084a.C1583d;
import com.bumptech.glide.p077h.C1456i;
import java.security.MessageDigest;
/* renamed from: com.bumptech.glide.load.c.e.f */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/c/e/f.class */
public class C1647f implements AbstractC1784k<C1643c> {

    /* renamed from: b */
    private final AbstractC1784k<Bitmap> f5055b;

    public C1647f(AbstractC1784k<Bitmap> abstractC1784k) {
        this.f5055b = (AbstractC1784k) C1456i.m16989a(abstractC1784k);
    }

    @Override // com.bumptech.glide.load.AbstractC1784k
    /* renamed from: a */
    public AbstractC1771t<C1643c> mo16316a(Context context, AbstractC1771t<C1643c> abstractC1771t, int i, int i2) {
        C1643c mo16347d = abstractC1771t.mo16347d();
        AbstractC1771t<Bitmap> c1583d = new C1583d(mo16347d.m16661b(), ComponentCallbacks2C1361c.m17308a(context).m17311a());
        AbstractC1771t<Bitmap> mo16316a = this.f5055b.mo16316a(context, c1583d, i, i2);
        if (!c1583d.equals(mo16316a)) {
            c1583d.mo16345f();
        }
        mo16347d.m16662a(this.f5055b, mo16316a.mo16347d());
        return abstractC1771t;
    }

    @Override // com.bumptech.glide.load.AbstractC1777f
    /* renamed from: a */
    public void mo16320a(MessageDigest messageDigest) {
        this.f5055b.mo16320a(messageDigest);
    }

    @Override // com.bumptech.glide.load.AbstractC1777f
    public boolean equals(Object obj) {
        return obj instanceof C1647f ? this.f5055b.equals(((C1647f) obj).f5055b) : false;
    }

    @Override // com.bumptech.glide.load.AbstractC1777f
    public int hashCode() {
        return this.f5055b.hashCode();
    }
}
