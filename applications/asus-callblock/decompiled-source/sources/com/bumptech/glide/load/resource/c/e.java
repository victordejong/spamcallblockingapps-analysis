package com.bumptech.glide.load.resource.c;

import android.graphics.Bitmap;
import com.bumptech.glide.load.b.a.c;
import com.bumptech.glide.load.b.k;
import com.bumptech.glide.load.g;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/resource/c/e.class */
public final class e implements g<b> {

    /* renamed from: a  reason: collision with root package name */
    private final g<Bitmap> f3635a;

    /* renamed from: b  reason: collision with root package name */
    private final c f3636b;

    public e(g<Bitmap> gVar, c cVar) {
        this.f3635a = gVar;
        this.f3636b = cVar;
    }

    @Override // com.bumptech.glide.load.g
    public final k<b> a(k<b> kVar, int i, int i2) {
        b a2 = kVar.a();
        k<Bitmap> cVar = new com.bumptech.glide.load.resource.bitmap.c(kVar.a().f3629a.i, this.f3636b);
        k<Bitmap> a3 = this.f3635a.a(cVar, i, i2);
        if (!cVar.equals(a3)) {
            cVar.c();
        }
        Bitmap a4 = a3.a();
        g<Bitmap> gVar = this.f3635a;
        if (a4 == null) {
            throw new NullPointerException("The first frame of the GIF must not be null");
        } else if (gVar == null) {
            throw new NullPointerException("The frame transformation must not be null");
        } else {
            a2.f3629a.d = gVar;
            a2.f3629a.i = a4;
            f fVar = a2.c;
            if (gVar == null) {
                throw new NullPointerException("Transformation must not be null");
            }
            fVar.e = fVar.e.a(gVar);
            return kVar;
        }
    }

    @Override // com.bumptech.glide.load.g
    public final String a() {
        return this.f3635a.a();
    }
}
