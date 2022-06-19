package com.bumptech.glide.load.resource.bitmap;

import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import com.bumptech.glide.load.AbstractC4147g;
import com.bumptech.glide.load.C4032e;
import com.bumptech.glide.load.EncodeStrategy;
import com.bumptech.glide.load.engine.AbstractC4083s;
import com.bumptech.glide.load.engine.p209x.AbstractC4096e;
import java.io.File;
/* renamed from: com.bumptech.glide.load.resource.bitmap.b */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/resource/bitmap/b.class */
public class C4294b implements AbstractC4147g<BitmapDrawable> {

    /* renamed from: a */
    private final AbstractC4096e f13242a;

    /* renamed from: b */
    private final AbstractC4147g<Bitmap> f13243b;

    public C4294b(AbstractC4096e abstractC4096e, AbstractC4147g<Bitmap> abstractC4147g) {
        this.f13242a = abstractC4096e;
        this.f13243b = abstractC4147g;
    }

    @Override // com.bumptech.glide.load.AbstractC4147g
    /* renamed from: b */
    public EncodeStrategy mo22949b(C4032e c4032e) {
        return this.f13243b.mo22949b(c4032e);
    }

    /* renamed from: c */
    public boolean mo22950a(AbstractC4083s<BitmapDrawable> abstractC4083s, File file, C4032e c4032e) {
        return this.f13243b.mo22950a(new C4297e(abstractC4083s.get().getBitmap(), this.f13242a), file, c4032e);
    }
}
