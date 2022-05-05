package com.bumptech.glide.load.resource.d;

import android.graphics.Bitmap;
import com.bumptech.glide.load.b.k;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/resource/d/b.class */
public final class b implements k<a> {

    /* renamed from: a  reason: collision with root package name */
    private final a f3654a;

    public b(a aVar) {
        if (aVar == null) {
            throw new NullPointerException("Data must not be null");
        }
        this.f3654a = aVar;
    }

    @Override // com.bumptech.glide.load.b.k
    public final /* bridge */ /* synthetic */ a a() {
        return this.f3654a;
    }

    @Override // com.bumptech.glide.load.b.k
    public final int b() {
        a aVar = this.f3654a;
        return aVar.f3653b != null ? aVar.f3653b.b() : aVar.f3652a.b();
    }

    @Override // com.bumptech.glide.load.b.k
    public final void c() {
        k<Bitmap> kVar = this.f3654a.f3653b;
        if (kVar != null) {
            kVar.c();
        }
        k<com.bumptech.glide.load.resource.c.b> kVar2 = this.f3654a.f3652a;
        if (kVar2 != null) {
            kVar2.c();
        }
    }
}
