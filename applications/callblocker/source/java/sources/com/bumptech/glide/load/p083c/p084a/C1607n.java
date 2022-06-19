package com.bumptech.glide.load.p083c.p084a;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import com.bumptech.glide.ComponentCallbacks2C1361c;
import com.bumptech.glide.load.AbstractC1784k;
import com.bumptech.glide.load.engine.AbstractC1771t;
import com.bumptech.glide.load.engine.p090a.AbstractC1678e;
import java.security.MessageDigest;
/* renamed from: com.bumptech.glide.load.c.a.n */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/c/a/n.class */
public class C1607n implements AbstractC1784k<Drawable> {

    /* renamed from: b */
    private final AbstractC1784k<Bitmap> f4993b;

    /* renamed from: c */
    private final boolean f4994c;

    public C1607n(AbstractC1784k<Bitmap> abstractC1784k, boolean z) {
        this.f4993b = abstractC1784k;
        this.f4994c = z;
    }

    /* renamed from: a */
    private AbstractC1771t<Drawable> m16748a(Context context, AbstractC1771t<Bitmap> abstractC1771t) {
        return C1611r.m16740a(context.getResources(), abstractC1771t);
    }

    @Override // com.bumptech.glide.load.AbstractC1784k
    /* renamed from: a */
    public AbstractC1771t<Drawable> mo16316a(Context context, AbstractC1771t<Drawable> abstractC1771t, int i, int i2) {
        AbstractC1678e m17311a = ComponentCallbacks2C1361c.m17308a(context).m17311a();
        Drawable mo16347d = abstractC1771t.mo16347d();
        AbstractC1771t<Bitmap> m16751a = C1605m.m16751a(m17311a, mo16347d, i, i2);
        if (m16751a != null) {
            AbstractC1771t<Bitmap> mo16316a = this.f4993b.mo16316a(context, m16751a, i, i2);
            if (mo16316a.equals(m16751a)) {
                mo16316a.mo16345f();
            } else {
                abstractC1771t = m16748a(context, mo16316a);
            }
        } else if (this.f4994c) {
            throw new IllegalArgumentException("Unable to convert " + mo16347d + " to a Bitmap");
        }
        return abstractC1771t;
    }

    /* renamed from: a */
    public AbstractC1784k<BitmapDrawable> m16749a() {
        return this;
    }

    @Override // com.bumptech.glide.load.AbstractC1777f
    /* renamed from: a */
    public void mo16320a(MessageDigest messageDigest) {
        this.f4993b.mo16320a(messageDigest);
    }

    @Override // com.bumptech.glide.load.AbstractC1777f
    public boolean equals(Object obj) {
        return obj instanceof C1607n ? this.f4993b.equals(((C1607n) obj).f4993b) : false;
    }

    @Override // com.bumptech.glide.load.AbstractC1777f
    public int hashCode() {
        return this.f4993b.hashCode();
    }
}
