package com.bumptech.glide.load.resource.bitmap;

import android.graphics.Bitmap;
import com.bumptech.glide.load.AbstractC4146f;
import com.bumptech.glide.load.C4032e;
import com.bumptech.glide.load.engine.AbstractC4083s;
import com.bumptech.glide.p223p.C4368a;
import java.nio.ByteBuffer;
/* renamed from: com.bumptech.glide.load.resource.bitmap.g */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/resource/bitmap/g.class */
public class C4299g implements AbstractC4146f<ByteBuffer, Bitmap> {

    /* renamed from: a */
    private final C4304l f13250a;

    public C4299g(C4304l c4304l) {
        this.f13250a = c4304l;
    }

    /* renamed from: c */
    public AbstractC4083s<Bitmap> mo22861b(ByteBuffer byteBuffer, int i, int i2, C4032e c4032e) {
        return this.f13250a.m22934f(C4368a.m22748f(byteBuffer), i, i2, c4032e);
    }

    /* renamed from: d */
    public boolean mo22862a(ByteBuffer byteBuffer, C4032e c4032e) {
        return this.f13250a.m22923q(byteBuffer);
    }
}
