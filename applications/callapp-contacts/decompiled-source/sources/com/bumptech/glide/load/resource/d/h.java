package com.bumptech.glide.load.resource.d;

import android.graphics.Bitmap;
import com.bumptech.glide.b.a;
import com.bumptech.glide.load.engine.a.e;
import com.bumptech.glide.load.engine.u;
import com.bumptech.glide.load.j;
import java.io.IOException;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/resource/d/h.class */
public final class h implements j<a, Bitmap> {

    /* renamed from: a  reason: collision with root package name */
    private final e f7731a;

    public h(e eVar) {
        this.f7731a = eVar;
    }

    @Override // com.bumptech.glide.load.j
    public final /* synthetic */ u<Bitmap> a(a aVar, int i, int i2, com.bumptech.glide.load.h hVar) throws IOException {
        return com.bumptech.glide.load.resource.bitmap.e.a(aVar.i(), this.f7731a);
    }

    @Override // com.bumptech.glide.load.j
    public final /* bridge */ /* synthetic */ boolean a(a aVar, com.bumptech.glide.load.h hVar) throws IOException {
        return true;
    }
}
