package com.bumptech.glide.load.resource.p126e;

import android.graphics.Bitmap;
import com.bumptech.glide.load.C3822h;
import com.bumptech.glide.load.engine.AbstractC3811u;
import com.bumptech.glide.load.resource.p122a.C3839b;
import java.io.ByteArrayOutputStream;
/* renamed from: com.bumptech.glide.load.resource.e.a */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/resource/e/a.class */
public final class C3921a implements AbstractC3925e<Bitmap, byte[]> {

    /* renamed from: a */
    private final Bitmap.CompressFormat f14349a;

    /* renamed from: b */
    private final int f14350b;

    public C3921a() {
        this(Bitmap.CompressFormat.JPEG, 100);
    }

    public C3921a(Bitmap.CompressFormat compressFormat, int i) {
        this.f14349a = compressFormat;
        this.f14350b = i;
    }

    @Override // com.bumptech.glide.load.resource.p126e.AbstractC3925e
    /* renamed from: a */
    public final AbstractC3811u<byte[]> mo37189a(AbstractC3811u<Bitmap> abstractC3811u, C3822h c3822h) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        abstractC3811u.mo37235b().compress(this.f14349a, this.f14350b, byteArrayOutputStream);
        abstractC3811u.mo37211d();
        return new C3839b(byteArrayOutputStream.toByteArray());
    }
}
