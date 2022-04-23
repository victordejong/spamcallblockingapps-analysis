package com.bumptech.glide.load.resource.d;

import android.graphics.Bitmap;
import com.bumptech.glide.load.b.k;
import com.bumptech.glide.load.c.g;
import com.bumptech.glide.load.e;
import com.bumptech.glide.load.resource.bitmap.ImageHeaderParser;
import com.bumptech.glide.load.resource.bitmap.n;
import java.io.InputStream;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/resource/d/c.class */
public final class c implements e<g, com.bumptech.glide.load.resource.d.a> {

    /* renamed from: a  reason: collision with root package name */
    private static final b f3655a = new b();

    /* renamed from: b  reason: collision with root package name */
    private static final a f3656b = new a();
    private final e<g, Bitmap> c;
    private final e<InputStream, com.bumptech.glide.load.resource.c.b> d;
    private final com.bumptech.glide.load.b.a.c e;
    private final b f;
    private final a g;
    private String h;

    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/resource/d/c$a.class */
    static final class a {
        a() {
        }
    }

    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/resource/d/c$b.class */
    static final class b {
        b() {
        }
    }

    public c(e<g, Bitmap> eVar, e<InputStream, com.bumptech.glide.load.resource.c.b> eVar2, com.bumptech.glide.load.b.a.c cVar) {
        this(eVar, eVar2, cVar, f3655a, f3656b);
    }

    private c(e<g, Bitmap> eVar, e<InputStream, com.bumptech.glide.load.resource.c.b> eVar2, com.bumptech.glide.load.b.a.c cVar, b bVar, a aVar) {
        this.c = eVar;
        this.d = eVar2;
        this.e = cVar;
        this.f = bVar;
        this.g = aVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public k<com.bumptech.glide.load.resource.d.a> a(g gVar, int i, int i2) {
        com.bumptech.glide.load.resource.d.a b2;
        com.bumptech.glide.load.resource.d.a aVar;
        k<com.bumptech.glide.load.resource.c.b> a2;
        com.bumptech.glide.load.resource.d.b bVar = null;
        com.bumptech.glide.i.a a3 = com.bumptech.glide.i.a.a();
        byte[] b3 = a3.b();
        try {
            if (gVar.f3571a != null) {
                n nVar = new n(gVar.f3571a, b3);
                nVar.mark(2048);
                ImageHeaderParser.ImageType a4 = new ImageHeaderParser(nVar).a();
                nVar.reset();
                if (a4 != ImageHeaderParser.ImageType.GIF || (a2 = this.d.a(nVar, i, i2)) == null) {
                    aVar = null;
                } else {
                    com.bumptech.glide.load.resource.c.b a5 = a2.a();
                    aVar = a5.f3630b.e.c > 1 ? new com.bumptech.glide.load.resource.d.a(null, a2) : new com.bumptech.glide.load.resource.d.a(new com.bumptech.glide.load.resource.bitmap.c(a5.f3629a.i, this.e), null);
                }
                b2 = aVar;
                if (aVar == null) {
                    b2 = b(new g(nVar, gVar.f3572b), i, i2);
                }
            } else {
                b2 = b(gVar, i, i2);
            }
            if (b2 != null) {
                bVar = new com.bumptech.glide.load.resource.d.b(b2);
            }
            return bVar;
        } finally {
            a3.a(b3);
        }
    }

    private com.bumptech.glide.load.resource.d.a b(g gVar, int i, int i2) {
        k<Bitmap> a2 = this.c.a(gVar, i, i2);
        return a2 != null ? new com.bumptech.glide.load.resource.d.a(a2, null) : null;
    }

    @Override // com.bumptech.glide.load.e
    public final String a() {
        if (this.h == null) {
            this.h = this.d.a() + this.c.a();
        }
        return this.h;
    }
}
