package com.bumptech.glide.load.resource.bitmap;

import android.graphics.Bitmap;
import com.bumptech.glide.g.d;
import com.bumptech.glide.load.engine.a.b;
import com.bumptech.glide.load.engine.a.e;
import com.bumptech.glide.load.engine.u;
import com.bumptech.glide.load.h;
import com.bumptech.glide.load.j;
import com.bumptech.glide.load.resource.bitmap.l;
import java.io.IOException;
import java.io.InputStream;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/resource/bitmap/x.class */
public final class x implements j<InputStream, Bitmap> {

    /* renamed from: a  reason: collision with root package name */
    private final l f7699a;

    /* renamed from: b  reason: collision with root package name */
    private final b f7700b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/resource/bitmap/x$a.class */
    public static final class a implements l.a {

        /* renamed from: a  reason: collision with root package name */
        private final v f7701a;

        /* renamed from: b  reason: collision with root package name */
        private final d f7702b;

        a(v vVar, d dVar) {
            this.f7701a = vVar;
            this.f7702b = dVar;
        }

        @Override // com.bumptech.glide.load.resource.bitmap.l.a
        public final void a() {
            this.f7701a.a();
        }

        @Override // com.bumptech.glide.load.resource.bitmap.l.a
        public final void a(e eVar, Bitmap bitmap) throws IOException {
            IOException iOException = this.f7702b.f7347a;
            if (iOException != null) {
                if (bitmap != null) {
                    eVar.a(bitmap);
                }
                throw iOException;
            }
        }
    }

    public x(l lVar, b bVar) {
        this.f7699a = lVar;
        this.f7700b = bVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public u<Bitmap> a(InputStream inputStream, int i, int i2, h hVar) throws IOException {
        boolean z;
        v vVar;
        if (inputStream instanceof v) {
            vVar = (v) inputStream;
            z = false;
        } else {
            vVar = new v(inputStream, this.f7700b);
            z = true;
        }
        d a2 = d.a(vVar);
        try {
            return this.f7699a.a(new com.bumptech.glide.g.h(a2), i, i2, hVar, new a(vVar, a2));
        } finally {
            a2.a();
            if (z) {
                vVar.b();
            }
        }
    }

    @Override // com.bumptech.glide.load.j
    public final /* bridge */ /* synthetic */ boolean a(InputStream inputStream, h hVar) throws IOException {
        return true;
    }
}
