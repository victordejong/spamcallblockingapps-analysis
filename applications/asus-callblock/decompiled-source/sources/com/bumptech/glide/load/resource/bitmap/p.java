package com.bumptech.glide.load.resource.bitmap;

import android.graphics.Bitmap;
import com.bumptech.glide.load.a;
import com.bumptech.glide.load.b.a.c;
import com.bumptech.glide.load.b.k;
import com.bumptech.glide.load.e;
import java.io.InputStream;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/resource/bitmap/p.class */
public final class p implements e<InputStream, Bitmap> {

    /* renamed from: a  reason: collision with root package name */
    private final f f3623a;

    /* renamed from: b  reason: collision with root package name */
    private c f3624b;
    private a c;
    private String d;

    public p(c cVar, a aVar) {
        this(f.f3604a, cVar, aVar);
    }

    private p(f fVar, c cVar, a aVar) {
        this.f3623a = fVar;
        this.f3624b = cVar;
        this.c = aVar;
    }

    @Override // com.bumptech.glide.load.e
    public final /* bridge */ /* synthetic */ k<Bitmap> a(InputStream inputStream, int i, int i2) {
        return c.a(this.f3623a.a(inputStream, this.f3624b, i, i2, this.c), this.f3624b);
    }

    @Override // com.bumptech.glide.load.e
    public final String a() {
        if (this.d == null) {
            this.d = "StreamBitmapDecoder.com.bumptech.glide.load.resource.bitmap" + this.f3623a.a() + this.c.name();
        }
        return this.d;
    }
}
