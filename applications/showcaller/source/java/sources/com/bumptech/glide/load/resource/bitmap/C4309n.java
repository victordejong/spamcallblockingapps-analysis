package com.bumptech.glide.load.resource.bitmap;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import com.bumptech.glide.ComponentCallbacks2C3958c;
import com.bumptech.glide.load.AbstractC4148h;
import com.bumptech.glide.load.engine.AbstractC4083s;
import com.bumptech.glide.load.engine.p209x.AbstractC4096e;
import java.security.MessageDigest;
/* renamed from: com.bumptech.glide.load.resource.bitmap.n */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/resource/bitmap/n.class */
public class C4309n implements AbstractC4148h<Drawable> {

    /* renamed from: b */
    private final AbstractC4148h<Bitmap> f13270b;

    /* renamed from: c */
    private final boolean f13271c;

    public C4309n(AbstractC4148h<Bitmap> abstractC4148h, boolean z) {
        this.f13270b = abstractC4148h;
        this.f13271c = z;
    }

    /* renamed from: d */
    private AbstractC4083s<Drawable> m22908d(Context context, AbstractC4083s<Bitmap> abstractC4083s) {
        return C4317t.m22886f(context.getResources(), abstractC4083s);
    }

    @Override // com.bumptech.glide.load.AbstractC3999c
    /* renamed from: a */
    public void mo22754a(MessageDigest messageDigest) {
        this.f13270b.mo22754a(messageDigest);
    }

    @Override // com.bumptech.glide.load.AbstractC4148h
    /* renamed from: b */
    public AbstractC4083s<Drawable> mo22910b(Context context, AbstractC4083s<Drawable> abstractC4083s, int i, int i2) {
        AbstractC4096e m23692f = ComponentCallbacks2C3958c.m23695c(context).m23692f();
        Drawable drawable = abstractC4083s.get();
        AbstractC4083s<Bitmap> m22913a = C4307m.m22913a(m23692f, drawable, i, i2);
        if (m22913a != null) {
            AbstractC4083s<Bitmap> mo22910b = this.f13270b.mo22910b(context, m22913a, i, i2);
            if (!mo22910b.equals(m22913a)) {
                return m22908d(context, mo22910b);
            }
            mo22910b.mo22858a();
            return abstractC4083s;
        } else if (!this.f13271c) {
            return abstractC4083s;
        } else {
            throw new IllegalArgumentException("Unable to convert " + drawable + " to a Bitmap");
        }
    }

    /* renamed from: c */
    public AbstractC4148h<BitmapDrawable> m22909c() {
        return this;
    }

    @Override // com.bumptech.glide.load.AbstractC3999c
    public boolean equals(Object obj) {
        if (obj instanceof C4309n) {
            return this.f13270b.equals(((C4309n) obj).f13270b);
        }
        return false;
    }

    @Override // com.bumptech.glide.load.AbstractC3999c
    public int hashCode() {
        return this.f13270b.hashCode();
    }
}
