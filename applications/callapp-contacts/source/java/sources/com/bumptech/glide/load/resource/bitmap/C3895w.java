package com.bumptech.glide.load.resource.bitmap;

import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import com.bumptech.glide.load.AbstractC3824j;
import com.bumptech.glide.load.C3822h;
import com.bumptech.glide.load.engine.AbstractC3811u;
import com.bumptech.glide.load.engine.p119a.AbstractC3712e;
import com.bumptech.glide.load.resource.p123b.C3845e;
import java.io.IOException;
/* renamed from: com.bumptech.glide.load.resource.bitmap.w */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/resource/bitmap/w.class */
public final class C3895w implements AbstractC3824j<Uri, Bitmap> {

    /* renamed from: a */
    private final C3845e f14284a;

    /* renamed from: b */
    private final AbstractC3712e f14285b;

    public C3895w(C3845e c3845e, AbstractC3712e abstractC3712e) {
        this.f14284a = c3845e;
        this.f14285b = abstractC3712e;
    }

    @Override // com.bumptech.glide.load.AbstractC3824j
    /* renamed from: a */
    public final /* synthetic */ AbstractC3811u<Bitmap> mo37196a(Uri uri, int i, int i2, C3822h c3822h) throws IOException {
        AbstractC3811u<Drawable> m37307a = this.f14284a.m37307a(uri);
        if (m37307a == null) {
            return null;
        }
        return C3881m.m37268a(this.f14285b, m37307a.mo37235b(), i, i2);
    }

    @Override // com.bumptech.glide.load.AbstractC3824j
    /* renamed from: a */
    public final /* synthetic */ boolean mo37195a(Uri uri, C3822h c3822h) throws IOException {
        return "android.resource".equals(uri.getScheme());
    }
}
