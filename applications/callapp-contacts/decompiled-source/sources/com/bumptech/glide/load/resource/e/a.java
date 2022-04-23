package com.bumptech.glide.load.resource.e;

import android.graphics.Bitmap;
import com.bumptech.glide.load.engine.u;
import com.bumptech.glide.load.h;
import com.bumptech.glide.load.resource.a.b;
import java.io.ByteArrayOutputStream;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/resource/e/a.class */
public final class a implements e<Bitmap, byte[]> {

    /* renamed from: a  reason: collision with root package name */
    private final Bitmap.CompressFormat f7737a;

    /* renamed from: b  reason: collision with root package name */
    private final int f7738b;

    public a() {
        this(Bitmap.CompressFormat.JPEG, 100);
    }

    public a(Bitmap.CompressFormat compressFormat, int i) {
        this.f7737a = compressFormat;
        this.f7738b = i;
    }

    @Override // com.bumptech.glide.load.resource.e.e
    public final u<byte[]> a(u<Bitmap> uVar, h hVar) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        uVar.b().compress(this.f7737a, this.f7738b, byteArrayOutputStream);
        uVar.d();
        return new b(byteArrayOutputStream.toByteArray());
    }
}
