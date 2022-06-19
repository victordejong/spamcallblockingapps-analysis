package com.bumptech.glide.load.resource.bitmap;

import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import com.bumptech.glide.load.AbstractC3825k;
import com.bumptech.glide.load.C3822h;
import com.bumptech.glide.load.EnumC3660c;
import com.bumptech.glide.load.engine.AbstractC3811u;
import com.bumptech.glide.load.engine.p119a.AbstractC3712e;
import java.io.File;
/* renamed from: com.bumptech.glide.load.resource.bitmap.b */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/resource/bitmap/b.class */
public final class C3861b implements AbstractC3825k<BitmapDrawable> {

    /* renamed from: a */
    private final AbstractC3712e f14215a;

    /* renamed from: b */
    private final AbstractC3825k<Bitmap> f14216b;

    public C3861b(AbstractC3712e abstractC3712e, AbstractC3825k<Bitmap> abstractC3825k) {
        this.f14215a = abstractC3712e;
        this.f14216b = abstractC3825k;
    }

    @Override // com.bumptech.glide.load.AbstractC3825k
    /* renamed from: a */
    public final EnumC3660c mo37214a(C3822h c3822h) {
        return this.f14216b.mo37214a(c3822h);
    }

    @Override // com.bumptech.glide.load.AbstractC3661d
    public final /* synthetic */ boolean encode(Object obj, File file, C3822h c3822h) {
        return this.f14216b.encode(new C3864e(((BitmapDrawable) ((AbstractC3811u) obj).mo37235b()).getBitmap(), this.f14215a), file, c3822h);
    }
}
