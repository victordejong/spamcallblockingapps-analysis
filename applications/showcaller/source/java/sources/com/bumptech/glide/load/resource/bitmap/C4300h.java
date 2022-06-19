package com.bumptech.glide.load.resource.bitmap;

import android.graphics.Bitmap;
import android.graphics.ImageDecoder;
import com.bumptech.glide.load.AbstractC4146f;
import com.bumptech.glide.load.C4032e;
import com.bumptech.glide.load.engine.AbstractC4083s;
import java.nio.ByteBuffer;
/* renamed from: com.bumptech.glide.load.resource.bitmap.h */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/resource/bitmap/h.class */
public final class C4300h implements AbstractC4146f<ByteBuffer, Bitmap> {

    /* renamed from: a */
    private final C4296d f13251a = new C4296d();

    /* renamed from: c */
    public AbstractC4083s<Bitmap> mo22861b(ByteBuffer byteBuffer, int i, int i2, C4032e c4032e) {
        return this.f13251a.mo22861b(ImageDecoder.createSource(byteBuffer), i, i2, c4032e);
    }

    /* renamed from: d */
    public boolean mo22862a(ByteBuffer byteBuffer, C4032e c4032e) {
        return true;
    }
}
