package com.bumptech.glide.load.resource.bitmap;

import android.graphics.Bitmap;
import android.graphics.ImageDecoder;
import com.bumptech.glide.load.AbstractC4146f;
import com.bumptech.glide.load.C4032e;
import com.bumptech.glide.load.engine.AbstractC4083s;
import com.bumptech.glide.p223p.C4368a;
import java.io.InputStream;
/* renamed from: com.bumptech.glide.load.resource.bitmap.s */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/resource/bitmap/s.class */
public final class C4316s implements AbstractC4146f<InputStream, Bitmap> {

    /* renamed from: a */
    private final C4296d f13290a = new C4296d();

    /* renamed from: c */
    public AbstractC4083s<Bitmap> mo22861b(InputStream inputStream, int i, int i2, C4032e c4032e) {
        return this.f13290a.mo22861b(ImageDecoder.createSource(C4368a.m22752b(inputStream)), i, i2, c4032e);
    }

    /* renamed from: d */
    public boolean mo22862a(InputStream inputStream, C4032e c4032e) {
        return true;
    }
}
