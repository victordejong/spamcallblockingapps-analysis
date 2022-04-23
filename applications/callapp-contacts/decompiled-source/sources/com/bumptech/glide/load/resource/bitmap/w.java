package com.bumptech.glide.load.resource.bitmap;

import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import com.bumptech.glide.load.engine.u;
import com.bumptech.glide.load.h;
import com.bumptech.glide.load.j;
import com.bumptech.glide.load.resource.b.e;
import java.io.IOException;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/resource/bitmap/w.class */
public final class w implements j<Uri, Bitmap> {

    /* renamed from: a  reason: collision with root package name */
    private final e f7697a;

    /* renamed from: b  reason: collision with root package name */
    private final com.bumptech.glide.load.engine.a.e f7698b;

    public w(e eVar, com.bumptech.glide.load.engine.a.e eVar2) {
        this.f7697a = eVar;
        this.f7698b = eVar2;
    }

    @Override // com.bumptech.glide.load.j
    public final /* synthetic */ u<Bitmap> a(Uri uri, int i, int i2, h hVar) throws IOException {
        u<Drawable> a2 = this.f7697a.a(uri);
        if (a2 == null) {
            return null;
        }
        return m.a(this.f7698b, a2.b(), i, i2);
    }

    @Override // com.bumptech.glide.load.j
    public final /* synthetic */ boolean a(Uri uri, h hVar) throws IOException {
        return "android.resource".equals(uri.getScheme());
    }
}
