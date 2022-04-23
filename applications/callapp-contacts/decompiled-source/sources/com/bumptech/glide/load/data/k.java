package com.bumptech.glide.load.data;

import com.bumptech.glide.load.data.e;
import com.bumptech.glide.load.engine.a.b;
import com.bumptech.glide.load.resource.bitmap.v;
import java.io.IOException;
import java.io.InputStream;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/data/k.class */
public final class k implements e<InputStream> {

    /* renamed from: a  reason: collision with root package name */
    public final v f7412a;

    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/data/k$a.class */
    public static final class a implements e.a<InputStream> {

        /* renamed from: a  reason: collision with root package name */
        private final b f7413a;

        public a(b bVar) {
            this.f7413a = bVar;
        }

        @Override // com.bumptech.glide.load.data.e.a
        public final /* synthetic */ e<InputStream> a(InputStream inputStream) {
            return new k(inputStream, this.f7413a);
        }

        @Override // com.bumptech.glide.load.data.e.a
        public final Class<InputStream> a() {
            return InputStream.class;
        }
    }

    public k(InputStream inputStream, b bVar) {
        v vVar = new v(inputStream, bVar);
        this.f7412a = vVar;
        vVar.mark(5242880);
    }

    @Override // com.bumptech.glide.load.data.e
    public final void b() {
        this.f7412a.b();
    }

    /* renamed from: c */
    public final InputStream a() throws IOException {
        this.f7412a.reset();
        return this.f7412a;
    }
}
