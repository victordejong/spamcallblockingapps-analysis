package com.bumptech.glide.load.p214j.p219h;

import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import com.bumptech.glide.load.C4032e;
import com.bumptech.glide.load.engine.AbstractC4083s;
import com.bumptech.glide.load.engine.p209x.AbstractC4096e;
import com.bumptech.glide.load.p214j.p218g.C4255c;
import com.bumptech.glide.load.resource.bitmap.C4297e;
/* renamed from: com.bumptech.glide.load.j.h.c */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/j/h/c.class */
public final class C4270c implements AbstractC4272e<Drawable, byte[]> {

    /* renamed from: a */
    private final AbstractC4096e f13199a;

    /* renamed from: b */
    private final AbstractC4272e<Bitmap, byte[]> f13200b;

    /* renamed from: c */
    private final AbstractC4272e<C4255c, byte[]> f13201c;

    public C4270c(AbstractC4096e abstractC4096e, AbstractC4272e<Bitmap, byte[]> abstractC4272e, AbstractC4272e<C4255c, byte[]> abstractC4272e2) {
        this.f13199a = abstractC4096e;
        this.f13200b = abstractC4272e;
        this.f13201c = abstractC4272e2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: b */
    private static AbstractC4083s<C4255c> m22994b(AbstractC4083s<Drawable> abstractC4083s) {
        return abstractC4083s;
    }

    @Override // com.bumptech.glide.load.p214j.p219h.AbstractC4272e
    /* renamed from: a */
    public AbstractC4083s<byte[]> mo22989a(AbstractC4083s<Drawable> abstractC4083s, C4032e c4032e) {
        Drawable drawable = abstractC4083s.get();
        if (drawable instanceof BitmapDrawable) {
            return this.f13200b.mo22989a(C4297e.m22944f(((BitmapDrawable) drawable).getBitmap(), this.f13199a), c4032e);
        }
        if (!(drawable instanceof C4255c)) {
            return null;
        }
        return this.f13201c.mo22989a(m22994b(abstractC4083s), c4032e);
    }
}
