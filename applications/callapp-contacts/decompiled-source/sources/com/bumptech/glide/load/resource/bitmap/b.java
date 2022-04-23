package com.bumptech.glide.load.resource.bitmap;

import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import com.bumptech.glide.load.c;
import com.bumptech.glide.load.engine.a.e;
import com.bumptech.glide.load.engine.u;
import com.bumptech.glide.load.h;
import com.bumptech.glide.load.k;
import java.io.File;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/resource/bitmap/b.class */
public final class b implements k<BitmapDrawable> {

    /* renamed from: a  reason: collision with root package name */
    private final e f7652a;

    /* renamed from: b  reason: collision with root package name */
    private final k<Bitmap> f7653b;

    public b(e eVar, k<Bitmap> kVar) {
        this.f7652a = eVar;
        this.f7653b = kVar;
    }

    @Override // com.bumptech.glide.load.k
    public final c a(h hVar) {
        return this.f7653b.a(hVar);
    }

    @Override // com.bumptech.glide.load.d
    public final /* synthetic */ boolean encode(Object obj, File file, h hVar) {
        return this.f7653b.encode(new e(((BitmapDrawable) ((u) obj).b()).getBitmap(), this.f7652a), file, hVar);
    }
}
