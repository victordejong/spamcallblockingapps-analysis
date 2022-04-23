package com.bumptech.glide.load.resource.bitmap;

import android.graphics.Bitmap;
import android.os.ParcelFileDescriptor;
import com.bumptech.glide.load.h;
import com.bumptech.glide.load.j;
import com.bumptech.glide.load.resource.bitmap.r;
import java.io.IOException;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/resource/bitmap/u.class */
public final class u implements j<ParcelFileDescriptor, Bitmap> {

    /* renamed from: a  reason: collision with root package name */
    private final l f7692a;

    public u(l lVar) {
        this.f7692a = lVar;
    }

    @Override // com.bumptech.glide.load.j
    public final /* synthetic */ com.bumptech.glide.load.engine.u<Bitmap> a(ParcelFileDescriptor parcelFileDescriptor, int i, int i2, h hVar) throws IOException {
        l lVar = this.f7692a;
        return lVar.a(new r.b(parcelFileDescriptor, lVar.h, lVar.g), i, i2, hVar, l.f);
    }

    @Override // com.bumptech.glide.load.j
    public final /* bridge */ /* synthetic */ boolean a(ParcelFileDescriptor parcelFileDescriptor, h hVar) throws IOException {
        return l.a();
    }
}
