package com.bumptech.glide.load.resource.bitmap;

import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import com.bumptech.glide.load.AbstractC4146f;
import com.bumptech.glide.load.C4032e;
import com.bumptech.glide.load.engine.AbstractC4083s;
import com.bumptech.glide.load.engine.p209x.AbstractC4096e;
import com.bumptech.glide.load.p214j.p216e.C4247d;
/* renamed from: com.bumptech.glide.load.resource.bitmap.v */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/resource/bitmap/v.class */
public class C4319v implements AbstractC4146f<Uri, Bitmap> {

    /* renamed from: a */
    private final C4247d f13294a;

    /* renamed from: b */
    private final AbstractC4096e f13295b;

    public C4319v(C4247d c4247d, AbstractC4096e abstractC4096e) {
        this.f13294a = c4247d;
        this.f13295b = abstractC4096e;
    }

    /* renamed from: c */
    public AbstractC4083s<Bitmap> mo22861b(Uri uri, int i, int i2, C4032e c4032e) {
        AbstractC4083s<Drawable> mo22861b = this.f13294a.mo22861b(uri, i, i2, c4032e);
        if (mo22861b == null) {
            return null;
        }
        return C4307m.m22913a(this.f13295b, mo22861b.get(), i, i2);
    }

    /* renamed from: d */
    public boolean mo22862a(Uri uri, C4032e c4032e) {
        return "android.resource".equals(uri.getScheme());
    }
}
