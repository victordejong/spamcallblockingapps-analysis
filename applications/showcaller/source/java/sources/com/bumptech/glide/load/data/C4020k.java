package com.bumptech.glide.load.data;

import com.bumptech.glide.load.data.AbstractC4009e;
import com.bumptech.glide.load.engine.p209x.AbstractC4091b;
import com.bumptech.glide.load.resource.bitmap.RecyclableBufferedInputStream;
import java.io.InputStream;
/* renamed from: com.bumptech.glide.load.data.k */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/data/k.class */
public final class C4020k implements AbstractC4009e<InputStream> {

    /* renamed from: a */
    private final RecyclableBufferedInputStream f12663a;

    /* renamed from: com.bumptech.glide.load.data.k$a */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/data/k$a.class */
    public static final class C4021a implements AbstractC4009e.AbstractC4010a<InputStream> {

        /* renamed from: a */
        private final AbstractC4091b f12664a;

        public C4021a(AbstractC4091b abstractC4091b) {
            this.f12664a = abstractC4091b;
        }

        @Override // com.bumptech.glide.load.data.AbstractC4009e.AbstractC4010a
        /* renamed from: a */
        public Class<InputStream> mo23071a() {
            return InputStream.class;
        }

        /* renamed from: c */
        public AbstractC4009e<InputStream> mo23070b(InputStream inputStream) {
            return new C4020k(inputStream, this.f12664a);
        }
    }

    public C4020k(InputStream inputStream, AbstractC4091b abstractC4091b) {
        RecyclableBufferedInputStream recyclableBufferedInputStream = new RecyclableBufferedInputStream(inputStream, abstractC4091b);
        this.f12663a = recyclableBufferedInputStream;
        recyclableBufferedInputStream.mark(5242880);
    }

    @Override // com.bumptech.glide.load.data.AbstractC4009e
    /* renamed from: b */
    public void mo23073b() {
        this.f12663a.m22967f();
    }

    /* renamed from: c */
    public void m23487c() {
        this.f12663a.m22968e();
    }

    /* renamed from: d */
    public InputStream mo23074a() {
        this.f12663a.reset();
        return this.f12663a;
    }
}
