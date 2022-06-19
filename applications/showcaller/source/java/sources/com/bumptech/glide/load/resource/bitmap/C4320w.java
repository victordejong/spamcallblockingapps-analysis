package com.bumptech.glide.load.resource.bitmap;

import android.graphics.Bitmap;
import com.bumptech.glide.load.AbstractC4146f;
import com.bumptech.glide.load.C4032e;
import com.bumptech.glide.load.engine.AbstractC4083s;
import com.bumptech.glide.load.engine.p209x.AbstractC4091b;
import com.bumptech.glide.load.engine.p209x.AbstractC4096e;
import com.bumptech.glide.load.resource.bitmap.C4304l;
import com.bumptech.glide.p223p.C4373d;
import com.bumptech.glide.p223p.C4380h;
import java.io.IOException;
import java.io.InputStream;
/* renamed from: com.bumptech.glide.load.resource.bitmap.w */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/resource/bitmap/w.class */
public class C4320w implements AbstractC4146f<InputStream, Bitmap> {

    /* renamed from: a */
    private final C4304l f13296a;

    /* renamed from: b */
    private final AbstractC4091b f13297b;

    /* renamed from: com.bumptech.glide.load.resource.bitmap.w$a */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/resource/bitmap/w$a.class */
    public static class C4321a implements C4304l.AbstractC4306b {

        /* renamed from: a */
        private final RecyclableBufferedInputStream f13298a;

        /* renamed from: b */
        private final C4373d f13299b;

        C4321a(RecyclableBufferedInputStream recyclableBufferedInputStream, C4373d c4373d) {
            this.f13298a = recyclableBufferedInputStream;
            this.f13299b = c4373d;
        }

        @Override // com.bumptech.glide.load.resource.bitmap.C4304l.AbstractC4306b
        /* renamed from: a */
        public void mo22879a(AbstractC4096e abstractC4096e, Bitmap bitmap) {
            IOException m22742a = this.f13299b.m22742a();
            if (m22742a != null) {
                if (bitmap != null) {
                    abstractC4096e.mo22911c(bitmap);
                }
                throw m22742a;
            }
        }

        @Override // com.bumptech.glide.load.resource.bitmap.C4304l.AbstractC4306b
        /* renamed from: b */
        public void mo22878b() {
            this.f13298a.m22968e();
        }
    }

    public C4320w(C4304l c4304l, AbstractC4091b abstractC4091b) {
        this.f13296a = c4304l;
        this.f13297b = abstractC4091b;
    }

    /* renamed from: c */
    public AbstractC4083s<Bitmap> mo22861b(InputStream inputStream, int i, int i2, C4032e c4032e) {
        boolean z;
        RecyclableBufferedInputStream recyclableBufferedInputStream;
        if (inputStream instanceof RecyclableBufferedInputStream) {
            recyclableBufferedInputStream = (RecyclableBufferedInputStream) inputStream;
            z = false;
        } else {
            recyclableBufferedInputStream = new RecyclableBufferedInputStream(inputStream, this.f13297b);
            z = true;
        }
        C4373d m22741e = C4373d.m22741e(recyclableBufferedInputStream);
        try {
            return this.f13296a.m22933g(new C4380h(m22741e), i, i2, c4032e, new C4321a(recyclableBufferedInputStream, m22741e));
        } finally {
            m22741e.m22740f();
            if (z) {
                recyclableBufferedInputStream.m22967f();
            }
        }
    }

    /* renamed from: d */
    public boolean mo22862a(InputStream inputStream, C4032e c4032e) {
        return this.f13296a.m22924p(inputStream);
    }
}
