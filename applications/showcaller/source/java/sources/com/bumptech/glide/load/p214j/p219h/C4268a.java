package com.bumptech.glide.load.p214j.p219h;

import android.graphics.Bitmap;
import com.bumptech.glide.load.C4032e;
import com.bumptech.glide.load.engine.AbstractC4083s;
import com.bumptech.glide.load.p214j.p215d.C4243b;
import java.io.ByteArrayOutputStream;
/* renamed from: com.bumptech.glide.load.j.h.a */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/j/h/a.class */
public class C4268a implements AbstractC4272e<Bitmap, byte[]> {

    /* renamed from: a */
    private final Bitmap.CompressFormat f13196a;

    /* renamed from: b */
    private final int f13197b;

    public C4268a() {
        this(Bitmap.CompressFormat.JPEG, 100);
    }

    public C4268a(Bitmap.CompressFormat compressFormat, int i) {
        this.f13196a = compressFormat;
        this.f13197b = i;
    }

    @Override // com.bumptech.glide.load.p214j.p219h.AbstractC4272e
    /* renamed from: a */
    public AbstractC4083s<byte[]> mo22989a(AbstractC4083s<Bitmap> abstractC4083s, C4032e c4032e) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        abstractC4083s.get().compress(this.f13196a, this.f13197b, byteArrayOutputStream);
        abstractC4083s.mo22858a();
        return new C4243b(byteArrayOutputStream.toByteArray());
    }
}
