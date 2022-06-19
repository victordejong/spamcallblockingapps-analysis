package com.bumptech.glide.load.resource.p125d;

import android.graphics.Bitmap;
import com.bumptech.glide.load.AbstractC3824j;
import com.bumptech.glide.load.C3822h;
import com.bumptech.glide.load.engine.AbstractC3811u;
import com.bumptech.glide.load.engine.p119a.AbstractC3712e;
import com.bumptech.glide.load.resource.bitmap.C3864e;
import com.bumptech.glide.p109b.AbstractC3542a;
import java.io.IOException;
/* renamed from: com.bumptech.glide.load.resource.d.h */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/resource/d/h.class */
public final class C3918h implements AbstractC3824j<AbstractC3542a, Bitmap> {

    /* renamed from: a */
    private final AbstractC3712e f14343a;

    public C3918h(AbstractC3712e abstractC3712e) {
        this.f14343a = abstractC3712e;
    }

    @Override // com.bumptech.glide.load.AbstractC3824j
    /* renamed from: a */
    public final /* synthetic */ AbstractC3811u<Bitmap> mo37196a(AbstractC3542a abstractC3542a, int i, int i2, C3822h c3822h) throws IOException {
        return C3864e.m37283a(abstractC3542a.mo37727i(), this.f14343a);
    }

    @Override // com.bumptech.glide.load.AbstractC3824j
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ boolean mo37195a(AbstractC3542a abstractC3542a, C3822h c3822h) throws IOException {
        return true;
    }
}
