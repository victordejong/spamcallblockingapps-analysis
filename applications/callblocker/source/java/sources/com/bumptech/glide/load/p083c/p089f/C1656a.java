package com.bumptech.glide.load.p083c.p089f;

import android.graphics.Bitmap;
import com.bumptech.glide.load.C1781h;
import com.bumptech.glide.load.engine.AbstractC1771t;
import com.bumptech.glide.load.p083c.p085b.C1631b;
import java.io.ByteArrayOutputStream;
/* renamed from: com.bumptech.glide.load.c.f.a */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/c/f/a.class */
public class C1656a implements AbstractC1660e<Bitmap, byte[]> {

    /* renamed from: a */
    private final Bitmap.CompressFormat f5083a;

    /* renamed from: b */
    private final int f5084b;

    public C1656a() {
        this(Bitmap.CompressFormat.JPEG, 100);
    }

    public C1656a(Bitmap.CompressFormat compressFormat, int i) {
        this.f5083a = compressFormat;
        this.f5084b = i;
    }

    @Override // com.bumptech.glide.load.p083c.p089f.AbstractC1660e
    /* renamed from: a */
    public AbstractC1771t<byte[]> mo16613a(AbstractC1771t<Bitmap> abstractC1771t, C1781h c1781h) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        abstractC1771t.mo16347d().compress(this.f5083a, this.f5084b, byteArrayOutputStream);
        abstractC1771t.mo16345f();
        return new C1631b(byteArrayOutputStream.toByteArray());
    }
}
