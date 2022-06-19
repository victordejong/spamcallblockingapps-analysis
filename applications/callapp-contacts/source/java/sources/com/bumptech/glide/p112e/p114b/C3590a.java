package com.bumptech.glide.p112e.p114b;

import android.graphics.drawable.Drawable;
import com.bumptech.glide.load.EnumC3658a;
import com.explorestack.iab.vast.VastError;
/* renamed from: com.bumptech.glide.e.b.a */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/e/b/a.class */
public final class C3590a implements AbstractC3597e<Drawable> {

    /* renamed from: a */
    private final int f13655a;

    /* renamed from: b */
    private final boolean f13656b;

    /* renamed from: c */
    private C3592b f13657c;

    /* renamed from: com.bumptech.glide.e.b.a$a */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/e/b/a$a.class */
    public static final class C3591a {

        /* renamed from: a */
        public boolean f13658a;

        /* renamed from: b */
        private final int f13659b;

        public C3591a() {
            this(VastError.ERROR_CODE_GENERAL_WRAPPER);
        }

        public C3591a(int i) {
            this.f13659b = i;
        }

        /* renamed from: a */
        public final C3590a m37667a() {
            return new C3590a(this.f13659b, this.f13658a);
        }
    }

    protected C3590a(int i, boolean z) {
        this.f13655a = i;
        this.f13656b = z;
    }

    @Override // com.bumptech.glide.p112e.p114b.AbstractC3597e
    /* renamed from: a */
    public final AbstractC3595d<Drawable> mo37661a(EnumC3658a enumC3658a) {
        if (enumC3658a == EnumC3658a.MEMORY_CACHE) {
            return C3593c.m37665b();
        }
        if (this.f13657c == null) {
            this.f13657c = new C3592b(this.f13655a, this.f13656b);
        }
        return this.f13657c;
    }
}
