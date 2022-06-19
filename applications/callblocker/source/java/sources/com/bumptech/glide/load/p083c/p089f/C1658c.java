package com.bumptech.glide.load.p083c.p089f;

import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import com.bumptech.glide.load.C1781h;
import com.bumptech.glide.load.engine.AbstractC1771t;
import com.bumptech.glide.load.engine.p090a.AbstractC1678e;
import com.bumptech.glide.load.p083c.p084a.C1583d;
import com.bumptech.glide.load.p083c.p088e.C1643c;
/* renamed from: com.bumptech.glide.load.c.f.c */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/c/f/c.class */
public final class C1658c implements AbstractC1660e<Drawable, byte[]> {

    /* renamed from: a */
    private final AbstractC1678e f5086a;

    /* renamed from: b */
    private final AbstractC1660e<Bitmap, byte[]> f5087b;

    /* renamed from: c */
    private final AbstractC1660e<C1643c, byte[]> f5088c;

    public C1658c(AbstractC1678e abstractC1678e, AbstractC1660e<Bitmap, byte[]> abstractC1660e, AbstractC1660e<C1643c, byte[]> abstractC1660e2) {
        this.f5086a = abstractC1678e;
        this.f5087b = abstractC1660e;
        this.f5088c = abstractC1660e2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: a */
    private static AbstractC1771t<C1643c> m16619a(AbstractC1771t<Drawable> abstractC1771t) {
        return abstractC1771t;
    }

    @Override // com.bumptech.glide.load.p083c.p089f.AbstractC1660e
    /* renamed from: a */
    public AbstractC1771t<byte[]> mo16613a(AbstractC1771t<Drawable> abstractC1771t, C1781h c1781h) {
        Drawable mo16347d = abstractC1771t.mo16347d();
        return mo16347d instanceof BitmapDrawable ? this.f5087b.mo16613a(C1583d.m16797a(((BitmapDrawable) mo16347d).getBitmap(), this.f5086a), c1781h) : mo16347d instanceof C1643c ? this.f5088c.mo16613a(m16619a(abstractC1771t), c1781h) : null;
    }
}
