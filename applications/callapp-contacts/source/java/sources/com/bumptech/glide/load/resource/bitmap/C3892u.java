package com.bumptech.glide.load.resource.bitmap;

import android.graphics.Bitmap;
import android.os.ParcelFileDescriptor;
import com.bumptech.glide.load.AbstractC3824j;
import com.bumptech.glide.load.C3822h;
import com.bumptech.glide.load.engine.AbstractC3811u;
import com.bumptech.glide.load.resource.bitmap.AbstractC3887r;
import java.io.IOException;
/* renamed from: com.bumptech.glide.load.resource.bitmap.u */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/resource/bitmap/u.class */
public final class C3892u implements AbstractC3824j<ParcelFileDescriptor, Bitmap> {

    /* renamed from: a */
    private final C3878l f14277a;

    public C3892u(C3878l c3878l) {
        this.f14277a = c3878l;
    }

    @Override // com.bumptech.glide.load.AbstractC3824j
    /* renamed from: a */
    public final /* synthetic */ AbstractC3811u<Bitmap> mo37196a(ParcelFileDescriptor parcelFileDescriptor, int i, int i2, C3822h c3822h) throws IOException {
        C3878l c3878l = this.f14277a;
        return c3878l.m37275a(new AbstractC3887r.C3889b(parcelFileDescriptor, c3878l.f14249h, c3878l.f14248g), i, i2, c3822h, C3878l.f14244f);
    }

    @Override // com.bumptech.glide.load.AbstractC3824j
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ boolean mo37195a(ParcelFileDescriptor parcelFileDescriptor, C3822h c3822h) throws IOException {
        return C3878l.m37280a();
    }
}
