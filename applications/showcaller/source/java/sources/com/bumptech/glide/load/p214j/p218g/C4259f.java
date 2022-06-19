package com.bumptech.glide.load.p214j.p218g;

import android.content.Context;
import android.graphics.Bitmap;
import com.bumptech.glide.ComponentCallbacks2C3958c;
import com.bumptech.glide.load.AbstractC4148h;
import com.bumptech.glide.load.engine.AbstractC4083s;
import com.bumptech.glide.load.resource.bitmap.C4297e;
import com.bumptech.glide.p223p.C4382j;
import java.security.MessageDigest;
/* renamed from: com.bumptech.glide.load.j.g.f */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/j/g/f.class */
public class C4259f implements AbstractC4148h<C4255c> {

    /* renamed from: b */
    private final AbstractC4148h<Bitmap> f13165b;

    public C4259f(AbstractC4148h<Bitmap> abstractC4148h) {
        this.f13165b = (AbstractC4148h) C4382j.m22719d(abstractC4148h);
    }

    @Override // com.bumptech.glide.load.AbstractC3999c
    /* renamed from: a */
    public void mo22754a(MessageDigest messageDigest) {
        this.f13165b.mo22754a(messageDigest);
    }

    @Override // com.bumptech.glide.load.AbstractC4148h
    /* renamed from: b */
    public AbstractC4083s<C4255c> mo22910b(Context context, AbstractC4083s<C4255c> abstractC4083s, int i, int i2) {
        C4255c c4255c = abstractC4083s.get();
        AbstractC4083s<Bitmap> c4297e = new C4297e(c4255c.m23034e(), ComponentCallbacks2C3958c.m23695c(context).m23692f());
        AbstractC4083s<Bitmap> mo22910b = this.f13165b.mo22910b(context, c4297e, i, i2);
        if (!c4297e.equals(mo22910b)) {
            c4297e.mo22858a();
        }
        c4255c.m23026m(this.f13165b, mo22910b.get());
        return abstractC4083s;
    }

    @Override // com.bumptech.glide.load.AbstractC3999c
    public boolean equals(Object obj) {
        if (obj instanceof C4259f) {
            return this.f13165b.equals(((C4259f) obj).f13165b);
        }
        return false;
    }

    @Override // com.bumptech.glide.load.AbstractC3999c
    public int hashCode() {
        return this.f13165b.hashCode();
    }
}
