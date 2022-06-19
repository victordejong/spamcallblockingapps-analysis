package com.bumptech.glide.load.p083c.p084a;

import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import com.bumptech.glide.load.AbstractC1782i;
import com.bumptech.glide.load.C1781h;
import com.bumptech.glide.load.engine.AbstractC1771t;
import com.bumptech.glide.load.engine.p090a.AbstractC1678e;
import com.bumptech.glide.load.p083c.p086c.C1635d;
/* renamed from: com.bumptech.glide.load.c.a.t */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/c/a/t.class */
public class C1614t implements AbstractC1782i<Uri, Bitmap> {

    /* renamed from: a */
    private final C1635d f5008a;

    /* renamed from: b */
    private final AbstractC1678e f5009b;

    public C1614t(C1635d c1635d, AbstractC1678e abstractC1678e) {
        this.f5008a = c1635d;
        this.f5009b = abstractC1678e;
    }

    /* renamed from: a */
    public AbstractC1771t<Bitmap> mo16319a(Uri uri, int i, int i2, C1781h c1781h) {
        AbstractC1771t<Bitmap> m16751a;
        AbstractC1771t<Drawable> mo16319a = this.f5008a.mo16319a(uri, i, i2, c1781h);
        if (mo16319a == null) {
            m16751a = null;
        } else {
            m16751a = C1605m.m16751a(this.f5009b, mo16319a.mo16347d(), i, i2);
        }
        return m16751a;
    }

    /* renamed from: a */
    public boolean mo16318a(Uri uri, C1781h c1781h) {
        return "android.resource".equals(uri.getScheme());
    }
}
