package com.bumptech.glide.load.p083c.p084a;

import android.graphics.Bitmap;
import com.bumptech.glide.load.AbstractC1782i;
import com.bumptech.glide.load.C1781h;
import com.bumptech.glide.load.engine.AbstractC1771t;
import com.bumptech.glide.p077h.C1434a;
import java.nio.ByteBuffer;
/* renamed from: com.bumptech.glide.load.c.a.f */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/c/a/f.class */
public class C1585f implements AbstractC1782i<ByteBuffer, Bitmap> {

    /* renamed from: a */
    private final C1602l f4959a;

    public C1585f(C1602l c1602l) {
        this.f4959a = c1602l;
    }

    /* renamed from: a */
    public AbstractC1771t<Bitmap> mo16319a(ByteBuffer byteBuffer, int i, int i2, C1781h c1781h) {
        return this.f4959a.m16764a(C1434a.m17032b(byteBuffer), i, i2, c1781h);
    }

    /* renamed from: a */
    public boolean mo16318a(ByteBuffer byteBuffer, C1781h c1781h) {
        return this.f4959a.m16758a(byteBuffer);
    }
}
