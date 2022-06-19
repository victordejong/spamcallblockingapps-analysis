package com.bumptech.glide.load.resource.bitmap;

import android.graphics.Bitmap;
import com.bumptech.glide.load.AbstractC3824j;
import com.bumptech.glide.load.C3822h;
import com.bumptech.glide.load.engine.AbstractC3811u;
import com.bumptech.glide.load.engine.p119a.AbstractC3707b;
import com.bumptech.glide.load.engine.p119a.AbstractC3712e;
import com.bumptech.glide.load.resource.bitmap.C3878l;
import com.bumptech.glide.p116g.C3634d;
import com.bumptech.glide.p116g.C3641h;
import java.io.IOException;
import java.io.InputStream;
/* renamed from: com.bumptech.glide.load.resource.bitmap.x */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/resource/bitmap/x.class */
public final class C3896x implements AbstractC3824j<InputStream, Bitmap> {

    /* renamed from: a */
    private final C3878l f14286a;

    /* renamed from: b */
    private final AbstractC3707b f14287b;

    /* renamed from: com.bumptech.glide.load.resource.bitmap.x$a */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/resource/bitmap/x$a.class */
    public static final class C3897a implements C3878l.AbstractC3880a {

        /* renamed from: a */
        private final C3893v f14288a;

        /* renamed from: b */
        private final C3634d f14289b;

        C3897a(C3893v c3893v, C3634d c3634d) {
            this.f14288a = c3893v;
            this.f14289b = c3634d;
        }

        @Override // com.bumptech.glide.load.resource.bitmap.C3878l.AbstractC3880a
        /* renamed from: a */
        public final void mo37247a() {
            this.f14288a.m37252a();
        }

        @Override // com.bumptech.glide.load.resource.bitmap.C3878l.AbstractC3880a
        /* renamed from: a */
        public final void mo37246a(AbstractC3712e abstractC3712e, Bitmap bitmap) throws IOException {
            IOException iOException = this.f14289b.f13744a;
            if (iOException != null) {
                if (bitmap != null) {
                    abstractC3712e.mo37266a(bitmap);
                }
                throw iOException;
            }
        }
    }

    public C3896x(C3878l c3878l, AbstractC3707b abstractC3707b) {
        this.f14286a = c3878l;
        this.f14287b = abstractC3707b;
    }

    /* renamed from: a */
    public AbstractC3811u<Bitmap> mo37196a(InputStream inputStream, int i, int i2, C3822h c3822h) throws IOException {
        boolean z;
        C3893v c3893v;
        if (inputStream instanceof C3893v) {
            c3893v = (C3893v) inputStream;
            z = false;
        } else {
            c3893v = new C3893v(inputStream, this.f14287b);
            z = true;
        }
        C3634d m37596a = C3634d.m37596a(c3893v);
        try {
            return this.f14286a.m37273a(new C3641h(m37596a), i, i2, c3822h, new C3897a(c3893v, m37596a));
        } finally {
            m37596a.m37597a();
            if (z) {
                c3893v.m37250b();
            }
        }
    }

    @Override // com.bumptech.glide.load.AbstractC3824j
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ boolean mo37195a(InputStream inputStream, C3822h c3822h) throws IOException {
        return true;
    }
}
