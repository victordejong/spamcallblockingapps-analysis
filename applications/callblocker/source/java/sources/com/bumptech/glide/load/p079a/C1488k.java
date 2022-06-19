package com.bumptech.glide.load.p079a;

import com.bumptech.glide.load.engine.p090a.AbstractC1673b;
import com.bumptech.glide.load.p079a.AbstractC1477e;
import com.bumptech.glide.load.p083c.p084a.C1612s;
import java.io.InputStream;
/* renamed from: com.bumptech.glide.load.a.k */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/a/k.class */
public final class C1488k implements AbstractC1477e<InputStream> {

    /* renamed from: a */
    private final C1612s f4833a;

    /* renamed from: com.bumptech.glide.load.a.k$a */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/a/k$a.class */
    public static final class C1489a implements AbstractC1477e.AbstractC1478a<InputStream> {

        /* renamed from: a */
        private final AbstractC1673b f4834a;

        public C1489a(AbstractC1673b abstractC1673b) {
            this.f4834a = abstractC1673b;
        }

        /* renamed from: a */
        public AbstractC1477e<InputStream> mo16694a(InputStream inputStream) {
            return new C1488k(inputStream, this.f4834a);
        }

        @Override // com.bumptech.glide.load.p079a.AbstractC1477e.AbstractC1478a
        /* renamed from: a */
        public Class<InputStream> mo16695a() {
            return InputStream.class;
        }
    }

    C1488k(InputStream inputStream, AbstractC1673b abstractC1673b) {
        this.f4833a = new C1612s(inputStream, abstractC1673b);
        this.f4833a.mark(5242880);
    }

    @Override // com.bumptech.glide.load.p079a.AbstractC1477e
    /* renamed from: b */
    public void mo16697b() {
        this.f4833a.m16736b();
    }

    /* renamed from: c */
    public InputStream mo16698a() {
        this.f4833a.reset();
        return this.f4833a;
    }
}
