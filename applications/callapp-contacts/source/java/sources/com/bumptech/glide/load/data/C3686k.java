package com.bumptech.glide.load.data;

import com.bumptech.glide.load.data.AbstractC3675e;
import com.bumptech.glide.load.engine.p119a.AbstractC3707b;
import com.bumptech.glide.load.resource.bitmap.C3893v;
import java.io.IOException;
import java.io.InputStream;
/* renamed from: com.bumptech.glide.load.data.k */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/data/k.class */
public final class C3686k implements AbstractC3675e<InputStream> {

    /* renamed from: a */
    public final C3893v f13838a;

    /* renamed from: com.bumptech.glide.load.data.k$a */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/data/k$a.class */
    public static final class C3687a implements AbstractC3675e.AbstractC3676a<InputStream> {

        /* renamed from: a */
        private final AbstractC3707b f13839a;

        public C3687a(AbstractC3707b abstractC3707b) {
            this.f13839a = abstractC3707b;
        }

        @Override // com.bumptech.glide.load.data.AbstractC3675e.AbstractC3676a
        /* renamed from: a */
        public final /* synthetic */ AbstractC3675e<InputStream> mo37315a(InputStream inputStream) {
            return new C3686k(inputStream, this.f13839a);
        }

        @Override // com.bumptech.glide.load.data.AbstractC3675e.AbstractC3676a
        /* renamed from: a */
        public final Class<InputStream> mo37316a() {
            return InputStream.class;
        }
    }

    public C3686k(InputStream inputStream, AbstractC3707b abstractC3707b) {
        C3893v c3893v = new C3893v(inputStream, abstractC3707b);
        this.f13838a = c3893v;
        c3893v.mark(5242880);
    }

    @Override // com.bumptech.glide.load.data.AbstractC3675e
    /* renamed from: b */
    public final void mo37317b() {
        this.f13838a.m37250b();
    }

    /* renamed from: c */
    public final InputStream mo37318a() throws IOException {
        this.f13838a.reset();
        return this.f13838a;
    }
}
