package com.bumptech.glide.load.p083c.p084a;

import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import com.bumptech.glide.load.AbstractC1783j;
import com.bumptech.glide.load.C1781h;
import com.bumptech.glide.load.EnumC1578c;
import com.bumptech.glide.load.engine.AbstractC1771t;
import com.bumptech.glide.load.engine.p090a.AbstractC1678e;
import java.io.File;
/* renamed from: com.bumptech.glide.load.c.a.b */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/c/a/b.class */
public class C1581b implements AbstractC1783j<BitmapDrawable> {

    /* renamed from: a */
    private final AbstractC1678e f4952a;

    /* renamed from: b */
    private final AbstractC1783j<Bitmap> f4953b;

    public C1581b(AbstractC1678e abstractC1678e, AbstractC1783j<Bitmap> abstractC1783j) {
        this.f4952a = abstractC1678e;
        this.f4953b = abstractC1783j;
    }

    @Override // com.bumptech.glide.load.AbstractC1783j
    /* renamed from: a */
    public EnumC1578c mo16317a(C1781h c1781h) {
        return this.f4953b.mo16317a(c1781h);
    }

    /* renamed from: a */
    public boolean mo16612a(AbstractC1771t<BitmapDrawable> abstractC1771t, File file, C1781h c1781h) {
        return this.f4953b.mo16612a(new C1583d(abstractC1771t.mo16347d().getBitmap(), this.f4952a), file, c1781h);
    }
}
